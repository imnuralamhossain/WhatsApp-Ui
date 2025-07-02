import 'dart:io';

import 'package:chat_app/screen/Widget/uihelper.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  //const ProfileScreen({super.key});
  TextEditingController nameController = TextEditingController();

  File? pickedimage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            UiHelper.CostomText(
              text: 'Profile info',
              height: 20,
              color: Color(0xff00A884),
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 30),
            UiHelper.CostomText(
              text: 'Please provide your name and an optional',
              height: 16,
            ),
            UiHelper.CostomText(text: 'profile photo', height: 16),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                _openBottom(context);
              },
              child: pickedimage==null? CircleAvatar(
                radius: 90,
                backgroundColor: Color(0xffa9afb8),
                child: Image.asset(
                  'asset/images/camera.png',
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ):CircleAvatar(
                radius: 90,
                backgroundImage: FileImage(pickedimage!),
              )
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: 'Type your name here',
                      hintStyle: TextStyle(color: Color(0xff5E5E5E)),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff05aa82)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff05aa82)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff05aa82)),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Image.asset('asset/images/happyface.png'),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CostomButton(
        callback: () {},
        buttonname: 'Naxt',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _openBottom(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      _pickImage(ImageSource.camera);
                    },
                    icon: Icon(Icons.camera, size: 50, color: Colors.grey),
                  ),
                  IconButton(
                    onPressed: () {
                      _pickImage(ImageSource.gallery);
                    },
                    icon: Icon(Icons.image, size: 50, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  _pickImage(ImageSource imagesource) async {
    try {
      final photo = await ImagePicker().pickImage(source: (imagesource));
      if (photo == null) return;
      final tempimage = File(photo.path);
      setState(() {
        pickedimage = tempimage;
      });
    } catch (ex) {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(ex.toString()),
          backgroundColor: Color(0xff00A884),
        ),
      );
    }
  }
}
