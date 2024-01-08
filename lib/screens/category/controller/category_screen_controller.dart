import 'package:get/get.dart';

class CategoryScreenController extends GetxController {
  final selectedCategory = 0.obs;

  void onCategoryPressed(int index) {
    selectedCategory.value = index;
  }
}
