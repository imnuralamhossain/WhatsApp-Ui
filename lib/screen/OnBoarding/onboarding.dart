import 'package:chat_app/screen/Login/login_screen.dart';
import 'package:chat_app/screen/Widget/uihelper.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  //const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('asset/images/onboarding.png'),

            SizedBox(height: 20),
            UiHelper.CostomText(
              text: 'Welcome to WhatsApp',
              height: 20,
              color: Color(0xff000000),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CostomText(text: 'Read out', height: 14),
                UiHelper.CostomText(
                  text: ' Privacy Policy. ',
                  height: 14,
                  color: Color(0xff0C42CC),
                ),
                UiHelper.CostomText(
                  text: 'Tap “Agree and continue”',
                  height: 14,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CostomText(text: 'to accept the', height: 14),
                UiHelper.CostomText(
                  text: ' Teams of Service.',
                  height: 14,
                  color: Color(0xff0C42CC),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CostomButton(callback: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
      }, buttonname: 'Agree and continue'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
