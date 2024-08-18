import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:time_tracking_app/presentation/home/bloc/board_column_bloc/board_column_bloc.dart';
import 'package:time_tracking_app/presentation/home/bloc/board_column_bloc/board_column_event.dart';
import 'package:time_tracking_app/presentation/home/bloc/board_column_bloc/board_column_state.dart';

import '../../../../utils/constants.dart';

void main() {
  late BoardColumnBloc boardColumnBloc;

  setUp(() {
    boardColumnBloc = BoardColumnBloc();
  });

  test('Test initial state is BoardColumnInitialState', () {
    expect(boardColumnBloc.state, const BoardColumnInitialState());
  });

  blocTest<BoardColumnBloc, BoardColumnState>(
    'should emit [BoardColumnUpdateState] when column tasks changes',
    build: () {
      return boardColumnBloc;
    },
    act: (bloc) => bloc.add(const BoardColumnUpdateEvent(tasks: TestConstants.kTaskEntitiesTest)),
    expect: () => [
      const BoardColumnUpdateState(tasks: TestConstants.kTaskEntitiesTest),
    ],
  );
}
