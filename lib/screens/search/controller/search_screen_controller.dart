import 'package:get/get.dart';

class SearchScreenController extends GetxController {
  void onSearchChanged(String value) {
    print('SearchScreenController.onSearchChanged: $value');
  }

  void onSearchSubmitted(String value) {
    print('SearchScreenController.onSearchSubmitted: $value');
  }
}
