import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_online_shop/cubit/products_cubit/products_cubit.dart';
import 'package:flutter_online_shop/cubit/products_cubit/products_state.dart';
import 'package:flutter_online_shop/models/product.dart';
import 'package:flutter_online_shop/service/products_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockProductsRepository extends MockCubit implements IProductsRepository {}

void main() {
  /// группа тестов для кубита
  group('ProductsCubit', () {
    late ProductsCubit cubit;
    late MockProductsRepository mock;

    /// выполняется перед каждым тестом
    setUp(() {
      mock = MockProductsRepository();
      cubit = ProductsCubit(mock);
    });

    /// закрытие кубита после каждого теста
    tearDown(() {
      cubit.close();
    });

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

    /// тест проверяет начальное состояние кубита
    test('initial state is ProductsState.loading()', () {
      expect(
        cubit.state,
        equals(
          const ProductsState.loading(),
        ),
      );
    });

    blocTest<ProductsCubit, ProductsState>(
      'emits (loading, loaded) when load succeeds',
      build: () {
        when(
          mock.getAll(),
        ).thenAnswer((_) async => products);
        return cubit;
      },
      act: (cubit) => cubit.load(),
      expect: () => [
        const ProductsState.loading(),
        ProductsState.idle(products),
      ],
    );

    blocTest<ProductsCubit, ProductsState>(
      'emits (loading, error) when load throws exception',
      build: () {
        when(
          mock.getAll(),
        ).thenThrow(
          Exception('Failed to load products'),
        );
        return cubit;
      },
      act: (cubit) => cubit.load(),
      expect: () => [
        const ProductsState.loading(),
        const ProductsState.error('Failed to load products'),
      ],
    );

    blocTest<ProductsCubit, ProductsState>(
      'emits (loading, loaded) when reload succeeds',
      build: () {
        when(
          mock.getAll(),
        ).thenAnswer((_) async => products);
        return cubit;
      },
      act: (cubit) => cubit.reload(),
      expect: () => [
        const ProductsState.loading(),
        ProductsState.idle(products),
      ],
    );

    blocTest<ProductsCubit, ProductsState>(
      'emits (loading, error) when reload throws exception',
      build: () {
        when(
          mock.getAll(),
        ).thenThrow(
          Exception('Failed to reload products'),
        );
        return cubit;
      },
      act: (cubit) => cubit.reload(),
      expect: () => [
        const ProductsState.loading(),
        const ProductsState.error('Failed to reload products'),
      ],
    );
  });
}
