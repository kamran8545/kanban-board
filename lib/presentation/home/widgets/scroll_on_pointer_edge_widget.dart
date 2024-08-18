import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/constants.dart';
import '../bloc/get_all_tasks_bloc/get_all_tasks_bloc.dart';
import '../bloc/get_all_tasks_bloc/get_all_tasks_state.dart';
import 'board_column_widget.dart';

//ignore: must_be_immutable
class ScrollOnPointerEdgeWidget extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  bool _isScrolling = false;
  double _scrollSpeed = 10.0;
  final double _edgeThreshold = 50.0;
  final double _scrollIncrement = 15.0;

  ScrollOnPointerEdgeWidget({super.key});

  void _startScrolling() async {
    if (_isScrolling) return;

    _isScrolling = true;
    while (_isScrolling) {
      await Future.delayed(const Duration(milliseconds: 50));
      if (!_isScrolling) break;

      double currentScroll = _scrollController.offset;
      double maxScrollExtent = _scrollController.position.maxScrollExtent;

      double newScroll = currentScroll + _scrollSpeed;
      if (newScroll < 0) newScroll = 0;
      if (newScroll > maxScrollExtent) newScroll = maxScrollExtent;

      _scrollController.jumpTo(newScroll);
    }
  }

  void _stopScrolling() {
    _isScrolling = false;
  }

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Listener(
      onPointerMove: (PointerMoveEvent event) {
        double screenWidth = MediaQuery.of(context).size.width;

        if (event.position.dx > screenWidth - _edgeThreshold) {
          // Near the right edge, scroll right
          _scrollSpeed = _scrollIncrement;
          _startScrolling();
        } else if (event.position.dx < _edgeThreshold) {
          // Near the left edge, scroll left
          _scrollSpeed = -_scrollIncrement;
          _startScrolling();
        } else {
          _stopScrolling();
        }
      },
      onPointerUp: (_) => _stopScrolling(),
      onPointerDown: (_) => _stopScrolling(),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        controller: _scrollController,
        child: BlocBuilder<GetAllTasksBloc, GetAllTasksBlocState>(
          builder: (BuildContext context, GetAllTasksBlocState state) {
            if (state is GetAllTasksLoadingState) {
              return SizedBox(
                width: MediaQuery.of(context).size.width * .9,
                height: MediaQuery.of(context).size.height * .7,
                child: Center(
                  child: CircularProgressIndicator(
                    color: themeData.shadowColor,
                  ),
                ),
              );
            } else if (state is GetAllTasksLoadedState) {
              if (state.tasks.isNotEmpty) {
                return Row(
                  children: [
                    for (var label in AppConstants.kTaskLabelList)
                      BoardColumnWidget(
                        key: Key(label),
                        label: label,
                        tasks: state.tasks[label] ?? [],
                      ),
                  ],
                );
              }
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
