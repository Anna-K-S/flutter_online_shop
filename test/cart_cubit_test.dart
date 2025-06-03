import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_online_shop/cubit/cart_cubit/cart_cubit.dart';
import 'package:flutter_online_shop/cubit/cart_cubit/cart_state.dart';
import 'package:flutter_online_shop/models/cart.dart';
import 'package:flutter_online_shop/models/cart_item.dart';
import 'package:flutter_online_shop/models/product.dart';
import 'package:flutter_online_shop/service/cart_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockCartRepository extends Mock implements ICartRepository {}

void main() {
  group('CartCubit', () {
    late CartCubit cubit;
    late MockCartRepository mockCartRepository;
    const userId = 1;
    const product = Product(
      id: 1,
      title: 'Product 1',
      price: 10.0,
      image: 'image.jpg',
      category: 'category',
      description: 'description',
    );
    final cart = Cart(
      userId: userId,
      date: DateTime.now(),
      items: [],
    );

    setUpAll(() {
      registerFallbackValue(cart);
      registerFallbackValue(product);
    });

    setUp(() {
      mockCartRepository = MockCartRepository();
      cubit = CartCubit(mockCartRepository);
    });

    tearDown(() {
      cubit.close();
    });

    test('initial state is CartIdle', () {
      expect(
        cubit.state,
        isA<CartIdle>(),
      );
    });

    blocTest<CartCubit, CartState>(
      'emits CartLoading and CartSuccess when add is successful',
      build: () {
        when(() => mockCartRepository.update(any())).thenAnswer(
          (_) async => cart.copyWith(
            items: [
              const CartItem(product: product, quantity: 1),
            ],
          ),
        );
        return cubit;
      },
      act: (cubit) => cubit.add(product),
      expect: () => [
        isA<CartLoading>(),
        isA<CartSuccess>().having((s) => s.cart.items.length, 'items length', 1)
      ],
      verify: (_) {
        verify(() => mockCartRepository.update(any())).called(1);
      },
    );

    blocTest<CartCubit, CartState>(
      'emits CartLoading and CartError when add fails',
      build: () {
        when(() => mockCartRepository.update(any()))
            .thenThrow(Exception('Failed to add to cart'));
        return cubit;
      },
      act: (cubit) => cubit.add(product),
      expect: () => [
        isA<CartLoading>(),
        isA<CartError>().having(
          (e) => e.error,
          'error',
          contains('Failed to add to cart'),
        ),
      ],
    );

    blocTest<CartCubit, CartState>(
      'emits CartLoading and CartSuccess when remove is successful',
      seed: () => CartSuccess(
        cart: cart.copyWith(
          items: [
            const CartItem(product: product, quantity: 1),
          ],
        ),
      ),
      build: () {
        when(() => mockCartRepository.update(any())).thenAnswer(
          (_) async => cart.copyWith(
            items: [],
          ),
        );
        return cubit;
      },
      act: (cubit) => cubit.remove(product.id),
      expect: () => [
        isA<CartLoading>(),
        isA<CartIdle>().having((s) => s.cart.items.isEmpty, 'items empty', true)
      ],
      verify: (_) {
        verify(() => mockCartRepository.update(any())).called(1);
      },
    );

    blocTest<CartCubit, CartState>(
      'emits CartLoading and CartError when remove fails',
      seed: () => CartSuccess(
        cart: cart.copyWith(
          items: [
            const CartItem(product: product, quantity: 1),
          ],
        ),
      ),
      build: () {
        when(() => mockCartRepository.update(any()))
            .thenThrow(Exception('Failed to remove from cart'));
        return cubit;
      },
      act: (cubit) => cubit.remove(product.id),
      expect: () => [
        isA<CartLoading>(),
        isA<CartError>().having(
            (e) => e.error, 'error', contains('Failed to remove from cart')),
      ],
    );

    blocTest<CartCubit, CartState>(
      'emits CartLoading and CartSuccess when updateQuantity is successful',
      seed: () => CartSuccess(
        cart: cart.copyWith(
          items: [
            const CartItem(product: product, quantity: 1),
          ],
        ),
      ),
      build: () {
        when(() => mockCartRepository.update(any())).thenAnswer(
          (_) async => cart.copyWith(
            items: [
              const CartItem(product: product, quantity: 2),
            ],
          ),
        );
        return cubit;
      },
      act: (cubit) => cubit.updateQuantity(product.id, 2),
      expect: () => [
        isA<CartLoading>(),
        isA<CartSuccess>()
            .having((s) => s.cart.items.first.quantity, 'quantity', 2)
      ],
      verify: (_) {
        verify(() => mockCartRepository.update(any())).called(1);
      },
    );

    blocTest<CartCubit, CartState>(
      'emits CartLoading and CartError when updateQuantity fails',
      seed: () => CartSuccess(
        cart: cart.copyWith(
          items: [
            const CartItem(product: product, quantity: 1),
          ],
        ),
      ),
      build: () {
        when(() => mockCartRepository.update(any()))
            .thenThrow(Exception('Failed to update product quantity'));
        return cubit;
      },
      act: (cubit) => cubit.updateQuantity(product.id, 2),
      expect: () => [
        isA<CartLoading>(),
        isA<CartError>().having((e) => e.error, 'error',
            contains('Failed to update product quantity')),
      ],
    );

    blocTest<CartCubit, CartState>(
      'emits CartLoading and calls remove when updateQuantity is 0',
      seed: () => CartSuccess(
          cart: cart.copyWith(
              items: [const CartItem(product: product, quantity: 1)])),
      build: () {
        when(() => mockCartRepository.update(any())).thenAnswer(
          (_) async => cart.copyWith(items: []),
        );
        return cubit;
      },
      act: (cubit) => cubit.updateQuantity(product.id, 0),
      expect: () => [
        isA<CartLoading>(),
        isA<CartIdle>().having((s) => s.cart.items.isEmpty, 'items empty', true)
      ],
      verify: (_) {
        verify(() => mockCartRepository.update(any())).called(1);
      },
    );
  });
}
