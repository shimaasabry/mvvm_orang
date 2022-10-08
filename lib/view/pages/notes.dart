import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_orang/view/pages/addNote.dart';

import '../../view model/bolc/notes/notes_cubit.dart';
import '../../view model/bolc/notes/notes_state.dart';

class Notes_screan extends StatelessWidget {
  const Notes_screan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: BlocConsumer<NotesCubit,NotesState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          NotesCubit Mycubit =NotesCubit.get(context);
          return MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                centerTitle: true,
                leading: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                ),
                title: Text('Notes',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),),
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('There\'s No Data To Show'
                        , style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    MaterialButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AddNote_screan()));
                    },
                      child: Icon(Icons.add),
                    elevation: 10,
                    color: Colors.deepOrange,
                      shape: CircleBorder(),
                    )
                  ],),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

