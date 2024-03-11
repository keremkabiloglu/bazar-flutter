import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/material.dart';

import '../../../../util/comonents/app_switch_list_tile.dart';
import '../../../../util/model/delivery_method.dart';
import '../../../../util/model/product_state.dart';
import '../../../../util/util.dart';
import '../../controller/product_list_screen_controller.dart';
import '../../model/filter_check_box_item.dart';

class ProductListFilterSideBar extends StatelessWidget {
  const ProductListFilterSideBar({super.key, required this.controller});

  final ProductListScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 0.75,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: TextButton(
                  onPressed: controller.onPressedHideFilterSideBar,
                  child: Text('CLOSE'.tr),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildFilterTitle('PRICE_RANGE'.tr),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Obx(
                          () => RangeSlider(
                            min: 0,
                            max: 100,
                            values: controller.priceRangeValue.value,
                            onChanged: controller.onChangedPriceRange,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: TextField(
                                controller: controller.minPriceController,
                                decoration: const InputDecoration(
                                  suffix: Text('₺'),
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4),
                                child: Divider(
                                  thickness: 2,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: TextField(
                                controller: controller.maxPriceController,
                                decoration: const InputDecoration(
                                  suffix: Text('₺'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: _buildFilterTitle('STATE'.tr),
                      ),
                      for (final productState in ProductState.values)
                        Obx(
                          () => RadioListTile<ProductState>(
                            controlAffinity: ListTileControlAffinity.trailing,
                            contentPadding: EdgeInsets.zero,
                            title: Text(
                              productState.name
                                  .toUpperCase()
                                  .tr
                                  .onlyCapitalizeFirstChars,
                            ),
                            dense: true,
                            visualDensity: const VisualDensity(
                              vertical: -4,
                              horizontal: -4,
                            ),
                            value: productState,
                            groupValue: controller.selectedState.value,
                            onChanged: controller.onChangedProductStateFilter,
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Row(
                          children: [
                            _buildFilterTitle('DISTANCE'.tr),
                            const Spacer(),
                            Obx(
                              () => Text(
                                controller.distanceRangeValue.value.round() >=
                                        30
                                    ? 'ALL'.tr
                                    : '${controller.distanceRangeValue.value.round()} km',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 8,
                          left: 8,
                          right: 8,
                        ),
                        child: Obx(
                          () => Slider(
                            min: 1,
                            max: 30,
                            value: controller.distanceRangeValue.value,
                            onChanged: controller.onChangedDistance,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: _buildFilterTitle('DELIVERY_METHOD'.tr),
                      ),
                      for (final deliveryMethod in DeliveryMethod.values)
                        Obx(
                          () => AppSwitchListTile(
                            title: deliveryMethod.name
                                .toUpperCase()
                                .tr
                                .onlyCapitalizeFirstChars,
                            value: controller.selectedDeliveryMethods
                                .contains(deliveryMethod),
                            onChanged: (value) =>
                                controller.onChangedDeliveryMethodFilter(
                              deliveryMethod,
                            ),
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Obx(
                          () => _buildExpansionCheckBoxFilter(
                            title: 'BRAND'.tr,
                            selectedValues: controller.selectedBrands.value,
                            onItemSelectionChanged: (v) {
                              if (controller.selectedBrands.value.contains(v)) {
                                controller.selectedBrands.value = controller
                                    .selectedBrands.value
                                    .where((element) => element != v)
                                    .toList();
                              } else {
                                controller.selectedBrands.value =
                                    controller.selectedBrands.value + [v];
                              }
                            },
                            values: controller.brands,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(48),
                ),
                child: Text('APPLY_FILTERS'.tr),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFilterTitle(String title) => Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: Color(0xFF242424),
        ),
      );

  Widget _buildExpansionCheckBoxFilter({
    required String title,
    required List<FilterCheckBoxItem> selectedValues,
    required List<FilterCheckBoxItem> values,
    required void Function(FilterCheckBoxItem) onItemSelectionChanged,
  }) =>
      ExpansionTile(
        title: _buildFilterTitle(title),
        children: values.map(
          (e) {
            return CheckboxListTile(
              title: Text(e.title),
              value: selectedValues.contains(e),
              onChanged: (isSelected) {
                onItemSelectionChanged(e);
              },
            );
          },
        ).toList(),
      );
}
