import 'package:chat_app/screen/Home/home_screen.dart';
import 'package:chat_app/screen/Splash/splah_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff00A884),),
        useMaterial3: false
      ),
      home: HomeScreen()
    );
  }
}


    
    
    
    
    
    
     /* home: Scaffold(
        //Appbar
        appBar: AppBar(

          leading: Icon(Icons.menu_rounded),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(Icons.account_circle_outlined),
            ),

          ],
          
        ),

        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Text('''SEARCH FOR
RECIPES''',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ],
              )
            ),


            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                 prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(360),

                  )
              
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,

                  child: Text('Recommended',style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20),)),
            ),
            //Recommended container
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 20,),
                  child: Container(
                    height: 200.0,
                    width: 120.0,

                    decoration: BoxDecoration(
                      color: Colors.brown.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: CircleAvatar(
                            child: Icon(Icons.add_business_outlined),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Text('Hamburg',style: TextStyle(
                              color: Colors.brown.shade600,
                              fontWeight: FontWeight.bold),),
                        ),
                        Text('21 Dollar',style: TextStyle(
                          color: Colors.brown.shade600,
                        ),),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 20,),
                  child: Container(
                    height: 200.0,
                    width: 120.0,

                    decoration: BoxDecoration(
                      color: Colors.blue.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: CircleAvatar(
                            child: Icon(Icons.add_chart_sharp),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Text('Chips',style: TextStyle(
                              color: Colors.brown.shade600,
                              fontWeight: FontWeight.bold),),
                        ),
                        Text('15 Dollar',style: TextStyle(
                          color: Colors.brown.shade600,
                        ),),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 20,),
                  child: Container(
                    height: 200.0,
                    width: 120.0,

                    decoration: BoxDecoration(
                      color: Colors.green.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: CircleAvatar(
                            child: Icon(Icons.account_balance_outlined),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Text('Chips Burger',style: TextStyle(
                              color: Colors.brown.shade600,
                              fontWeight: FontWeight.bold),),
                        ),
                        Text('25 Dollar',style: TextStyle(
                          color: Colors.brown.shade600,
                        ),),
                      ],
                    ),
                  ),
                ),
                 
              ],
            ),

            //featured
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 20),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('FEATURED',style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 15,
                  ),),),
            ),
            //Deltchips hot dog
            Container(
              height: 80,
              width: double.infinity,

              child: Row(
                children: [
                SizedBox(width: 20,),


                   Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.pink[200],
                        borderRadius: BorderRadius.circular(20.0),
                        

                      ),
                     child: Icon(Icons.food_bank_outlined,size: 50,),
                    ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Deltchips hot dog',style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold,
                      ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star_rounded,color: Colors.orange,),
                          Icon(Icons.star_rounded,color: Colors.orange,),
                          Icon(Icons.star_rounded,color: Colors.orange,),
                          Icon(Icons.star_rounded,color: Colors.orange,),
                        ],
                      ),
                      Text('6 Dollor')

                    ],
                  ),
                ),
                  Padding(
                    padding: const EdgeInsets.only(left: 165),
                    child: Icon(Icons.add_circle_outlined,color: Colors.pink[200],size: 50),
                  )


                ],
              ),
            ),
            //Deltchips hot dog
            Container(
              height: 80,
              width: double.infinity,

              child: Row(
                children: [
                  SizedBox(width: 20,),


                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.pink[200],
                      borderRadius: BorderRadius.circular(20.0),


                    ),
                    child: Icon(Icons.food_bank_outlined,size: 50,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Deltchips hot dog',style: TextStyle(
                          fontSize: 20,fontWeight: FontWeight.bold,
                        ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star_rounded,color: Colors.orange,),
                            Icon(Icons.star_rounded,color: Colors.orange,),
                            Icon(Icons.star_rounded,color: Colors.orange,),
                            Icon(Icons.star_rounded,color: Colors.orange,),
                          ],
                        ),
                        Text('6 Dollor')

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 165),
                    child: Icon(Icons.add_circle_outlined,color: Colors.pink[200],size: 50),
                  )


                ],
              ),
            ),
            //Deltchips hot dog
            Container(
              height: 80,
              width: double.infinity,

              child: Row(
                children: [
                  SizedBox(width: 20,),


                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.pink[200],
                      borderRadius: BorderRadius.circular(20.0),


                    ),
                    child: Icon(Icons.food_bank_outlined,size: 50,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Deltchips hot dog',style: TextStyle(
                          fontSize: 20,fontWeight: FontWeight.bold,
                        ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star_rounded,color: Colors.orange,),
                            Icon(Icons.star_rounded,color: Colors.orange,),
                            Icon(Icons.star_rounded,color: Colors.orange,),
                            Icon(Icons.star_rounded,color: Colors.orange,),
                          ],
                        ),
                        Text('6 Dollor')

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 165),
                    child: Icon(Icons.add_circle_outlined,color: Colors.pink[200],size: 50),
                  )


                ],
              ),
            ),
            //Deltchips hot dog

          ],
        ),


      ),
      
    );
  }
}

      */

