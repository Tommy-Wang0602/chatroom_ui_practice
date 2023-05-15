import 'package:chat/constants.dart';
import 'package:chat/widgets/chat_input_filed.dart';
import 'package:flutter/material.dart';

class MessageBody extends StatelessWidget {
  const MessageBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        ChatTextFiled(),
      ],
    );
  }
}
