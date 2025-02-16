part of 'hide_bloc.dart';

sealed class HideEvent extends Equatable {
  const HideEvent();

  @override
  List<Object> get props => [];
}

class HidePassword extends HideEvent {
  const HidePassword(this.isHide);

  final bool isHide;
}
