import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_online_shop/cubit/cart_cubit/cart_cubit.dart';
import 'package:flutter_online_shop/cubit/cart_cubit/cart_state.dart';
import 'package:flutter_online_shop/models/cart.dart';
import 'package:flutter_online_shop/models/cart_product.dart';
import 'package:flutter_online_shop/service/cart_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockCartRepository extends Mock implements ICartRepository {}

void main() {
  group('CartCubit', () {
    late CartCubit cubit;
    late MockCartRepository mockCartRepository;
    const userId = 1;
    final cart = Cart(
      id: 1,
      userId: userId,
      date: DateTime.now(),
      products: [],
    );

    const cartProduct = CartProduct(
      productId: 1,
      quantity: 1,
    );

    setUpAll(() {
      registerFallbackValue(1);
      registerFallbackValue(cart);
      registerFallbackValue(cartProduct);
    });

    setUp(() {
      mockCartRepository = MockCartRepository();
      cubit = CartCubit(mockCartRepository);
      when(() => mockCartRepository.create(userId: userId, products: []))
          .thenAnswer((_) async => cart);
    });

    tearDown(() {
      cubit.close();
    });

    test('initial state is CartState.initial()', () {
      expect(
        cubit.state,
        equals(const CartState.initial()),
      );
    });

    blocTest<CartCubit, CartState>(
      'emits (initial, idle) when load succeeds',
      build: () {
        when(() => mockCartRepository.getUser(userId))
            .thenAnswer((_) async => cart);
        return cubit;
      },
      act: (cubit) => cubit.load(userId),
      expect: () => [
        const CartState.initial(),
        CartState.idle(cart),
      ],
    );

    blocTest<CartCubit, CartState>(
      'emits (loading, error) when load throws exception',
      build: () {
        when(() => mockCartRepository.getUser(any())).thenThrow(
          Exception('Failed to load cart'),
        );
        return cubit;
      },
      act: (cubit) => cubit.load(userId),
      expect: () => [
        const CartState.initial(),
        const CartState.error(
          errorMessage: 'Failed to load cart: Exception: Failed to load cart',
        ),
      ],
    );

    blocTest<CartCubit, CartState>(
      'emits (loading, idle) when add succeeds',
      seed: () => CartLoaded(cart),
      build: () {
        when(() => mockCartRepository.getUser(any()))
            .thenAnswer((_) async => cart);
        when(() => mockCartRepository.update(any())).thenAnswer((_) async {});
        return cubit;
      },
      act: (cubit) => cubit.add(userId, cartProduct),
      expect: () => [
        CartState.loading(cart),
        CartState.idle(cart.copyWith(products: [cartProduct])),
      ],
    );

    blocTest<CartCubit, CartState>(
      'emits (loading, error) when add throws exception',
      seed: () => CartLoaded(cart),
      build: () {
        when(() => mockCartRepository.update(any())).thenThrow(
          Exception('Failed to add to cart'),
        );
        return cubit;
      },
      act: (cubit) => cubit.add(userId, cartProduct),
      expect: () => [
        CartState.loading(cart),
        CartState.error(
          errorMessage:
              'Failed to add to cart: Exception: Failed to add to cart',
          cart: cart,
        ),
      ],
    );

    blocTest<CartCubit, CartState>(
      'emits (loading, idle) when remove succeeds',
      seed: () => CartLoaded(cart),
      build: () { 
        when(() => mockCartRepository.update(any())).thenAnswer((_)async {});
        return cubit;
      },
      act: (cubit) => cubit.remove(userId, cartProduct),
      expect: () => [
        CartState.loading(cart),
        CartState.idle(cart.copyWith(products: cart.products.toList()..remove(cartProduct))),
      ],
    );

    blocTest<CartCubit, CartState>(
      'emits (loading, error) when remove throws exception',
      seed: () => CartLoaded(cart),
      build: () {
        when(() => mockCartRepository.update(any())).thenThrow(
          Exception('Failed to remove from cart'),
        );
        return cubit;
      },
      act: (cubit) => cubit.remove(userId, cartProduct),
      expect: () => [
        CartState.loading(cart),
        CartState.error(
          errorMessage:
              'Failed to remove from cart: Exception: Failed to remove from cart',
          cart: cart,
        ),
      ],
    );
  });
}
