part of 'my_bloc.dart';
class MyState {

  final int? count;

  MyState({ this.count});

  MyState copyWith({
    final int? count
  })=>MyState(count: count??this.count);
}

