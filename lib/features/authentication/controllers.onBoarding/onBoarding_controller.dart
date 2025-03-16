import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  // Varaibles

  // update the page index when page is Scrolled
  void updatePageIndicator(index) {}

  // Jump to specified dot selected page
  void dotNavigationClick(index) {}

  // Update the currect index and jump to next page
  void nextPage() {}

  // Update the currect index and jump to last page
  void skipPage() {}
  
}
