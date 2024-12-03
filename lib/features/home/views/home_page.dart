import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foody/common/widgets/bottom_navigation/views/bottom_navigation_menu.dart';
import 'package:foody/features/home/views/widgets/home_header.dart';
import 'package:foody/features/product/views/product_categort.dart';
import 'package:foody/features/product/views/product_item.dart';
import 'package:foody/utils/constants/app_images.dart';
import 'package:foody/utils/constants/app_sizes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: const Color(0xffffffff),
        automaticallyImplyLeading: false,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(AppImage.profileImage),
          ),
        ),
        title: const Text("Hi, Roba Boru"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeHeader(),
            const SizedBox(
              height: AppSize.spaceBtnItems,
            ),
            const SizedBox(height: 110, child: ProductCategory()),
            const SizedBox(
              height: AppSize.spaceBtnItems,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Most Popular",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            mainAxisExtent: 230),
                    itemCount: 10,
                    itemBuilder: (con, index) => ProductItem())),
            const SizedBox(
              height: AppSize.spaceBtnItems,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigationMenu(),
    );
  }
}
