import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_orang/view/components/home/card_Item.dart';
import 'package:mvvm_orang/view/pages/MidCalender.dart';
import 'package:mvvm_orang/view/pages/lectures.dart';
import 'package:mvvm_orang/view/pages/news.dart';
import 'package:mvvm_orang/view/pages/notes.dart';
import 'package:mvvm_orang/view/pages/sections.dart';
import 'package:mvvm_orang/view/pages/settings.dart';
import 'package:mvvm_orang/view/pages/support.dart';

import '../../view model/bolc/home/home_cubit.dart';
import 'midterms.dart';

class DigitalCenter_screan extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          HomeCubit mycubit = HomeCubit.get(context);
          return MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                centerTitle: true,
                title:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Orange ',
                      style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text('Digital Center',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),

              ),
              body: Padding(

                padding: EdgeInsets.all(30),
                child: Center(
                  // width: double.infinity,

                  child: Column(

                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     card_item('Lectures',Icons.menu_book_outlined , context , Lecture_screan()),
                       //todo replace null with new  screen
                      card_item('Sections',Icons.people_alt_sharp , context , Sections_screan())
                    ],
                  ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          card_item('Midterms',Icons.assignment , context , Midterms_screan()),
                          card_item('Final',Icons.assignment, context , Midterms_screan()),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          card_item('Events',Icons.calendar_month, context , MidCalender_screan()),
                          card_item('Notes',Icons.edit_note, context , Notes_screan()),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              bottomNavigationBar: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => Support_screan(),
                        // )
                        // );

                      },
                      child: Row(
                        children: [
                          Icon(Icons.home_outlined,
                            color: Colors.deepOrange,),
                          Text('Home',
                            style: TextStyle(
                                color: Colors.deepOrange
                            ),)
                        ],
                      ),
                    ),

                    InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => News_screan(),));

                        },
                        child: Icon(Icons.newspaper)),
                    InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => settings_screan(),));

                        },
                        child: Icon(Icons.settings)),
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