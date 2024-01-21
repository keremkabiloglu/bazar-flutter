import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../../../util/model/order_state_enum.dart';

class AccountOrderItem extends StatelessWidget {
  const AccountOrderItem({
    super.key,
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.date,
    required this.state,
  });

  final String title;
  final double price;
  final String imageUrl;
  final DateTime date;
  final OrderState state;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        height: 60,
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: NetworkImage(
                    imageUrl,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF242424),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '${NumberFormat.currency(
                      locale: 'tr',
                      symbol: '',
                    ).format(price)} ₺',
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF242424),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        DateFormat('dd.MM.yyyy HH:mm').format(
                          date,
                        ),
                        style: const TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF242424),
                          fontSize: 12,
                        ),
                      ),
                      const Spacer(),
                      _buildStateWidget(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStateWidget() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildStateText(),
        const SizedBox(
          width: 4,
        ),
        Icon(
          _getStateIcon(),
          size: 14,
          color: _getStateColor(),
        ),
      ],
    );
  }

  Widget _buildStateText() {
    String stateText = '';
    switch (state) {
      case OrderState.completed:
        stateText = 'COMPLETED'.tr;
      case OrderState.canceled:
        stateText = 'CANCELED'.tr;
      case OrderState.waitingForConfirmation:
        stateText = 'WAITING_FOR_CONFIRMATION'.tr;
      case OrderState.waitingForShipment:
        stateText = 'WAITING_FOR_SHIPMENT'.tr;
      case OrderState.waitingForDelivery:
        stateText = 'WAITING_FOR_DELIVERY'.tr;
        break;
    }
    return Text(
      stateText,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        color: _getStateColor(),
      ),
    );
  }

  IconData _getStateIcon() {
    switch (state) {
      case OrderState.completed:
        return Icons.check_circle_outline;
      case OrderState.canceled:
        return Icons.cancel_outlined;
      case OrderState.waitingForConfirmation:
        return Icons.pending_outlined;
      case OrderState.waitingForShipment:
        return Icons.pending_outlined;
      case OrderState.waitingForDelivery:
        return Icons.pending_outlined;
      default:
        return Icons.pending_outlined;
    }
  }

  Color _getStateColor() {
    switch (state) {
      case OrderState.completed:
        return Colors.green;
      case OrderState.canceled:
        return Colors.red;
      case OrderState.waitingForConfirmation:
        return Colors.orange;
      case OrderState.waitingForShipment:
        return Colors.orange;
      case OrderState.waitingForDelivery:
        return Colors.orange;
      default:
        return Colors.orange;
    }
  }
}
