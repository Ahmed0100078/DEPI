import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/counter/cubit/states.dart';

class CounterCubit extends Cubit<CounterStates>// logic
{
  CounterCubit() : super(CounterInitialState());

   static CounterCubit get(context) => BlocProvider.of(context);

  int counter = 1;

  String message = 'Can not do it';

  void minus() {

    if (counter > 0) {
      counter--;
      emit(CounterMinusState(counter));
    }else{print(message);
      emit(CounterErrorState(message));}
  }

  void plus()
  {
    counter++;
    emit(CounterPlusState(counter));
  }
}