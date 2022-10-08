import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view model/bolc/register/register_cubit.dart';


class Register_screan extends StatelessWidget {
  const Register_screan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          RegisterCubit Mycubit =RegisterCubit.get(context);
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
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),

                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Name',
                          border: OutlineInputBorder(

                          ),
                        ),
                      ),
                      SizedBox(height: 15,),

                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'E-Mail',
                          border: OutlineInputBorder(

                          ),
                        ),
                      ),
                      SizedBox(height: 15,),

                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(

                          ),
                        ),
                      ),
                      SizedBox(height: 15,),

                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Verify password',
                          border: OutlineInputBorder(

                          ),
                        ),
                      ),
                      SizedBox(height: 15,),

                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'phone Number',
                          border: OutlineInputBorder(

                          ),
                        ),
                      ),
                      SizedBox(height: 15,),

                      Container(
                        width: double.infinity,
                        color: Colors.deepOrange,
                        child: MaterialButton(
                          onPressed: () {},
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
                          onPressed: () {},
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(color: Colors.deepOrange,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),),
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
