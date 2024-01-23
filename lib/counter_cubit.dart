import 'package:basketball_counter_app/cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(IncrementBState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void incrementTeam(String team,int buttonNumber)
  {
    if(team == "A")
    {
      teamAPoints +=buttonNumber;
      emit(IncrementAState());
    }else
    {
      teamBPoints +=buttonNumber;
      emit(IncrementBState());
    }
  }
  void reset(int number)
  {
    teamAPoints = number;
    teamBPoints = number;
    emit(ResetState());
  }
}
