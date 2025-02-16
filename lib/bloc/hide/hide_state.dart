part of 'hide_bloc.dart';

sealed class HideState extends Equatable {
  const HideState({this.isHide = true});

  final bool isHide;

  @override
  List<Object> get props => [isHide];
}

final class HideInitial extends HideState {
  const HideInitial({super.isHide});
}

final class HideLoading extends HideState {
  const HideLoading({super.isHide});
}

final class HideFinish extends HideState {
  const HideFinish({super.isHide});
}

final class HideError extends HideState {
  const HideError({super.isHide});
}
