import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_orang/model/lectures.dart';
import 'package:mvvm_orang/view%20model/database/network/dio_helper.dart';
import '../../../constant.dart';
import '../../database/network/end_points.dart';
import 'lectures_state.dart';


class LecturesCubit extends Cubit<LecturesState> {
  LecturesCubit() : super(LecturesInitial());
  static LecturesCubit get (context) => BlocProvider.of (context);
  LecturesModel ? modelData;
  void getData(){
    DioHelper.getData(url: lectureEndPoint,token: token).then((value) {
    if (value.statusCode==200){
      modelData=LecturesModel.fromJson(value.data);
      emit(LecturesDataGet());
    }
    }
    );
  }
}
