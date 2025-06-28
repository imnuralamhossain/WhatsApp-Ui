import 'package:chat_app/screen/Widget/uihelper.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  //const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          UiHelper.CostomText(text: 'Profile info', height: 18,color: Color(0xff00A884),fontweight: FontWeight.bold),
        ],
      ),
    );
  }
}
