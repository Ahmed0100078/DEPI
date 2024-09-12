abstract class CounterStates {}

class CounterInitialState extends CounterStates {}

class CounterPlusState extends CounterStates
{
  final int counter;

  CounterPlusState(this.counter);
}

class CounterMinusState extends CounterStates
{
  final int counter;

  CounterMinusState(this.counter);
}

class CounterErrorState extends CounterStates
{
  final String Messege;

  CounterErrorState(this.Messege);
}

class djffjkgfshkbsg extends CounterStates
{
}