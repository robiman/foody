import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foody/features/cart/views/widgets/cart_item.dart';
import 'package:foody/utils/constants/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text("Cart"),
      ),
      body: SingleChildScrollView(
        child: ListView.separated(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (con, index) => const CartItem(),
            separatorBuilder: (con, ind) => const Divider(
                  color: Color(0xffeeeeee),
                ),
            itemCount: 8),
      ),
      bottomNavigationBar:
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 16.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    const Expanded(
              child: Text(
            "Total: 7483 Birr",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                    Expanded(
              child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(8.0),
                backgroundColor: AppColor.secondryColor,
                foregroundColor: AppColor.bgColor),
                  onPressed: () {},
                  child: const Text("Order",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold))))
                  ]),
          ),
    );
  }
}
