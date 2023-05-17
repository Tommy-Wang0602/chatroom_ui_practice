import 'package:chat/constants.dart';
import 'package:chat/widgets/chat_input_filed.dart';
import 'package:flutter/material.dart';
import '../models/ChatMessage.dart';
import '../widgets/message.dart';

class MessageBody extends StatelessWidget {
  const MessageBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, index) => Message(
                message: demeChatMessages[index],
              ),
            ),
          ),
        ),
        ChatTextFiled(),
      ],
    );
  }
}
