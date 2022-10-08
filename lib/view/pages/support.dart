import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_orang/view/pages/settings.dart';

import '../../view model/bolc/support/support_cubit.dart';
import '../../view model/bolc/support/support_state.dart';

class Support_screan extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SupportCubit(),
      child: BlocConsumer<SupportCubit, SupportState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SupportCubit mycubit = SupportCubit.get(context);
          return MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                leading: IconButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => settings_screan(),
                  )
                  );
                }
                  , icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.deepOrange,
                  ),
                ),
                centerTitle: true,
                title:
                Text('Support',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),),
              ),
              body: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(

                  children: [

                    TextFormField(

                      decoration: InputDecoration(

                        prefixIcon: Icon(

                          Icons.person,

                        ),

                        hintText: 'Name',

                        border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(15),

                          borderSide: BorderSide(

                            width: 20,

                          ),

                        ),

                      ),

                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(

                      decoration: InputDecoration(

                        prefixIcon: Icon(

                          Icons.email,

                        ),

                        hintText: 'E-Mail',

                        border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(15),

                          borderSide: BorderSide(

                            width: 20,

                          ),

                        ),

                      ),

                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
//textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(60), // Added this
                        // isDense: true,

                        hintText: 'What\'s making you unhappy ?',

                        border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(15),

                          // borderSide: BorderSide(
                          //
                          //   width: 20,
                          //
                          // ),

                        ),

                      ),

                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.deepOrange,
                      child: MaterialButton(onPressed: () {},

                        child: Text('Submit',
                          style: TextStyle(
                            color: Colors.white,
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
          );
        },
      ),
    );
  }
}