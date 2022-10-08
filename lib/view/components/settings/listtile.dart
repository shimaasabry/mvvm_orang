import 'package:flutter/material.dart';

Widget listtile(String name,context,Widget Screen){
  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Screen,));

    },
    child: ListTile(

      title: Text(name),
      trailing: Icon(Icons.arrow_forward_ios_rounded),

    ),
  );
}