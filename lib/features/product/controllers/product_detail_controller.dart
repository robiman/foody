import 'package:get/get.dart';

class ProductDetailController extends GetxController{
  static ProductDetailController get instance => Get.find();
  final currentIndex =0.obs;
  void addCart(){
    if(currentIndex.value <10) {
      currentIndex.value++;
    }
  }

  void removeCart(){
    if(currentIndex.value > 0){
      currentIndex.value--;
    }
  }
}