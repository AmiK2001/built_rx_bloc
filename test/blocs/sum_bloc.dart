import 'package:built_rx_bloc/built_rx_bloc.dart';

import 'sum_state.dart';

class SumBloc extends BuiltRxBloc<SumState, SumStateBuilder> {
  SumBloc() : super(SumState.initial());

  void sum(int first, int second) {
    updateState((b) => b..sum = (first + second).toInt());
  }
}
