import 'package:chat/body/message_body.dart';
import 'package:chat/constants.dart';

import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(), body: MessageBody());
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          BackButton(),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/user_2.png'),
          ),
          SizedBox(width: kDefaultPadding * 0.75),
          Column(
            children: [
              Text(
                'Kristin Waston',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Active 3m ago',
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.local_phone),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.videocam),
        ),
        SizedBox(width: kDefaultPadding / 2),
      ],
    );
  }
}
