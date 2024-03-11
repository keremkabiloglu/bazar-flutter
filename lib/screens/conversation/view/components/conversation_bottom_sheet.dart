import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/material.dart';

import '../../controller/conversation_screen_controller.dart';

class ConversationBottomSheet extends StatelessWidget {
  const ConversationBottomSheet({
    super.key,
    required this.controller,
    required this.screenContext,
  });

  final ConversationScreenController controller;
  final BuildContext screenContext;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: controller.bottomSheetGlobalKey,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(-2, 0),
          ),
        ],
      ),
      padding: EdgeInsets.only(
        left: 12,
        right: 12,
        top: 6,
        bottom: (MediaQuery.of(screenContext).viewPadding.bottom > 0
                ? MediaQuery.of(screenContext).padding.bottom
                : 0) +
            6,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: TextField(
              controller: controller.messageController,
              onChanged: controller.onMessageChanged,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: const InputDecoration(
                hintText: 'Mesajınızı yazın',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Obx(
              () => MaterialButton(
                onPressed:
                    controller.nonWhiteSpaceCharLength > 0 ? () {} : null,
                disabledColor: Colors.grey,
                minWidth: 0,
                height: 0,
                padding: const EdgeInsets.all(8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                color: const Color(0xFF242424),
                child: SvgPicture.asset('assets/icons/send.svg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
