import 'package:ecommerce_new_design/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  // Varaibles
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // update the page index when page is Scrolled
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // Jump to specified dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  // Update the currect index and jump to next page
  void nextPage() {
    if(currentPageIndex==2){
      Get.offAll( Login());
    }else{
      int page=currentPageIndex.value+1;
      pageController.jumpToPage(page);
    }
  }

  // Update the currect index and jump to last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
