import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'slider_event.dart';
part 'slider_state.dart';

class SliderBloc extends Bloc<SliderEvent, SliderState> {
  SliderBloc() : super(const SliderInitial()) {
    on<UpdateSliderIndex>((event, emit) {
      // TODO: implement event handler
      try {
        emit(SliderLoading(pageIndex: state.pageIndex));
        emit(SliderFinish(pageIndex: event.pageIndex));
      } catch (e) {
        emit(SliderError(pageIndex: state.pageIndex));
      }
    });
  }
}
