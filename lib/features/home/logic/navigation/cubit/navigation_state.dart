// part of 'navigation_cubit.dart';

// @freezed
// class NavigationState with _$NavigationState {
//   const factory NavigationState.initial() = _Initial;
//   const factory NavigationState.changeIndex() = _ChangeIndex;
// }

abstract class NavigationState {}

class NavigationStateInitial extends NavigationState {}

class NavigationStateChangeIndex extends NavigationState {}
