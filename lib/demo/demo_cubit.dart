import 'package:cubit_demo1/demo/demo_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DemoCubit extends Cubit<DemoState> {
  DemoCubit(super.initialState);

  changeName({String? name}){
    emit(state.copyWith(name: name));
  }

}
