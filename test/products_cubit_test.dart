import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_online_shop/cubit/products_cubit/products_cubit.dart';
import 'package:flutter_online_shop/cubit/products_cubit/products_state.dart';
import 'package:flutter_online_shop/models/product.dart';
import 'package:flutter_online_shop/service/products_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockProductsRepository extends Mock implements IProductsRepository {}

void main() {
  /// группа тестов для кубита
  group('ProductsCubit', () {
    late ProductsCubit cubit;
    late MockProductsRepository mock;

    /// список продуктов, который будет использоваться для тестов

    final products = [
      const Product(
          id: 1,
          title: 'Product 1',
          price: 10,
          category: 'Category',
          description: 'Description',
          image: 'image'),
      const Product(
          id: 2,
          title: 'Product 2',
          price: 20,
          category: 'Category',
          description: 'Description',
          image: 'image'),
    ];

    /// выполняется перед каждым тестом
    setUp(() {
      mock = MockProductsRepository();
      cubit = ProductsCubit(mock);
    });

    /// закрытие кубита после каждого теста
    tearDown(() {
      cubit.close();
    });

    /// тест проверяет начальное состояние кубита
    test('initial state is ProductsState.loading()', () {
      expect(
        cubit.state,
        equals(
          const ProductsState.initial(),
        ),
      );
    });

    blocTest<ProductsCubit, ProductsState>(
      'emits (loading, loaded) when load succeeds',
      seed: () => ProductsLoaded(products),
      build: () {
        when(() => mock.getAll()).thenAnswer((_) async => products);
        return cubit;
      },
      act: (cubit) => cubit.load(),
      expect: () => [
        const ProductsState.initial(),
        ProductsState.idle(products),
      ],
    );

    blocTest<ProductsCubit, ProductsState>(
      'emits [loading, error] when load throws exception',
      seed: () => ProductsLoaded(products),
      build: () {
        when(() => mock.getAll()).thenThrow(1);
        return cubit;
      },
      act: (cubit) => cubit.load(),
      expect: () => [
        const ProductsState.initial(),
        const ProductsState.error(error: 1),
      ],
    );

    blocTest<ProductsCubit, ProductsState>(
      'emits (loading, idle) when reload succeeds',
      seed: () => ProductsLoaded(products),
      build: () {
        when(() => mock.getAll()).thenAnswer((_) async => products);
        return cubit;
      },
      act: (cubit) => cubit.reload(),
      expect: () => [
        ProductsState.loading(products),
        ProductsState.idle(products),
      ],
    );

    blocTest<ProductsCubit, ProductsState>(
      'emits (loading, error) when reload throws exception',
      seed: () => ProductsLoaded(products),
      build: () {
        when(() => mock.getAll()).thenThrow(1);
        return cubit;
      },
      act: (cubit) => cubit.reload(),
      expect: () => [
        ProductsState.loading(products),
        ProductsState.error(
          error: 1,
          products: products,
        ),
      ],
    );
  });
}
