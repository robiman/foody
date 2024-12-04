import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foody/utils/constants/app_images.dart';
import 'package:foody/utils/constants/colors.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:16.0),
      child: Row(
        children: [
          Image.asset(AppImage.categoryOne,
              width: MediaQuery.of(context).size.width * 0.5, fit: BoxFit.cover,height: MediaQuery.of(context).size.height * 0.1),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cheese Burger Cheese Burgsdfdser",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffeeeeee),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.remove,
                              size: 25,
                              color: AppColor.primaryColor,
                            )),
                        const SizedBox(
                          width: 14,
                        ),
                        const Text(
                          "12",
                          style: TextStyle(
                              fontSize: 20, color: AppColor.primaryColor),
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                              size: 25,
                              color: AppColor.primaryColor,
                            ))
                      ],
                    ),
                  ),

                ]),
          ),
        ],
      ),
    );
  }
}
