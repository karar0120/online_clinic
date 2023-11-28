import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:online_clinic/features/calendar/ui/settings_screen.dart';
import 'package:online_clinic/features/chat/ui/chat_screen.dart';
import 'package:online_clinic/features/home/ui/home_screen.dart';
import 'package:online_clinic/features/search/ui/search_screen.dart';
import 'package:online_clinic/features/settings/ui/settings_screen.dart';

import 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationStateInitial());

  int index = 0;
  void changeIndexInBottonNavigationBar(int index) {
    this.index = index;
    emit(NavigationStateChangeIndex());
  }

  List<Widget> screens = [
    const HomeScreen(),
    const ChatScreen(),
    const SearchScreen(),
    const CalendarScreen(),
    const SettingsScreen(),
  ];
}
