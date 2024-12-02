import 'package:flutter/material.dart';
import 'package:foody/utils/constants/app_sizes.dart';

class BoardingPageItem extends StatelessWidget{
  final String? image;
  final String? title;
  final String? subTitle;
   BoardingPageItem({super.key,this.title,this.image,this.subTitle});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:  Column(
        children: [
          Image.asset(image!,width: double.infinity,height: 400,),
          const SizedBox(height: AppSize.spaceBtnItems,),
          Text(title!,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
          const SizedBox(height: AppSize.spaceBtnItems,),
          Text(subTitle!,style: Theme.of(context).textTheme.bodyLarge,textAlign: TextAlign.center,)
        ],
      )
    );
  }
}