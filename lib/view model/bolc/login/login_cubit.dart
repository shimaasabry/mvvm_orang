import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:mvvm_orang/model/login.dart';
import 'package:mvvm_orang/view%20model/database/network/dio_helper.dart';

import '../../../constant.dart';
import '../../../view/pages/home.dart';
import '../../../view/pages/login.dart';
import '../../database/network/end_points.dart';
import 'login_state.dart';

TextEditingController emailCt = TextEditingController();
TextEditingController passCt = TextEditingController();

LoginModel modelData = LoginModel();

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);
  TextEditingController emailCt = TextEditingController();
  TextEditingController passCt = TextEditingController();

  void login(context) {
    var json = {
      "email": emailCt.text.toString(),
      "password": passCt.text.toString(),
    };
    DioHelper.postData(url: loginEndPoint, data: json).then((value) {
      if (value.statusCode == 200) {
        modelData = LoginModel.fromJson(value.data);
        token = modelData!.data!.accessToken!.toString();
        if (token != "" || token.isNotEmpty || token != null) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DigitalCenter_screan()));
        }
      }
      ;
    });
  }
}
