import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../util/model/order_state_enum.dart';
import 'components/account_order_item.dart';

class AccountOrdersScreen extends StatelessWidget {
  static const routeName = '/account_orders';
  const AccountOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        centerTitle: false,
        title: Text('MY_SALES'.tr),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/order_by.svg'),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                AccountOrderItem(
                  title: 'Apple iPhone 12 Pro Max 128 GB',
                  price: 15000,
                  imageUrl:
                      'https://cdn.pixabay.com/photo/2016/11/29/05/08/apple-1867461_960_720.jpg',
                  date: DateTime.now(),
                  state: OrderState.completed,
                ),
                const Divider(),
                AccountOrderItem(
                  title: 'Koltuk Takımı',
                  price: 5500,
                  imageUrl:
                      'https://cdn.pixabay.com/photo/2017/03/19/01/43/living-room-2155376_960_720.jpg',
                  date: DateTime.now(),
                  state: OrderState.waitingForConfirmation,
                ),
                const Divider(),
                AccountOrderItem(
                  title: 'Apple iPhone 12 Pro Max 128 GB',
                  price: 15000,
                  imageUrl:
                      'https://cdn.pixabay.com/photo/2016/11/29/05/08/apple-1867461_960_720.jpg',
                  date: DateTime.now(),
                  state: OrderState.canceled,
                ),
                const Divider(),
                AccountOrderItem(
                  title: 'Koltuk Takımı',
                  price: 5500,
                  imageUrl:
                      'https://cdn.pixabay.com/photo/2017/03/19/01/43/living-room-2155376_960_720.jpg',
                  date: DateTime.now(),
                  state: OrderState.waitingForShipment,
                ),
                const Divider(),
                AccountOrderItem(
                  title: 'Koltuk Takımı',
                  price: 5500,
                  imageUrl:
                      'https://cdn.pixabay.com/photo/2017/03/19/01/43/living-room-2155376_960_720.jpg',
                  date: DateTime.now(),
                  state: OrderState.waitingForDelivery,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: context.mediaQueryPadding.bottom),
          ),
        ],
      ),
    );
  }
}
