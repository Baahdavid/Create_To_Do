// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mobile_int/create_todo.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:unicons/unicons.dart';

class HomePage extends StatelessWidget {
//a constructor

  const HomePage({Key? key}) : super(key: key);
//this portion is to out play the first function

  @override
  Widget build(BuildContext context) {
//this begins the code for the appbar (menu)
    return Scaffold(
      backgroundColor: const Color(0xFFF8fBFF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
//this is to add an img in a circle but the image is from an online source
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://lh3.googleusercontent.com/-Bia5jcuXmZw/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucmSnN4hwEdUerVspJD-ajS7Udmg7w/s128-c/photo.jpg'),

//online sourced img ends here

//locally sourced img
//backgroundImage: AssetImage('assets/1.jpg'),
          ),
        ),

        title: const Text(
          'My tasks',
          style: TextStyle(
              color: Color(0xFF25396f),
              fontSize: 25,
              fontWeight: FontWeight.w100),
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              UniconsLine.align_left,
              color: Color(0xFF25396f),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              UniconsLine.search,
              color: Color(0xFF25396f),
            ),
          ),
          const SizedBox(width: 100),
        ],
      ),
//end of appBar

//start of body
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(children: [
          // 1st card

          Card(
            elevation: 0,
            color: Colors.white,
            child: ListTile(
              leading: const Icon(
                Icons.check_circle_outline,
                color: Color(0xFFEE2EF3),
              ),
              title: const Text('Plan a trip to Finland',
                  style: TextStyle(
                      color: Color(0xFF25396f), fontWeight: FontWeight.bold)),
              subtitle: const Text(
                "The family's trip to Finland next summer",
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.notifications_outlined,
                    color: Color(0xFFEE2EF3),
                  ),
                  Text(
                    'Yesterday',
                    style: TextStyle(
                      color: Color(0xFFEE2EF3),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //2nd card

          Card(
            elevation: 0,
            color: Colors.white,
            child: ListTile(
              leading: const Icon(
                Icons.check_circle_outline,
                color: Color(0xFF4169E1),
              ),
              title: const Text("Plan Susan's birthday",
                  style: TextStyle(
                      color: Color(0xFF25396f), fontWeight: FontWeight.bold)),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.notifications_outlined,
                    color: Color(0xFF4169E1),
                  ),
                  Text(
                    'Today',
                    style: TextStyle(
                      color: Color(0xFF4169E1),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //3nd card

          Card(
            elevation: 0,
            color: Colors.white,
            child: ListTile(
              leading: const Icon(
                Icons.check_circle_outline,
                color: Color(0xFF4169E1),
              ),
              title: const Text(
                "Groceries for diner",
                style: TextStyle(
                    color: Color(0xFF25396f), fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "Get tomatoes, lecttuce, potatoes, green beens,cream and beef filet. Also buy red wine at John's wine shop",
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.notifications_outlined,
                    color: Color(0xFF4169E1),
                  ),
                  Text(
                    'Today 15:00',
                    style: TextStyle(
                      color: Color(0xFF4169E1),
                    ),
                  ),
                ],
              ),
            ),
          ),

//4nd card

          Card(
            elevation: 0,
            color: Colors.white,
            child: ListTile(
              leading: const Icon(
                Icons.check_circle_outline,
              ),
              title: const Text("Port's projects",
                  style: TextStyle(
                      color: Color(0xFF25396f), fontWeight: FontWeight.bold)),
              subtitle: const Text("Send the presentations to  Lilli"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.notifications_outlined,
                  ),
                  Text(
                    'Tomorrow',
                  ),
                ],
              ),
            ),
          ),

//5th card

          Card(
            elevation: 0,
            color: Colors.white,
            child: ListTile(
              leading: const Icon(
                Icons.check_circle_outline,
              ),
              title: const Text(
                "Take jackets to cleaning",
                style: TextStyle(
                    color: Color(0xFF25396f), fontWeight: FontWeight.bold),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.notifications_outlined,
                  ),
                  Text(
                    'Fri, 30 OCT',
                  ),
                ],
              ),
            ),
          ),

          //6th card

          Card(
            elevation: 0,
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.check_circle_outline,
              ),
              title: const Text(
                "Fix dad's PC",
                style: TextStyle(
                    color: Color(0xFF25396f), fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                  "Install the lastes updates and check your wireless connection"),
            ),
          ),

//card 7

          // Card(
          //   elevation: 0,
          //   color: Colors.white,
          //   child: ListTile(
          //     leading: const Icon(
          //       Icons.check_circle,
          //       color: Color(0xFF000000),
          //     ),
          //     title: const Text(
          //       "Completed",
          //       style: TextStyle(
          //           color: Color(0xFF25396f), fontWeight: FontWeight.bold),
          //     ),
          //     trailing: Row(
          //       mainAxisSize: MainAxisSize.min,
          //       children: const [
          //         Text(
          //           '25',
          //           style: TextStyle(
          //             color: Color(0xFF4169E1),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ]),
      ),


//floating buttom
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const CreateToDoView();
            }),
          );
        },
        child: const Icon(
          Icons.add_circle_rounded,
          size: 36,
        ),
      ),
//navigation
      bottomNavigationBar: InkWell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height:50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Row(
                children:[
                Icon(Icons.check_circle,color: Color(0xFF25396f),),
                  SizedBox(width: 20,),
                Text('Completed', style: TextStyle(color: Color(0xFF25396f), fontWeight: FontWeight.w500),),
                Icon(Icons.arrow_drop_down_sharp,color: Color(0xFF25396f),),
                ],
              ),
            Text('24'),],
          ),
                
),
        ),
      onTap: () {
          showBarModalBottomSheet(
            context: context,
            builder: (context) {
              
              return SafeArea(child: ListView(children: [
          // 1st completed card

          Card(
            elevation: 0,
            color: Colors.white,
            child: ListTile(
              leading: const Icon(
                Icons.check_circle_outline,
                color: Color(0xFFEE2EF3),
              ),
              title: const Text('Plan a trip to Finland',
                  style: TextStyle(
                      color: Color(0xFF25396f), fontWeight: FontWeight.bold)),
              subtitle: const Text(
                "we successfully planed the family trip and all were happy with the outcome",
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.notifications_outlined,
                    color: Color(0xFFEE2EF3),
                  ),
                  Text(
                    'Completed Yesterday',
                    style: TextStyle(
                      color: Color(0xFFEE2EF3),
                    ),
                  ),
                ],
              ),
            ),),], 
),
);
            },
          );
        },
      ),
    );
  }
}


