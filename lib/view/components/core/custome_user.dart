import 'package:flutter/material.dart';

Widget Custome_user(var controller,String  text){
  return TextFormField(
    controller: controller,
    decoration:  InputDecoration(
      labelText: text,
      border: OutlineInputBorder(

      ),
      prefixIcon: Icon(
        Icons.email,
      ),
    ),
  );
}