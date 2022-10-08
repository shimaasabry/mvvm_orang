import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_orang/view/pages/support.dart';

import '../../view model/bolc/settings/settings_cubit.dart';
import '../../view model/bolc/settings/settings_state.dart';
import '../components/settings/listtile.dart';
import 'ourParernts.dart';

class settings_screan extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsCubit(),
      child: BlocConsumer<SettingsCubit, SettingsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SettingsCubit mycubit =SettingsCubit.get(context);
          return MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                centerTitle: true,
                title:
                Text('Settings',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),),
              ),
              body: Column(
                children: [
                  listtile('FAQ',context,Support_screan ()),
                  listtile('Terms & Conditions',context,Support_screan ()),
                  listtile('Our Parents',context,OurParents_screan ()),
                  listtile('Support',context,Support_screan ()),
                  listtile('Log Out',context,Support_screan ()),


                ],
              ),
              bottomNavigationBar: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                     Row(
                        children: [
             Icon(Icons.home_outlined,
             color: Colors.deepOrange,),
             Text('Home',
             )
                        ],
                      ),

                    Icon(Icons.newspaper),
                    Icon(Icons.settings,
                    color: Colors.deepOrange,),
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