import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/widgets.dart';

class ConversationScreenController extends GetxController {
  final messageController = TextEditingController();
  final bottomSheetGlobalKey = GlobalKey();
  final messageListScrollController = ScrollController();
  final nonWhiteSpaceCharLength = 0.obs;
  final bottomSheetHeight = 0.0.obs;

  void onMessageChanged(String value) {
    var lineCount = 1;
    for (var char in value.characters) {
      if (char == '\n') {
        lineCount++;
      }
    }
    if (lineCount > 5) {
      messageController.text = messageController.text.substring(
        0,
        messageController.text.length - 1,
      );
      messageController.selection = TextSelection.fromPosition(
        TextPosition(
          offset: messageController.text.length,
        ),
      );
    }
    nonWhiteSpaceCharLength.value = value.replaceAll(RegExp(r'\s'), '').length;
  }

  void initBottomSheetSize() {
    final renderBox =
        bottomSheetGlobalKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox != null) {
      bottomSheetHeight.value = renderBox.size.height;
    }
  }
}
