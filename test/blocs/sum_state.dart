import 'package:built_value/built_value.dart';

part 'sum_state.g.dart';

abstract class SumState implements Built<SumState, SumStateBuilder> {
  factory SumState([
    void Function(SumStateBuilder) updates,
  ]) = _$SumState;

  SumState._();

  factory SumState.initial() {
    return SumState((b) => b..sum = 0);
  }

  int get sum;
}
