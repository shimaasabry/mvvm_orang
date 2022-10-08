import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view model/bolc/addNote/add_note_cubit.dart';
import '../../view model/bolc/addNote/add_note_state.dart';

class AddNote_screan extends StatelessWidget {

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
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                leading: IconButton(onPressed: () {}
                  , icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                  ),),
                centerTitle: true,
                title:
                Text('Add Note',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),),
              ),
              body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),

                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(

                        decoration: InputDecoration(

                          labelText: 'Date',

                          border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(15),

                          ),

                        ),

                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(60), // Added this
                          hintText: 'Note',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),

                          ),

                        ),

                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        // width: double.infinity,
                        color: Colors.grey,
                        child: MaterialButton(onPressed: () {},
                          child: Text('+ Add',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
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