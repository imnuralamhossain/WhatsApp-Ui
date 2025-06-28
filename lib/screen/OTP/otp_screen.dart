import 'package:chat_app/screen/Profile/profile_screen.dart';
import 'package:chat_app/screen/Widget/uihelper.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  String phonenumber;
  OtpScreen({super.key, required this.phonenumber});
  TextEditingController otp1controller = TextEditingController();
  TextEditingController otp2controller = TextEditingController();
  TextEditingController otp3controller = TextEditingController();
  TextEditingController otp4controller = TextEditingController();
  TextEditingController otp5controller = TextEditingController();
  TextEditingController otp6controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 15),
            UiHelper.CostomText(
              text: 'Verifying your number',
              height: 20,
              fontweight: FontWeight.bold,
              color: Color(0xff00A884),
            ),
            SizedBox(height: 30),
            UiHelper.CostomText(
              text: 'You’ve tried to register +91$phonenumber',
              height: 15,
            ),
            UiHelper.CostomText(
              text: 'recently. Wait before requesting an sms or a call.',
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CostomText(text: ' with your code.', height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: UiHelper.CostomText(
                    text: ' Wrong number?',
                    height: 15,
                    color: Color(0xff00A884),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomContainer(otp1controller),
                SizedBox(width: 10),
                UiHelper.CustomContainer(otp2controller),
                SizedBox(width: 10),
                UiHelper.CustomContainer(otp3controller),
                SizedBox(width: 10),
                UiHelper.CustomContainer(otp4controller),
                SizedBox(width: 10),
                UiHelper.CustomContainer(otp5controller),
                SizedBox(width: 10),
                UiHelper.CustomContainer(otp6controller),
              ],
            ),
            SizedBox(height: 30),
            UiHelper.CostomText(
              text: 'Didn’t receive code?',
              height: 16,
              color: Color(0xff00A884),
              fontweight: FontWeight.bold,
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CostomButton(
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProfileScreen(),
            ),
          );
        },
        buttonname: 'Next',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
