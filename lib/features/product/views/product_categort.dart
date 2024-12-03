import 'package:flutter/material.dart';
import 'package:foody/utils/constants/app_images.dart';
import 'package:foody/utils/constants/app_sizes.dart';

class ProductCategory extends StatelessWidget{
  const ProductCategory({super.key});
  @override
  Widget build(BuildContext context){
    return ListView.builder(shrinkWrap: true,itemBuilder: (con,index)=>const ProductCategoryItem(),itemCount: 18,scrollDirection: Axis.horizontal,);
  }
}

class ProductCategoryItem extends StatelessWidget{
  const ProductCategoryItem({super.key});
  @override
  Widget build(BuildContext context){
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 6.0),
      child:  SizedBox(
        width: 100,
        child: Column(children: [
          CircleAvatar(backgroundImage: AssetImage(AppImage.categoryOne),radius: 30,backgroundColor: Colors.grey,),
          SizedBox(height: 6.0),
          Text("Cheese  Burger ",maxLines: 2,overflow:TextOverflow.ellipsis,textAlign: TextAlign.center,)
        ],),
      ),
    );
  }
}