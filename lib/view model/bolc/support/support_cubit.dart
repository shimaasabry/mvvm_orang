import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:mvvm_orang/view%20model/bolc/support/support_state.dart';


class SupportCubit extends Cubit<SupportState> {
  SupportCubit() : super(SupportInitial());
  static SupportCubit get(context)=>BlocProvider.of(context);


}
