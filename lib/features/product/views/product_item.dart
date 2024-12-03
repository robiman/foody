import 'package:flutter/material.dart';
import 'package:foody/utils/constants/app_images.dart';
import 'package:foody/utils/constants/app_sizes.dart';

class ProductItem extends StatelessWidget{
  ProductItem({super.key});
  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(10),
       decoration: BoxDecoration(
         color: const Color(0xffffffff),
         borderRadius: BorderRadius.circular(16),
         border: Border.all(width: 2,color: const Color(0xfff0f5ff))
       ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.asset(AppImage.foodTwo,width: double.infinity,fit: BoxFit.cover,)),
          const SizedBox(height: AppSize.spaceBtnItems,),
          Text("Special Pizza",style: Theme.of(context).textTheme.headlineSmall,),
          const SizedBox(height: AppSize.spaceBtnItems,),
          Text("760 Birr",style: Theme.of(context).textTheme.headlineSmall,)
        ],
      ),
    );
  }
}