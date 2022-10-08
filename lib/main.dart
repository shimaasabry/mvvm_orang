
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_orang/view%20model/database/network/dio_helper.dart';
import 'package:mvvm_orang/view%20model/database/network/end_points.dart';
import 'package:mvvm_orang/view/pages/MidCalender.dart';
import 'package:mvvm_orang/view/pages/addNote.dart';
import 'package:mvvm_orang/view/pages/finals.dart';
import 'package:mvvm_orang/view/pages/home.dart';
import 'package:mvvm_orang/view/pages/lectures.dart';
import 'package:mvvm_orang/view/pages/login.dart';
import 'package:mvvm_orang/view/pages/midterms.dart';
import 'package:mvvm_orang/view/pages/news.dart';
import 'package:mvvm_orang/view/pages/notes.dart';
import 'package:mvvm_orang/view/pages/ourParernts.dart';
import 'package:mvvm_orang/view/pages/register.dart';
import 'package:mvvm_orang/view/pages/sections.dart';
import 'package:mvvm_orang/view/pages/settings.dart';
import 'package:mvvm_orang/view/pages/support.dart';

import 'model/login.dart';

Future<void> main() async {
  await DioHelper.init();
runApp(LoginScrean());
}
