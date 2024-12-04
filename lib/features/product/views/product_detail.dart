import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foody/features/cart/views/cart.dart';
import 'package:foody/features/product/controllers/product_detail_controller.dart';
import 'package:foody/utils/constants/app_images.dart';
import 'package:foody/utils/constants/app_sizes.dart';
import 'package:foody/utils/constants/colors.dart';
import 'package:get/get.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductDetailController());
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Badge(
                label: Obx(() => Text("${controller.currentIndex}")),
                alignment: Alignment.topRight,
                largeSize: 20.0,
                child: IconButton(
                    onPressed: () {
                      if (controller.currentIndex.value > 0) {
                        Get.to(const CartPage());
                      }
                    },
                    icon: const Icon(Icons.shopping_cart))),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              AppImage.categoryThree,
              width: double.infinity,
              height: MediaQuery.of(context).size.height *0.3,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: AppSize.spaceBtnItems,
            ),
            Padding(
              padding: const EdgeInsets.all(AppSize.spaceBtnItems),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Cheese Burger",
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(
                    height: AppSize.spaceBtnItems,
                  ),
                  const Text(
                      "Indulge in the ultimate comfort food with our delicious, juicy Cheese Burger!"),
                  const SizedBox(
                    height: AppSize.spaceBtnItems,
                  ),
                  Text("720 Birr",
                      style: Theme.of(context).textTheme.headlineMedium),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: 230,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: const Color(0xffeeeeee)),
                child: Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: controller.removeCart,
                          icon: const Icon(
                            Icons.remove,
                            size: 30,
                            color: AppColor.primaryColor,
                          )),
                      const SizedBox(
                        width: 14,
                      ),
                      Obx(() => Text(
                            "${controller.currentIndex}",
                            style: const TextStyle(
                                fontSize: 20, color: AppColor.primaryColor),
                          )),
                      const SizedBox(
                        width: 14,
                      ),
                      IconButton(
                          onPressed: controller.addCart,
                          icon: const Icon(
                            Icons.add,
                            size: 30,
                            color: AppColor.primaryColor,
                          ))
                    ],
                  ),
                )),
            const SizedBox(
              width: 30,
            ),
            Obx(() => Expanded(
                flex: 2,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(14.0),
                        backgroundColor: AppColor.secondryColor,
                        foregroundColor: AppColor.bgColor),
                    onPressed: controller.currentIndex.value == 0
                        ? null
                        : () {
                            Get.to(const CartPage());
                          },
                    child: const Text(
                      "Checkout",
                      style: TextStyle(fontSize: 16),
                    ))))
          ],
        ),
      ),
    );
  }
}
