import 'package:flutter/cupertino.dart';
import 'package:foody/features/home/views/home_page.dart';
import 'package:get/get.dart';

class BoardingController extends GetxController{
  static BoardingController get instance => Get.find();

  final pageController = PageController();
  final currentPageIndex =0.obs;
  void updatePageIndicator(index){
  currentPageIndex.value = index;
  }

  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  void nextPage(){
   if(currentPageIndex.value == 0){
    pageController.jumpToPage(currentPageIndex.value+1);
    currentPageIndex.value =1;
   }else{
     Get.to(HomePage());
   }
  }

  void skipPage(){

  }
}