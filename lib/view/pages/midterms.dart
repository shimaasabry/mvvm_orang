import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view model/bolc/lectures/lectures_cubit.dart';
import '../../view model/bolc/lectures/lectures_state.dart';
import '../../view model/bolc/midterms/midterms_cubit.dart';
import '../components/core/course_card.dart';

class Midterms_screan extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MidtermsCubit()..getData(),
      child: BlocConsumer<MidtermsCubit, MidtermsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          MidtermsCubit mycubit =MidtermsCubit .get(context);
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
                Text('Midterms',
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
                  child: mycubit.modelData == null ? Center(
                    child: CircularProgressIndicator(strokeWidth:2.5,
                      color: Colors.deepOrange,),
                  ) : ListView.builder(
                    itemCount: mycubit.modelData!.data!.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: course_card(
                            mycubit.modelData!.data![index].examSubject
                                .toString(),
                            mycubit.modelData!.data![index].examStartTime
                                .toString(),
                            mycubit.modelData!.data![index].examEndTime
                                .toString()),
                      );
                    },
                  )
              ),
            ),
          );
        },
      ),
    );
  }
}