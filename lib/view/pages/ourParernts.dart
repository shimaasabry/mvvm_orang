import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_orang/view/pages/settings.dart';

import '../../view model/bolc/addNote/add_note_cubit.dart';
import '../../view model/bolc/addNote/add_note_state.dart';

class OurParents_screan extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          AddNoteCubit Mycubit = AddNoteCubit.get(context);
          return MaterialApp(
            home: Scaffold(
              appBar: (
                  AppBar(elevation: 0,
                    backgroundColor:Colors.white ,
                    leading: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => settings_screan(),
                        )
                        );

                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,color: Colors.deepOrange,
                      ),
                    ),
                    centerTitle: true,
                    title: Text('Our Parents',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold ,
                        fontSize:30,
                      ),),
                  )
              ),
              body: Container(height: 300,
                padding: EdgeInsets.all(20),
                child: Card(
                  elevation: 10,
                  color: Colors.grey[350],
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 30,),
                          Text('ODCs',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),),
                        ],
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

                    ],
                  ),
                ),
              ),


            ),
          );
        },
      ),
    );
  }
}