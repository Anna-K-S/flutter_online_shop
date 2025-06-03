import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_online_shop/cubit/products_cubit/products_cubit.dart';
import 'package:flutter_online_shop/cubit/products_cubit/products_state.dart';
import 'package:flutter_online_shop/models/product.dart';
import 'package:flutter_online_shop/service/products_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockProductsRepository extends Mock implements IProductsRepository {}

void main() {
  group('ProductsCubit', () {
    late ProductsCubit cubit;
    late MockProductsRepository mockProductsRepository;

    const product = Product(
      id: 1,
      title: 'Product 1',
      price: 10,
      category: 'Category',
      description: 'Description',
      image: 'image',
    );
    final products = [
      const Product(
        id: 1,
        title: 'Product 1',
        price: 10,
        category: 'Category',
        description: 'Description',
        image: 'image',
      ),
      const Product(
        id: 2,
        title: 'Product 2',
        price: 20,
        category: 'Category',
        description: 'Description',
        image: 'image',
      ),
      const Product(
        id: 3,
        title: 'Product 2',
        price: 10,
        category: 'Category',
        description: 'Description',
        image: 'image',
      ),
      const Product(
        id: 4,
        title: 'Product 2',
        price: 20,
        category: 'Category',
        description: 'Description',
        image: 'image',
      ),
    ];

    setUpAll(() {
      registerFallbackValue(product);
    });

    setUp(() {
      mockProductsRepository = MockProductsRepository();
      cubit = ProductsCubit(mockProductsRepository);
    });

    tearDown(() {
      cubit.close();
    });

    test('initial state is ProductsIdle', () {
      expect(
        cubit.state,
        isA<ProductsIdle>(),
      );
    });

    blocTest<ProductsCubit, ProductsState>(
      'emits ProductsLoading and ProductsSuccess when load is successful',
      build: () {
        when(
          () => mockProductsRepository.getAll(),
        ).thenAnswer((_) async => products);
        return cubit;
      },
      act: (cubit) => cubit.load(),
      expect: () => [
        isA<ProductsLoading>(),
        isA<ProductsSuccess>().having((s) => s.products, 'products', products),
      ],
    );

    blocTest<ProductsCubit, ProductsState>(
      'emits ProductsLoading and ProductsError when load fails',
      build: () {
        when(() => mockProductsRepository.getAll())
            .thenThrow(Exception('Failed to load products'));
        return cubit;
      },
      act: (cubit) => cubit.load(),
      expect: () => [
        isA<ProductsLoading>(),
        isA<ProductsError>().having(
          (e) => e.error.toString(),
          'error',
          contains('Failed to load products'),
        ),
      ],
    );

    blocTest<ProductsCubit, ProductsState>(
      'emits ProductsLoading and ProductsSuccess when getById is successful',
      build: () {
        when(() => mockProductsRepository.getById(1))
            .thenAnswer((_) async => product);
        return cubit;
      },
      act: (cubit) => cubit.getById(1),
      expect: () => [
        isA<ProductsLoading>(),
        isA<ProductsSuccess>().having((s) => s.products, 'products', [product]),
      ],
    );

    blocTest<ProductsCubit, ProductsState>(
      'emits ProductsLoading and ProductsError when getById fails',
      build: () {
        when(() => mockProductsRepository.getById(1)).thenThrow(
          Exception('Failed to load product'),
        );
        return cubit;
      },
      act: (cubit) => cubit.getById(1),
      expect: () => [
        isA<ProductsLoading>(),
        isA<ProductsError>().having(
          (e) => e.error.toString(),
          'error',
          contains('Failed to load product'),
        ),
      ],
    );

    blocTest<ProductsCubit, ProductsState>(
      'emits ProductsSuccess with no products when searchProducts query does not match',
      build: () {
        cubit.emit(ProductsSuccess(products: products));
        return cubit;
      },
      act: (cubit) => cubit.searchProducts('Nonexistent'),
      expect: () => [
        isA<ProductsSuccess>()
            .having((s) => s.products, 'filtered products', isEmpty),
      ],
    );
  });
}
