import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'hide_event.dart';
part 'hide_state.dart';

class HideBloc extends Bloc<HideEvent, HideState> {
  HideBloc() : super(const HideInitial()) {
    on<HidePassword>((event, emit) {
      // TODO: implement event handler
      try {
        emit(HideLoading(isHide: state.isHide));
        emit(HideFinish(isHide: !event.isHide));
      } catch (e) {
        emit(HideError(isHide: state.isHide));
      }
    });
  }
}
