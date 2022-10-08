import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import '../../view model/bolc/addNote/add_note_cubit.dart';
import '../../view model/bolc/addNote/add_note_state.dart';

class MidCalender_screan extends StatelessWidget {

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
                    leading: Icon(
                      Icons.arrow_back_ios_new,color: Colors.deepOrange,
                    ),
                    centerTitle: true,
                    title: Text('Events',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold ,
                        fontSize:30,
                      ),),
                  )
              ),
              body:Column(
                children: [
                  SfCalendar(
                    view: CalendarView.month,
                    monthViewSettings: const MonthViewSettings(
                      agendaStyle: AgendaStyle(backgroundColor: Colors.deepOrange),
                        appointmentDisplayMode: MonthAppointmentDisplayMode.appointment),

                  )
                ],
              ),


            ),
          );
        },
      ),
    );
  }
}