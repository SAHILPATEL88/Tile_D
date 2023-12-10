import 'package:Tile_App/src/model/bottom_navy_bar_item.dart';
import 'package:Tile_App/src/model/recommended_product.dart';
import 'package:Tile_App/src/model/product_size_type.dart';
import 'package:Tile_App/src/model/product_category.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:Tile_App/src/model/categorical.dart';
import 'package:Tile_App/src/model/numerical.dart';
import 'package:Tile_App/src/model/product.dart';
import 'package:flutter/material.dart';

class AppData {
  const AppData._();

  static String about1 =
      'Best Bathroom Ceramic Tile With in Best Price with Given Size.';
  static String about2 =
      'Best Livingroom Ceramic Tile With in Best Price with Given Size.';
  static String about3 =
      'Best Bedroom Ceramic Tile With in Best Price with Given Size.';
  static String about4 =
      'Best Dinningroom Ceramic Tile With in Best Price with Given Size.';
  static String about5 =
      'Best All Used of Work Ceramic Tile With in Best Price with Given Size.';
  static String about6 =
      'Best Bathroom Porcelian Tile With in Best Price with Given Size.';
  static String about7 =
      'Best Livingroom Porcelian Tile With in Best Price with Given Size.';
  static String about8 =
      'Best Bedroom Porcelian Tile With in Best Price with Given Size.';
  static String about9 =
      'Best Dinningroom Porcelian Tile With in Best Price with Given Size.';
  static String about10 =
      'Best All Used of Work Porcelian Tile With in Best Price with Given Size.';

  static List<Product> products = [
    Product(
      name: 'Ceramic Tile 1',
      price: 39,
      about: about1,
      isAvailable: true,
      off: 300,
      quantity: 0,
      images: [
        'assets/images/01.jpg',
        'assets/images/01.jpg',
        'assets/images/01.jpg'
      ],
      isFavorite: true,
      rating: 1,
      type: ProductType.all,
    ),
    Product(
      name: 'Ceramic Tile 2',
      price: 69,
      about: about2,
      isAvailable: false,
      off: 220,
      quantity: 0,
      images: [
        'assets/images/02.jpg',
        'assets/images/02.jpg',
        'assets/images/02.jpg'
      ],
      isFavorite: false,
      rating: 4,
      type: ProductType.all,
    ),
    Product(
      name: 'Ceramic Tile 3',
      price: 49,
      about: about3,
      isAvailable: true,
      off: null,
      quantity: 0,
      images: [
        'assets/images/03.jpg',
        'assets/images/03.jpg',
        'assets/images/03.jpg',
      ],
      isFavorite: false,
      rating: 3,
      type: ProductType.all,
    ),
    Product(
      name: 'Ceramic Tile 4',
      price: 79,
      about: about4,
      isAvailable: true,
      off: 200,
      quantity: 0,
      images: [
        'assets/images/04.jpg',
        'assets/images/04.jpg',
        'assets/images/04.jpg',
      ],
      isFavorite: false,
      rating: 54,
      sizes: ProductSizeType(
        categorical: [
          Categorical(CategoricalType.small, true),
          Categorical(CategoricalType.medium, false),
          Categorical(CategoricalType.large, false),
        ],
      ),
      type: ProductType.all,
    ),
    Product(
      name: 'Ceramic Tile 5',
      price: 44,
      about: about5,
      isAvailable: true,
      off: null,
      quantity: 0,
      images: [
        'assets/images/05.jpg',
        'assets/images/05.jpg',
        'assets/images/05.jpg',
      ],
      isFavorite: false,
      rating: 4,
      sizes: ProductSizeType(
        numerical: [Numerical('41', true), Numerical('45', false)],
      ),
      type: ProductType.all,
    ),
    Product(
        name: 'Porcelain Tile 6',
        price: 79,
        about: about6,
        isAvailable: true,
        off: null,
        quantity: 0,
        images: [
          'assets/images/06.jpg',
          'assets/images/06.jpg',
          'assets/images/06.jpg',
          'assets/images/06.jpg',
        ],
        isFavorite: false,
        rating: 2,
        type: ProductType.all),
    Product(
      name: 'Porcelain Tile 7',
      price: 64,
      about: about7,
      isAvailable: true,
      off: null,
      quantity: 0,
      images: [
        'assets/images/07.jpg',
        'assets/images/07.jpg',
      ],
      isFavorite: false,
      rating: 3,
      sizes: ProductSizeType(
        numerical: [
          Numerical('43', true),
          Numerical('50', false),
          Numerical('55', false)
        ],
      ),
      type: ProductType.all,
    ),
    Product(
      name: 'Porcelain Tile 8',
      price: 59,
      about: about8,
      isAvailable: true,
      off: null,
      quantity: 0,
      images: [
        'assets/images/08.jpg',
        'assets/images/08.jpg',
      ],
      isFavorite: false,
      sizes: ProductSizeType(
        numerical: [
          Numerical('50', true),
          Numerical('65', false),
          Numerical('85', false)
        ],
      ),
      rating: 2,
      type: ProductType.all,
    ),
    Product(
      name: 'Porcelain Tile 9',
      price: 49,
      about: about9,
      isAvailable: true,
      off: 200,
      quantity: 0,
      images: [
        'assets/images/09.jpg',
        'assets/images/09.jpg',
        'assets/images/09.jpg',
      ],
      isFavorite: false,
      rating: 5,
      sizes: ProductSizeType(
        categorical: [
          Categorical(CategoricalType.small, true),
          Categorical(CategoricalType.medium, false),
          Categorical(CategoricalType.large, false),
        ],
      ),
      type: ProductType.all,
    ),
    Product(
      name: 'Porcelain Tile 10',
      price: 89,
      about: about10,
      isAvailable: true,
      off: 200,
      quantity: 0,
      images: [
        'assets/images/010.jpg',
        'assets/images/010.jpg',
        'assets/images/010.jpg',
      ],
      isFavorite: false,
      rating: 5,
      sizes: ProductSizeType(
        categorical: [
          Categorical(CategoricalType.small, true),
          Categorical(CategoricalType.medium, false),
          Categorical(CategoricalType.large, false),
        ],
      ),
      type: ProductType.all,
    ),
  ];

