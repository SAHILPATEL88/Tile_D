import 'package:Tile_App/src/view/screen/search_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Tile_App/core/app_data.dart';
import 'package:Tile_App/core/app_color.dart';
import 'package:Tile_App/src/controller/product_controller.dart';
import 'package:Tile_App/src/view/widget/product_grid_view.dart';
import 'package:Tile_App/src/view/widget/list_item_selector.dart';



enum AppbarActionType { leading, trailing }

final ProductController controller = Get.put(ProductController());

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({Key? key});

  Widget appBarActionButton(BuildContext context, AppbarActionType type) {
    IconData icon = Icons.ac_unit_outlined;

    if (type == AppbarActionType.trailing) {
      icon = Icons.search;
    }

    return GestureDetector(
      onTap: () {
        if (type == AppbarActionType.trailing) {
          // Navigate to the search page using GetX
          Get.to(() => SearchPage());
        }
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColor.white,
        ),
        child: Icon(icon, color: Colors.black),
      ),
    );
  }


  PreferredSizeWidget _appBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(100),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Leading icon
              appBarActionButton(context, AppbarActionType.leading),

              // Trailing icon (search icon)
              appBarActionButton(context, AppbarActionType.trailing),
            ],
          ),
        ),
      ),
    );
  }




  @override
  Widget build(BuildContext context) {
    controller.getAllItems();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _appBar(context), // Pass the context to _appBar
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello Sahil",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                Text(
                  "Let's get something?",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                _recommendedProductListView(context),
                _topCategoriesHeader(context),
                _topCategoriesListView(),
                GetBuilder(builder: (ProductController controller) {
                  return ProductGridView(
                    items: controller.filteredProducts,
                    likeButtonPressed: (index) => controller.isFavorite(index),
                    isPriceOff: (product) => controller.isPriceOff(product),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget _recommendedProductListView(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: AppData.recommendedProducts.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                color: AppData.recommendedProducts[index].cardBackgroundColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '30% OFF DURING \nCOVID 19',
                          style: Theme
                              .of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(color: Colors.white),
                        ),
                        const SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppData
                                .recommendedProducts[index]
                                .buttonBackgroundColor,
                            elevation: 0,
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          child: Text(
                            "Get Now",
                            style: TextStyle(
                              color: AppData.recommendedProducts[index]
                                  .buttonTextColor!,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/images/shopping.png',
                    height: 125,
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _topCategoriesHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Top categories",
            style: Theme
                .of(context)
                .textTheme
                .headlineMedium,
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(foregroundColor: AppColor.darkOrange),
            child: Text(
              "SEE ALL",
              style: Theme
                  .of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.deepOrange.withOpacity(0.7)),
            ),
          )
        ],
      ),
    );
  }

  Widget _topCategoriesListView() {
    return ListItemSelector(
      categories: controller.categories,
      onItemPressed: (index) {
        controller.filterItemsByCategory(index);
      },
    );
  }

  @override
  Widget Build(BuildContext context) {
    controller.getAllItems();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _appBar(context), // Pass the context to _appBar
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello Sina",
                  style: Theme
                      .of(context)
                      .textTheme
                      .displayLarge,
                ),
                Text(
                  "Let's get something?",
                  style: Theme
                      .of(context)
                      .textTheme
                      .headlineSmall,
                ),
                _recommendedProductListView(context),
                _topCategoriesHeader(context),
                _topCategoriesListView(),
                GetBuilder(builder: (ProductController controller) {
                  return ProductGridView(
                    items: controller.filteredProducts,
                    likeButtonPressed: (index) => controller.isFavorite(index),
                    isPriceOff: (product) => controller.isPriceOff(product),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
