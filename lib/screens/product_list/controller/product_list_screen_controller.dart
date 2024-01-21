import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../util/model/delivery_method.dart';
import '../../../util/model/product_state.dart';
import '../model/filter_check_box_item.dart';
import '../model/order_by_dialog.dart';

class ProductListScreenController extends GetxController {
  final demoProducts = List.generate(100, (index) => 'Product $index');
  final scaffolKey = GlobalKey<ScaffoldState>();

  final priceRangeValue = const RangeValues(0, 100).obs;
  final minPriceController = TextEditingController();
  final maxPriceController = TextEditingController();
  final selectedState = ProductState.all.obs;
  final distanceRangeValue = 30.0.obs;
  final selectedDeliveryMethods = DeliveryMethod.values.obs;

  final selectedBrands = Rx<List<FilterCheckBoxItem>>([]);

  @override
  void onInit() {
    onChangedPriceRange(priceRangeValue.value);
    super.onInit();
  }

  void onPressedOrderBy() {
    Get.dialog(const OrderByDialog());
  }

  void onPressedOpenFilterSideBar() {
    scaffolKey.currentState?.openEndDrawer();
  }

  void onPressedHideFilterSideBar() {
    scaffolKey.currentState?.closeEndDrawer();
  }

  void onChangedPriceRange(RangeValues values) {
    priceRangeValue.value = values;
    maxPriceController.text = values.end.toStringAsFixed(0);
    minPriceController.text = values.start.toStringAsFixed(0);
  }

  void onChangedProductStateFilter(ProductState? productState) {
    selectedState.value = productState ?? ProductState.all;
  }

  void onChangedDistance(double value) {
    distanceRangeValue.value = value;
  }

  void onChangedDeliveryMethodFilter(DeliveryMethod deliveryMethod) {
    if (selectedDeliveryMethods.contains(deliveryMethod)) {
      selectedDeliveryMethods.remove(deliveryMethod);
    } else {
      selectedDeliveryMethods.add(deliveryMethod);
    }
  }

  final brands = [
    FilterCheckBoxItem(
      value: 'Apple',
      title: 'Apple',
    ),
    FilterCheckBoxItem(
      value: 'Samsung',
      title: 'Samsung',
    ),
    FilterCheckBoxItem(
      value: 'Huawei',
      title: 'Huawei',
    ),
    FilterCheckBoxItem(
      value: 'Xiaomi',
      title: 'Xiaomi',
    ),
    FilterCheckBoxItem(
      value: 'Oppo',
      title: 'Oppo',
    ),
    FilterCheckBoxItem(
      value: 'Vivo',
      title: 'Vivo',
    ),
    FilterCheckBoxItem(
      value: 'Realme',
      title: 'Realme',
    ),
    FilterCheckBoxItem(
      value: 'OnePlus',
      title: 'OnePlus',
    ),
    FilterCheckBoxItem(
      value: 'Asus',
      title: 'Asus',
    ),
    FilterCheckBoxItem(
      value: 'Lenovo',
      title: 'Lenovo',
    ),
    FilterCheckBoxItem(
      value: 'HP',
      title: 'HP',
    ),
    FilterCheckBoxItem(
      value: 'Dell',
      title: 'Dell',
    ),
    FilterCheckBoxItem(
      value: 'Acer',
      title: 'Acer',
    ),
    FilterCheckBoxItem(
      value: 'MSI',
      title: 'MSI',
    ),
    FilterCheckBoxItem(
      value: 'Casper',
      title: 'Casper',
    ),
  ];
}
