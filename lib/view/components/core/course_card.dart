import 'package:flutter/material.dart';

Widget course_card(String course_name,String start_time,String end_time){
  return Card(
    //  margin: EdgeInsets.all(25),
    elevation: 10,
    child: Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.all(10),

          title:
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // SizedBox(height: 50,),
              Text(course_name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //  SizedBox(width: 200,),
              Row(
                children: [
                  Icon(Icons.timer),
                  Text('2hrs'),
                ],
              ),


            ],
          ),

          subtitle: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lecture Day',
                    //textAlign: TextAlign.left,
                  ),
                  Text(
                    'Start time',
                    // textAlign: TextAlign.center,
                  ),
                  Text(
                    'End time',
                    // textAlign: TextAlign.right,
                  ),
                ],
              ),
              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.calendar_month_outlined,
                    color: Colors.black,),
                  Text('Wednesday',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Icon(Icons.access_time_filled,
                    color: Colors.green,),
                  Text(start_time, style:
                  TextStyle(
                    color: Colors.black,
                  ),
                  ),

                  Icon(Icons.access_time_filled,
                    color: Colors.redAccent,),
                  Text(end_time,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),

                ],),
            ],
          ),


        ),

      ],
    ),
  );
}