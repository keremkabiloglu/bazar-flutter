import 'dart:math';

import 'package:flutter/material.dart';

class ConversationBubble extends StatelessWidget {
  const ConversationBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isSender = Random().nextBool();
        return Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment:
              isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            if (isSender)
              const Padding(
                padding: EdgeInsets.only(right: 4),
                child: Text(
                  '22:32',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ),
            Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(4),
              constraints: BoxConstraints(
                maxWidth: constraints.maxWidth * 0.7,
                minWidth: constraints.maxWidth * 0.1,
              ),
              decoration: BoxDecoration(
                color:
                    isSender ? Colors.grey.shade200 : const Color(0xFF242424),
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                style: TextStyle(
                  color: isSender ? Colors.black : Colors.white,
                ),
              ),
            ),
            if (!isSender)
              const Padding(
                padding: EdgeInsets.only(left: 4),
                child: Text(
                  '22:32',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
