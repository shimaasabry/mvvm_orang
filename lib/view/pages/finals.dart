import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view model/bolc/lectures/lectures_cubit.dart';
import '../../view model/bolc/lectures/lectures_state.dart';
import '../components/core/course_card.dart';

class Finals_screan extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LecturesCubit(),
      child: BlocConsumer<LecturesCubit, LecturesState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          LecturesCubit mycubit =LecturesCubit .get(context);
          return MaterialApp(
            home:
            Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                leading: IconButton(onPressed: () {}
                  , icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.deepOrange,
                  ),),
                centerTitle: true,
                title:
                Text('Finals',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),),
                actions: [
                  IconButton(onPressed: () {}
                    , icon: Icon(
                      Icons.filter_list_alt
                      , color: Colors.deepOrange,
                    ),),
                ],
              ),
              body: Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                ),
                child: SingleChildScrollView(
                  child: Column(

                    children: [
                      course_card('Flutter','12:00pm','2:00pm'),
                      SizedBox(height: 20,),
                      course_card('React','12:00pm','2:00pm'),

                      SizedBox(height: 20,),
                      course_card('Vue','2:00pm','4:00pm'),
                      SizedBox(height: 20,),
                      course_card('Flutter','12:00pm','2:00pm'),
                      SizedBox(height: 20,),
                      course_card('React','12:00pm','2:00pm'),




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