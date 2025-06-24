import 'package:chat_app/screen/Widget/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/screen/OTP/otp_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //  const LoginScreen({super.key});
  TextEditingController phoneController = TextEditingController();
  String selectedcountry = 'india';
  List<String> contries = ['India', 'America', 'Africa', 'Itely', 'Germany'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 15),
            UiHelper.CostomText(
              text: 'Enter your phone number',
              height: 18,
              color: Color(0xff00A884),
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 25),
            UiHelper.CostomText(
              text: 'WhatsApp will need to verify your phone',
              height: 14.0,
            ),
            UiHelper.CostomText(
              text: 'number. Carrier charges may apply.',
              height: 14.0,
            ),
            UiHelper.CostomText(
              text: ' What’s my number?',
              height: 14.0,
              color: Color(0xff00A884),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70),
              child: DropdownButtonFormField(
                elevation: 10,
                hint: Text('Select Your country'),
                items: contries.map((String country) {
                  return DropdownMenuItem(
                    value: country,
                    child: Text(country.toString()),
                  );
                }).toList(),
                onChanged: (newvalue) {
                  setState(() {
                    selectedcountry = newvalue!;
                  });
                },
              ),
            ),
            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 40,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: '+91',
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff00A884)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff00A884)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff00A884)),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                SizedBox(
                  width: 250,
                  child: TextField(
                    controller: phoneController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff00A884)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: UiHelper.CostomButton(
        callback: () {
          login(phoneController.text.toString());
        },
        buttonname: 'Next',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  login(String phonenumber) {
    if (phonenumber == "") {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Enter Phone Number'),
          backgroundColor: Colors.blue,
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OtpScreen(phonenumber: phonenumber),
        ),
      );
    }
  }
}
