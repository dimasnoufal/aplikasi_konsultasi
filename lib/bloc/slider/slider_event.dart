part of 'slider_bloc.dart';

sealed class SliderEvent extends Equatable {
  const SliderEvent();

  @override
  List<Object> get props => [];
}

class UpdateSliderIndex extends SliderEvent {
  const UpdateSliderIndex(this.pageIndex);

  final int pageIndex;
}
