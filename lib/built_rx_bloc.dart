import 'dart:async';

import 'package:built_rx_bloc/utils/extensions/string_extensions.dart';
import 'package:built_value/built_value.dart';
import 'package:rxdart/rxdart.dart';

abstract class BuiltRxBloc<TState extends Built<TState, TStateBuilder>,
    TStateBuilder extends Builder<TState, TStateBuilder>> {
  BuiltRxBloc(this._initialState, {this.debug = false}) {
    addState(_initialState);

    init();
  }

  bool debug;
  final stateTag = (TState).toString().toSnakecase();

  final TState _initialState;
  final _stateSubject = BehaviorSubject<TState>();
  final _subscriptions = CompositeSubscription();

  Stream<TState> get stateStream => _stateSubject.stream;

  TState get state => _stateSubject.value;

  TState get initialState => _initialState;

  Future<void> init() {
    return Future.value();
  }

  void dispose() {
    _stateSubject.close();
    _subscriptions.dispose();
  }

  void addState(TState state) {
    if (!_stateSubject.isClosed) {
      _stateSubject.add(state);
    }
  }

  void updateState(Function(TStateBuilder b) updates) {
    addState(state.rebuild(updates));
  }

  StreamSubscription addSubscription(StreamSubscription streamSubscription) {
    return _subscriptions.add(streamSubscription);
  }
}
