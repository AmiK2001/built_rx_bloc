// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sum_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SumState extends SumState {
  @override
  final int sum;

  factory _$SumState([void Function(SumStateBuilder)? updates]) =>
      (new SumStateBuilder()..update(updates)).build();

  _$SumState._({required this.sum}) : super._() {
    BuiltValueNullFieldError.checkNotNull(sum, 'SumState', 'sum');
  }

  @override
  SumState rebuild(void Function(SumStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SumStateBuilder toBuilder() => new SumStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SumState && sum == other.sum;
  }

  @override
  int get hashCode {
    return $jf($jc(0, sum.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SumState')..add('sum', sum))
        .toString();
  }
}

class SumStateBuilder implements Builder<SumState, SumStateBuilder> {
  _$SumState? _$v;

  int? _sum;
  int? get sum => _$this._sum;
  set sum(int? sum) => _$this._sum = sum;

  SumStateBuilder();

  SumStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sum = $v.sum;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SumState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SumState;
  }

  @override
  void update(void Function(SumStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SumState build() {
    final _$result = _$v ??
        new _$SumState._(
            sum: BuiltValueNullFieldError.checkNotNull(sum, 'SumState', 'sum'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
