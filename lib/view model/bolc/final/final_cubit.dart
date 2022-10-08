import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'final_state.dart';

class FinalCubit extends Cubit<FinalState> {
  FinalCubit() : super(FinalInitial());
}
