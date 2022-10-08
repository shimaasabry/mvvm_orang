import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:mvvm_orang/model/sections.dart';
import 'package:mvvm_orang/view%20model/database/network/dio_helper.dart';
import 'package:mvvm_orang/view%20model/database/network/end_points.dart';

import '../../../constant.dart';

part 'sections_state.dart';

class SectionsCubit extends Cubit<SectionsState> {
  SectionsCubit() : super(SectionsInitial());
  static SectionsCubit get(context)=>BlocProvider.of(context);
SectionsModel ? modelData;
void getData(){
  DioHelper.getData(url:userSectionsEndPoint,token: token).then((value)
  {
    if(value.statusCode==200){
      modelData=SectionsModel.fromJson(value.data);
      emit(SectionsGetData());
    }
  }
  );
}
}
