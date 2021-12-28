import 'package:test/test.dart';

import 'blocs/sum_bloc.dart';

void main() {
  test('Sum bloc', () {
    final sumBloc = SumBloc();
    sumBloc.sum(20, 5);

    expect(sumBloc.state.sum, equals(20 + 5));
  });
}
