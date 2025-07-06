import 'package:chat_app/screen/Widget/uihelper.dart';
import 'package:flutter/material.dart';

import 'Calls/calls_screen.dart';
import 'Camera/camera_screen.dart';
import 'Chats/chats_screen.dart';
import 'Status/status_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,

      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
            indicatorColor: Colors.white,
          ),
          toolbarHeight: 100,
          title: UiHelper.CostomText(
            text: 'WhatsApp',
            height: 20,
            color: Color(0xffffffff),
            fontweight: FontWeight.bold,
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 30),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset('asset/images/Search.png'),
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            CameraScreen(),
            ChatsScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
      ),
    );
  }
 
}
