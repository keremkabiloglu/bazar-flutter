import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSwitchListTile extends StatelessWidget {
  const AppSwitchListTile({
    super.key,
    required this.title,
    required this.value,
    this.onChanged,
  });

  final String title;
  final bool value;
  final void Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        CupertinoSwitch(
          activeColor: const Color(0xFF3B3B3B),
          thumbColor: Colors.white,
          value: value,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
