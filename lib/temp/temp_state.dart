import 'package:equatable/equatable.dart';

class TempState extends Equatable {

  final String name;

  const TempState({this.name="Mustang"});

  @override
  List<Object?> get props => [name];

  TempState copyWith({String? name}){
    return TempState(name: name ?? this.name);
  }

}
