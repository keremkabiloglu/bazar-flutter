import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessageListItem extends StatelessWidget {
  const MessageListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.toNamed('/conversation/1');
      },
      visualDensity: VisualDensity.compact,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 0,
      ),
      leading: Container(
        width: 46,
        height: 46,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Pierre-Person.jpg/1200px-Pierre-Person.jpg'),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF242424).withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 0),
            ),
          ],
        ),
      ),
      title: const Padding(
        padding: EdgeInsets.only(bottom: 4),
        child: Text(
          'Kerem Kabiloğlu',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Color(0xFF242424),
          ),
        ),
      ),
      subtitle: const Text(
        'Merhaba, ürün hakkında bir sorum olacak.',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: CircleAvatar(
        radius: 12,
        backgroundColor: Colors.grey[300],
        child: const Padding(
          padding: EdgeInsets.all(4),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              '4',
              style: TextStyle(
                color: Color(0xFF242424),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
