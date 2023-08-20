import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isMe;
  const ChatBubble({
    super.key,
    required this.message,
    required this.isMe,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: isMe
            ? BorderRadius.only(
                topLeft: Radius.circular(13),
                bottomLeft: Radius.circular(13),
                topRight: Radius.circular(2),
                bottomRight: Radius.circular(13),
              )
            : BorderRadius.only(
                topLeft: Radius.circular(2),
                bottomLeft: Radius.circular(13),
                topRight: Radius.circular(13),
                bottomRight: Radius.circular(13),
              ),
        color: isMe ? Colors.blue : Colors.black87,
      ),
      child: Text(
        message,
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}
