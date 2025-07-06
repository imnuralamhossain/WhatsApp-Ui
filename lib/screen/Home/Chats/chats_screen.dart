import 'package:chat_app/screen/Widget/uihelper.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  var arrContent = [
    {
      "images":
          "https://www.google.com/imgres?q=person%20image&imgurl=https%3A%2F%2Fimg.freepik.com%2Ffree-photo%2Fwaist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg%3Fsemt%3Dais_items_boosted%26w%3D740&imgrefurl=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Fperson%27&docid=AQP2Sk52NwGPPM&tbnid=07ycBhEENZ9qIM&vet=12ahUKEwjQr9aBrKOOAxWJUGwGHb58BfQQM3oECFYQAA..i&w=740&h=493&hcb=2&ved=2ahUKEwjQr9aBrKOOAxWJUGwGHb58BfQQM3oECFYQAA",
      "name": "Rahul",
      "lastmsg": "Hello Bro",
      "time": "05:45 am",
      "msg": "7",
    },
    {
      "images":
"https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fperson&psig=AOvVaw1IMHLLnsdLo7KZ8oRhTMGe&ust=1751896150691000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCJCg6fCvqI4DFQAAAAAdAAAAABAE",      "name": "aron",
      "lastmsg": "Lorem ipsum dolor sit",
      "time": "06:45 am",
      "msg": "7",
    },
    {
      "images":
          "https://www.google.com/imgres?q=person%20image&imgurl=https%3A%2F%2Ft4.ftcdn.net%2Fjpg%2F02%2F82%2F72%2F09%2F360_F_282720917_7ZtAfEqEfA6CRT66imV9avGWXEg9w6Jt.jpg&imgrefurl=https%3A%2F%2Fpikwizard.com%2Fs%2Fphoto%2Fsmiling-person%2F&docid=jXkoiUXVqjhLHM&tbnid=4azj3_LUDHj93M&vet=12ahUKEwjQr9aBrKOOAxWJUGwGHb58BfQQM3oECGkQAA..i&w=540&h=360&hcb=2&ved=2ahUKEwjQr9aBrKOOAxWJUGwGHb58BfQQM3oECGkQAA",
      "name": "aron",
      "lastmsg": "Flutte",
      "time": "07:45 am",
      "msg": "2",
    },
    {
      "images":
      "https://www.google.com/imgres?q=person%20image&imgurl=https%3A%2F%2Fimg.freepik.com%2Ffree-photo%2Fwaist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg%3Fsemt%3Dais_items_boosted%26w%3D740&imgrefurl=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Fperson%27&docid=AQP2Sk52NwGPPM&tbnid=07ycBhEENZ9qIM&vet=12ahUKEwjQr9aBrKOOAxWJUGwGHb58BfQQM3oECFYQAA..i&w=740&h=493&hcb=2&ved=2ahUKEwjQr9aBrKOOAxWJUGwGHb58BfQQM3oECFYQAA",
      "name": "Rahul",
      "lastmsg": "Hello Bro",
      "time": "05:45 am",
      "msg": "7",
    },
    {
      "images":
      "https://www.google.com/imgres?q=person%20image&imgurl=https%3A%2F%2Fcdn1.iconfinder.com%2Fdata%2Ficons%2Fbokbokstars-121-classic-stock-icons-1%2F512%2Fperson-man.png&imgrefurl=https%3A%2F%2Fwww.iconfinder.com%2Ficons%2F1120619%2Fbusinessman_client_man_manager_person_icon&docid=jCyLrxzPDBAWXM&tbnid=l74HQWJnHDHvqM&vet=12ahUKEwjQr9aBrKOOAxWJUGwGHb58BfQQM3oECGIQAA..i&w=512&h=512&hcb=2&ved=2ahUKEwjQr9aBrKOOAxWJUGwGHb58BfQQM3oECGIQAA",
      "name": "aron",
      "lastmsg": "Lorem ipsum dolor sit",
      "time": "06:45 am",
      "msg": "7",
    },
    {
      "images":
      "https://www.google.com/imgres?q=person%20image&imgurl=https%3A%2F%2Ft4.ftcdn.net%2Fjpg%2F02%2F82%2F72%2F09%2F360_F_282720917_7ZtAfEqEfA6CRT66imV9avGWXEg9w6Jt.jpg&imgrefurl=https%3A%2F%2Fpikwizard.com%2Fs%2Fphoto%2Fsmiling-person%2F&docid=jXkoiUXVqjhLHM&tbnid=4azj3_LUDHj93M&vet=12ahUKEwjQr9aBrKOOAxWJUGwGHb58BfQQM3oECGkQAA..i&w=540&h=360&hcb=2&ved=2ahUKEwjQr9aBrKOOAxWJUGwGHb58BfQQM3oECGkQAA",
      "name": "aron",
      "lastmsg": "Flutte",
      "time": "07:45 am",
      "msg": "2",
    },
    {
      "images":
      "https://www.google.com/imgres?q=person%20image&imgurl=https%3A%2F%2Fimg.freepik.com%2Ffree-photo%2Fwaist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg%3Fsemt%3Dais_items_boosted%26w%3D740&imgrefurl=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Fperson%27&docid=AQP2Sk52NwGPPM&tbnid=07ycBhEENZ9qIM&vet=12ahUKEwjQr9aBrKOOAxWJUGwGHb58BfQQM3oECFYQAA..i&w=740&h=493&hcb=2&ved=2ahUKEwjQr9aBrKOOAxWJUGwGHb58BfQQM3oECFYQAA",
      "name": "Rahul",
      "lastmsg": "Hello Bro",
      "time": "05:45 am",
      "msg": "7",
    },
    {
      "images":
      "https://www.google.com/imgres?q=person%20image&imgurl=https%3A%2F%2Fcdn1.iconfinder.com%2Fdata%2Ficons%2Fbokbokstars-121-classic-stock-icons-1%2F512%2Fperson-man.png&imgrefurl=https%3A%2F%2Fwww.iconfinder.com%2Ficons%2F1120619%2Fbusinessman_client_man_manager_person_icon&docid=jCyLrxzPDBAWXM&tbnid=l74HQWJnHDHvqM&vet=12ahUKEwjQr9aBrKOOAxWJUGwGHb58BfQQM3oECGIQAA..i&w=512&h=512&hcb=2&ved=2ahUKEwjQr9aBrKOOAxWJUGwGHb58BfQQM3oECGIQAA",
      "name": "aron",
      "lastmsg": "Lorem ipsum dolor sit",
      "time": "06:45 am",
      "msg": "7",
    },
    {
      "images":
      "https://www.google.com/imgres?q=person%20image&imgurl=https%3A%2F%2Ft4.ftcdn.net%2Fjpg%2F02%2F82%2F72%2F09%2F360_F_282720917_7ZtAfEqEfA6CRT66imV9avGWXEg9w6Jt.jpg&imgrefurl=https%3A%2F%2Fpikwizard.com%2Fs%2Fphoto%2Fsmiling-person%2F&docid=jXkoiUXVqjhLHM&tbnid=4azj3_LUDHj93M&vet=12ahUKEwjQr9aBrKOOAxWJUGwGHb58BfQQM3oECGkQAA..i&w=540&h=360&hcb=2&ved=2ahUKEwjQr9aBrKOOAxWJUGwGHb58BfQQM3oECGkQAA",
      "name": "aron",
      "lastmsg": "Flutte",
      "time": "07:45 am",
      "msg": "2",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 5),
          Expanded(
            child: ListView.builder(
              itemCount: arrContent.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      arrContent[index]["images"].toString(),
                    ),
                  ),
                  title: UiHelper.CostomText(
                    text: arrContent[index]["name"].toString(),
                    height: 16,
                    color: Color(0xff000000),
                    fontweight: FontWeight.bold,
                  ),
                  subtitle: UiHelper.CostomText(
                    text: arrContent[index]["lastmsg"].toString(),
                    height: 14,
                    color: Color(0xff889095),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UiHelper.CostomText(
                        text: arrContent[index]['time'].toString(),
                        height: 12,
                        color: Color(0xff026500),
                        fontweight: FontWeight.bold,
                      ),
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: Color(0xff026500),
                        child: UiHelper.CostomText(
                          text: arrContent[index]["msg"].toString(),
                          height: 10,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),

      floatingActionButton: CircleAvatar(
        radius: 30,
        backgroundColor: Color(0xff008665),
        child: Image.asset('asset/images/comment.png'),
      ),
    );
  }
}
