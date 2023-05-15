import 'package:chat/body/chat_list_body.dart';
import 'package:chat/constants.dart';
import 'package:flutter/material.dart';

class ChatListScreen extends StatefulWidget {
  const ChatListScreen({Key key}) : super(key: key);

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ChatListBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.person_add_alt_1,
          color: Colors.white,
        ),
        backgroundColor: kPrimaryColor,
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.messenger), label: 'Chats'),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: 'People'),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
        BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage('assets/images/user_2.png'),
            ),
            label: 'Profile'),
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      automaticallyImplyLeading: false,
      title: Text('Chats'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        )
      ],
    );
  }
}