  static List<ProductCategory> categories = [
    ProductCategory(
      ProductType.all,
      true,
      Icons.all_inclusive,
    ),
    ProductCategory(
      ProductType.all,
      false,
      FontAwesomeIcons.mobileScreenButton,
    ),
    ProductCategory(ProductType.all, false, Icons.all_inclusive),
    ProductCategory(
      ProductType.all,
      false,
      FontAwesomeIcons.tablet,
    ),
    ProductCategory(
      ProductType.all,
      false,
      Icons.arrow_circle_down,
    ),
    ProductCategory(
      ProductType.all,
      false,
      Icons.arrow_circle_down,
    ),
  ];

  static List<Color> randomColors = [
    const Color(0xFFFCE4EC),
    const Color(0xFFF3E5F5),
    const Color(0xFFEDE7F6),
    const Color(0xFFE3F2FD),
    const Color(0xFFE0F2F1),
    const Color(0xFFF1F8E9),
    const Color(0xFFFFF8E1),
    const Color(0xFFECEFF1),
  ];

  static List<BottomNavyBarItem> bottomNavyBarItems = [
    BottomNavyBarItem(
      "Home",
      const Icon(Icons.home),
      const Color(0xFFEC6813),
      Colors.grey,
    ),
    BottomNavyBarItem(
      "Favorite",
      const Icon(Icons.favorite),
      const Color(0xFFEC6813),
      Colors.grey,
    ),
    BottomNavyBarItem(
      "Cart",
      const Icon(Icons.shopping_cart),
      const Color(0xFFEC6813),
      Colors.grey,
    ),
    BottomNavyBarItem(
      "Profile",
      const Icon(Icons.person),
      const Color(0xFFEC6813),
      Colors.grey,
    ),
  ];

  static List<RecommendedProduct> recommendedProducts = [
    RecommendedProduct(
      imagePath: "",
      cardBackgroundColor: const Color(0xFFEC6813),
    ),
    RecommendedProduct(
      imagePath: "",
      cardBackgroundColor: const Color(0xFF3081E1),
      buttonBackgroundColor: const Color(0xFF9C46FF),
      buttonTextColor: Colors.white,
    ),
  ];
}