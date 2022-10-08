import 'package:flutter/material.dart';

class NewsDetails extends StatelessWidget {
  const NewsDetails({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(image:
                AssetImage(
                  'assets/logo.png',
                ),
                  fit:
                  BoxFit.fitHeight,
                  height: 100,),
                Text('ODCs',
                  style: TextStyle(
                    fontWeight:FontWeight.bold ,
                    fontSize: 30,
                    color:Colors.black ,
                  ),),
                Text('2022-07-06',
                  style: TextStyle(
                    fontWeight:FontWeight.bold ,
                    fontSize: 10,
                    color:Colors.deepOrange ,
                  ),),
                Text('ODC Supports All Universities',
                  style: TextStyle(
                    fontWeight:FontWeight.bold ,
                    fontSize: 30,
                    color:Colors.black ,
                  ),),
              ],
            ),
          )

      ),
    );
  }
}
