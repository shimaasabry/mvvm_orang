import 'package:flutter/material.dart';

Widget card_item(String s,IconData i , context , Widget Screen ){

  return Container(
    width: 150, height: 150,
    padding: EdgeInsets.all(20),
    child: InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Screen,));
      },
      child: Card(
        elevation: 20,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //   SizedBox(height: 70,width: 150,),
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey[300],
              child: Icon(i,
                color: Colors.deepOrange,),
            ),
            Text( s,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.deepOrange,
              ),),
          ],
        ),
      ),
    ),
  );
}