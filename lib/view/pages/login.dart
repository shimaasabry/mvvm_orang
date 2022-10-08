import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_orang/view/components/core/custome_user.dart';

import '../../view model/bolc/login/login_cubit.dart';
import '../../view model/bolc/login/login_state.dart';

class LoginScrean extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      BlocProvider(
        create: (context) => LoginCubit(),
        child: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            LoginCubit Mycubit = LoginCubit.get(context);
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
                  padding: const EdgeInsets.all(30.0),

                  child: SingleChildScrollView(
                    child: BlocProvider(
                      create: (context) => LoginCubit(),
                      child: BlocConsumer<LoginCubit, LoginState>(
                        listener: (context, state) {
                          // TODO: implement listener
                        },
                        builder: (context, state) {
                          LoginCubit mycubit =LoginCubit.get(context);
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                'Login ',
                                // textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                                //   textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Custome_user(mycubit.emailCt,'email'),
                              const SizedBox(
                                height: 20,
                              ),
                              Custome_user(mycubit.passCt , "password"),
                              TextButton(onPressed: () {},
                                child: const Text(
                                  'Forgrot Password?',
                                  style: TextStyle(
                                    color: Colors.deepOrange,
                                  ),
                                ),),
                              const SizedBox(
                                height: 25,
                              ),
                              Container(
                                width: double.infinity,
                                color: Colors.deepOrange,
                                child: MaterialButton(
                                  onPressed: () {
                                    mycubit.login(context);
                                  },
                                  child: const Text(
                                    'Login',
                                    style: TextStyle(color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Divider(
                                      color: Colors.black,

                                    ),
                                  ),
                                  Text('OR',
                                    style: TextStyle(
                                      fontSize: 25,
                                    ),),
                                  Expanded(
                                    child: Divider(
                                      color: Colors.black,

                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Container(
                                width: double.infinity,
                                color: Colors.white,
                                child: MaterialButton(
                                  onPressed: () {

                                  },
                                  child: const Text(
                                    'Sign Up',
                                    style: TextStyle(color: Colors.deepOrange,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),),
                                ),
                              ),


                            ],
                          );
                        },
                      ),
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
