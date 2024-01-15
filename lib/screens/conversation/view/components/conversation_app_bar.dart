import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/conversation_screen_controller.dart';

class ConversationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ConversationAppBar({super.key, required this.controller});

  final ConversationScreenController controller;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          const BackButton(),
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Pierre-Person.jpg/1200px-Pierre-Person.jpg',
                ),
                fit: BoxFit.cover,
              ),
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                color: const Color(0xFF242424),
                width: 2,
                strokeAlign: BorderSide.strokeAlignOutside,
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF242424).withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              height: preferredSize.height,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 6),
                    child: Text(
                      'Kerem Kabiloğlu',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xFF242424),
                      ),
                    ),
                  ),
                  Text(
                    '@keremkabiloglu',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xFF242424),
                    ),
                  ),
                ],
              ),
            ),
          ),
          PopupMenuButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.zero,
            itemBuilder: (context) => [
              PopupMenuItem(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 4),
                      child: Icon(
                        CupertinoIcons.person,
                        color: Color(0xFF242424),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'SEE_PROFILE'.tr,
                        style: const TextStyle(
                          color: Color(0xFF242424),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 4),
                      child: Icon(
                        CupertinoIcons.person_add,
                        color: Color(0xFF242424),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'FOLLOW'.tr,
                        style: const TextStyle(
                          color: Color(0xFF242424),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 4),
                      child: Icon(
                        CupertinoIcons.xmark_circle,
                        color: Color(0xFF242424),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'BLOCK'.tr,
                        style: const TextStyle(
                          color: Color(0xFF242424),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(58);
}
