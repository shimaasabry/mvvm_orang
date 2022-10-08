import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../constant.dart';
import '../../../model/exams.dart';
import '../../database/network/dio_helper.dart';
import '../../database/network/end_points.dart';

part 'midterms_state.dart';

class MidtermsCubit extends Cubit<MidtermsState> {
  MidtermsCubit() : super(MidtermsInitial());
  static MidtermsCubit get (context) => BlocProvider.of (context);
  ExsamsModel ? modelData;
  void getData(){
    DioHelper.getData(url: examsEndPoint,token: token).then((value) {
      if (value.statusCode==200){
        modelData=ExsamsModel.fromJson(value.data);
        emit(MidtermsGetData());
      }
    }
    );
  }
}
