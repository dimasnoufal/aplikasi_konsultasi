part of 'slider_bloc.dart';

sealed class SliderState extends Equatable {
  const SliderState({this.pageIndex = 0});

  final int pageIndex;

  @override
  List<Object> get props => [pageIndex];
}

class SliderInitial extends SliderState {
  const SliderInitial({super.pageIndex});
}

class SliderLoading extends SliderState {
  const SliderLoading({super.pageIndex});
}

class SliderFinish extends SliderState {
  const SliderFinish({super.pageIndex});
}

class SliderError extends SliderState {
  const SliderError({super.pageIndex});
}
