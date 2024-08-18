import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_tracking_app/presentation/home/bloc/board_column_bloc/board_column_event.dart';
import 'package:time_tracking_app/presentation/home/bloc/board_column_bloc/board_column_state.dart';

class BoardColumnBloc extends Bloc<BoardColumnEvent, BoardColumnState> {
  BoardColumnBloc() : super(const BoardColumnInitialState()) {
    on<BoardColumnUpdateEvent>(onBoardColumnUpdate);
  }

  void onBoardColumnUpdate(BoardColumnUpdateEvent boardColumnUpdateEvent, Emitter<BoardColumnState> emitter) {
    emitter(BoardColumnUpdateState(tasks: boardColumnUpdateEvent.tasks));
  }
}
