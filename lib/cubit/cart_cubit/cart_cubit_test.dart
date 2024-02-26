import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_online_shop/cubit/cart_cubit/cart_cubit.dart';
import 'package:flutter_online_shop/cubit/cart_cubit/cart_state.dart';
import 'package:flutter_online_shop/models/cart.dart';
import 'package:flutter_online_shop/models/cart_product.dart';
import 'package:flutter_online_shop/service/cart_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockCartRepository extends MockCubit implements ICartRepository {}

void main() {
  group('CartCubit', () {
    late CartCubit cubit;
    late MockCartRepository mock;

    setUp(() {
      mock = MockCartRepository();
      cubit = CartCubit(mock);
    });

    tearDown(() {
      cubit.close();
    });

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

    test('initial state is CartState.loading()', () {
      expect(
        cubit.state,
        equals(
          const CartState.loading(),
        ),
      );
    });

    blocTest<CartCubit, CartState>(
      'emits (loading, idle) when load succeeds',
      build: () {
        when(
          mock.getUser(userId),
        ).thenAnswer((_) async => cart);
        return cubit;
      },
      act: (cubit) => cubit.load(userId),
      expect: () => [
        const CartState.loading(),
        CartState.idle(cart),
      ],
    );

    blocTest<CartCubit, CartState>(
      'emits (loading, error) when load throws exception',
      build: () {
        when(
          mock.getUser(userId),
        ).thenThrow(
          Exception('Failed to load cart'),
        );
        return cubit;
      },
      act: (cubit) => cubit.load(userId),
      expect: () => [
        const CartState.loading(),
        const CartState.error(
            'Failed to load cart: Exception: Failed to load cart'),
      ],
    );

    blocTest<CartCubit, CartState>(
      'emits (loading, idle) when add succeeds',
      build: () {
        when(
          mock.getUser(userId),
        ).thenAnswer((_) async => cart);
        return cubit;
      },
      act: (cubit) => cubit.add(userId, cartProduct),
      expect: () => [
        const CartState.loading(),
        CartState.idle(cart),
      ],
    );

    blocTest<CartCubit, CartState>(
      'emits (loading, error) when add throws exception',
      build: () {
        when(
          mock.getUser(userId),
        ).thenThrow(
          Exception('Failed to add to cart'),
        );
        return cubit;
      },
      act: (cubit) => cubit.add(userId, cartProduct),
      expect: () => [
        const CartState.loading(),
        const CartState.error(
            'Failed to add to cart: Exception: Failed to add to cart'),
      ],
    );

    blocTest<CartCubit, CartState>(
      'emits (loading, idle) when remove succeeds',
      build: () {
        when(
          mock.getUser(userId),
        ).thenAnswer((_) async => cart);
        return cubit;
      },
      act: (cubit) => cubit.remove(userId, cartProduct),
      expect: () => [
        const CartState.loading(),
        CartState.idle(cart),
      ],
    );

    blocTest<CartCubit, CartState>(
      'emits (loading, error) when remove throws exception',
      build: () {
        when(
          mock.getUser(userId),
        ).thenThrow(
          Exception('Failed to remove from cart'),
        );
        return cubit;
      },
      act: (cubit) => cubit.remove(userId, cartProduct),
      expect: () => [
        const CartState.loading(),
        const CartState.error(
            'Failed to remove from cart: Exception: Failed to remove from cart'),
      ],
    );
  });
}
