import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view model/bolc/addNote/add_note_cubit.dart';
import '../../view model/bolc/addNote/add_note_state.dart';
import '../../view model/bolc/news/news_cubit.dart';

class News_screan extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit(),
      child: BlocConsumer<NewsCubit, NewsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          NewsCubit Mycubit = NewsCubit.get(context);
          return MaterialApp(
            home: Scaffold(
            appBar: (
            AppBar(elevation: 0,
            backgroundColor:Colors.white ,
            centerTitle: true,
            title: Text('News',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold ,
              fontSize:30,
            ),),
            )
            ),
             body: InkWell(
               onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context) => NewsDetails()));
               },
               child: Container(height: 300,
                 padding: EdgeInsets.all(20),
                 child: Card(
                   elevation: 10,
                   color: Colors.grey[350],
                   child: Column(
                     children: [
                       ListTile(
                         title:
                       Text('ODCs',
                         style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.bold,
                           fontSize: 30,
                         ),),

                       trailing:
                       Padding(
                         padding: const EdgeInsets.only(top:15),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: [
                             Icon(Icons.share,
                               color: Colors.deepOrange,),
                             SizedBox(width: 10,),
                             Icon(Icons.copy_rounded,
                               color: Colors.deepOrange,)
                           ],
                         ),
                       ),

                     //   iconColor: ,
                       ),

                       Padding(
                         padding: const EdgeInsets.only(bottom: 50,top: 50),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text(' Orange ',
                             style: TextStyle(
                               color: Colors.deepOrange,
                               fontSize: 30,
                               fontWeight: FontWeight.bold
                             ),),
                             Text('Digital Center ',
                               style: TextStyle(
                                 color: Colors.black,
                                 fontSize: 30,
                                 fontWeight: FontWeight.bold
                             ),)
                           ],
                         ),
                       ),
                       Expanded(
                         child: Row(
                           children: [
                             Text('  ODCs Supports All Universties',

                               style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold,
                                 fontSize: 20,
                               ),),
                           ],
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
             ),

              bottomNavigationBar: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.home_outlined,
                          color: Colors.deepOrange,),
                        Text('Home',
                        )
                      ],
                    ),
                  ),

                  Icon(Icons.newspaper,color: Colors.deepOrange,),
                  Icon(Icons.settings,
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}