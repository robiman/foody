import 'package:flutter/material.dart';
import 'package:foody/features/boarding/controllers/boarding_controller.dart';
import 'package:foody/features/boarding/views/widgets/boarding_item.dart';
import 'package:foody/utils/constants/app_images.dart';
import 'package:foody/utils/constants/app_texts.dart';
import 'package:foody/utils/constants/colors.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingPage extends StatelessWidget{

  const BoardingPage({super.key,});
  @override
  Widget build(BuildContext context){
    final controller = Get.put(BoardingController());
    return Scaffold(
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 30.0),
          child: PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              BoardingPageItem(title:AppTexts.boardingTextOne,image:AppImage.boardingImageOne,subTitle: AppTexts.boardingSubTextOne,),
              BoardingPageItem(title:AppTexts.boardingTextTwo,image:AppImage.boardingImageTwo,subTitle: AppTexts.boardingSubTextTwo,)

            ],
          ),
        ),
        Positioned(top: kToolbarHeight,right: 8.0,child: TextButton(onPressed: (){},child:  Text("Skip",style: Theme.of(context).textTheme.bodyLarge,),),),
        Positioned(bottom: kBottomNavigationBarHeight+25,left: 16.0,child: SmoothPageIndicator(onDotClicked: controller.dotNavigationClick,controller: controller.pageController, count: 2,effect: const ExpandingDotsEffect(activeDotColor: AppColor.secondryColor,dotHeight: 6),)),
        Positioned(bottom:kBottomNavigationBarHeight+15,right:16.0,child: ElevatedButton(onPressed: controller.nextPage,style: ElevatedButton.styleFrom(shape: const CircleBorder(),backgroundColor: AppColor.secondryColor,foregroundColor: Colors.white),child: const Icon(Icons.chevron_right),))
      ],),
    );
  }
}