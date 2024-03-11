import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/material.dart';

import '../controller/messages_screen_controller.dart';
import 'components/message_list_item.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MessagesScreenController>(
      init: MessagesScreenController(),
      builder: (controller) => ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return const Column(
            children: [
              MessageListItem(),
              Divider(),
            ],
          );
        },
      ),
    );
  }
}
