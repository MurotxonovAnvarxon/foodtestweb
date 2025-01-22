import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'my_event.dart';

part 'my_state.dart';

class MyBloc extends Bloc<MyEvent, MyState> {
  MyBloc() : super(MyState()) {
    int count = 0;
    on<AddEvent>((event, emit) async {
      count++;
      print(count);
      emit(state.copyWith(count: count));
    });
  }
}
