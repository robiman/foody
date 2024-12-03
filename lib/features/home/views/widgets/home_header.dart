import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foody/utils/constants/colors.dart';
import 'package:get/get.dart';

class HomeHeader extends StatelessWidget{
  const HomeHeader({super.key});
  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Find and Order",style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 24.0),
            const TextField(decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: InputBorder.none,
              hintText: "Search Your Food",
              prefixIcon:  Icon(Icons.search)
            ),)
        ],),
      ),
    );
  }
}