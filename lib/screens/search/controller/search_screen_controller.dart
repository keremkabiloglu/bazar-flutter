import 'package:bazar_service_lib/bazar_service_lib.dart';

class SearchScreenController extends GetxController {
  void onSearchChanged(String value) {
    print('SearchScreenController.onSearchChanged: $value');
  }

  void onSearchSubmitted(String value) {
    print('SearchScreenController.onSearchSubmitted: $value');
  }
}
