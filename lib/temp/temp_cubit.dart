import 'package:bloc/bloc.dart';
import 'package:cubit_demo1/temp/temp_state.dart';

class TempCubit extends Cubit<TempState> {
  TempCubit(super.initialState);

  setName({String? name}){
    emit(state.copyWith(name: name));
  }

}
