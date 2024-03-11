import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/material.dart';

import '../controller/conversation_screen_controller.dart';
import 'components/conversation_app_bar.dart';
import 'components/conversation_bottom_sheet.dart';
import 'components/conversation_bubble.dart';

class ConversationScreen extends GetView<ConversationScreenController> {
  static const routeName = '/conversation/:conversationId';
  const ConversationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.initBottomSheetSize();
      controller.messageListScrollController.jumpTo(
        controller.messageListScrollController.position.maxScrollExtent,
      );
    });
    return Scaffold(
      appBar: ConversationAppBar(
        controller: controller,
      ),
      body: Obx(
        () => Padding(
          padding: EdgeInsets.only(
            bottom: controller.bottomSheetHeight.value,
          ),
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 6),
            controller: controller.messageListScrollController,
            itemCount: 50,
            itemBuilder: (context, index) => const Column(
              children: [
                ConversationBubble(),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: ConversationBottomSheet(
        controller: controller,
        screenContext: context,
      ),
    );
  }
}
