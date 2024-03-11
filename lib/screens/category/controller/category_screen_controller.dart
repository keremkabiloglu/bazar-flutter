import 'package:bazar_service_lib/bazar_service_lib.dart';

class CategoryScreenController extends GetxController {
  final selectedCategory = 0.obs;

  void onCategoryPressed(int index) {
    selectedCategory.value = index;
  }
}
