import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AccountNotificationItem extends StatelessWidget {
  const AccountNotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      width: double.infinity,
      height: 60,
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.25),
              borderRadius: BorderRadius.circular(100),
              image: const DecorationImage(
                image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2016/11/29/05/08/apple-1867461_960_720.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod, nisl eget aliquam lacinia, nisl nisl aliquet nisl, eget aliquam lacinia, nisl nisl aliquet nisl.',
                  style: Theme.of(context).textTheme.bodyLarge,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Spacer(),
                    Text(
                      DateFormat('dd.MM.yyyy HH:mm').format(
                        DateTime.now(),
                      ),
                      style: const TextStyle(
                        color: Color(0xff242424),
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
