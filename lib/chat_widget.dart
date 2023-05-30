import 'package:cr1_lesson_6/conversation_screen.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({super.key});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ConversationScreen()),
        );
      },
      child: Row(
        children: [
          Image.network(
            'https://picsum.photos/200',
            height: 50,
          ),
          Column(
            children: [
              Text(
                'James',
                style: TextStyle(
                  fontSize: 36,
                ),
              ),
              Text('Hello James'),
            ],
          ),
          Text('11:05 PM'),
        ],
      ),
    );
  }
}
