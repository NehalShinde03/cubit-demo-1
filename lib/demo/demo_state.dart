import 'package:equatable/equatable.dart';

class DemoState extends Equatable {

 final String name;

 const DemoState({this.name="nehal"});

  @override
  List<Object?> get props => [name];

  DemoState copyWith({String? name}){
   return DemoState(name: name ?? this.name);
  }
}