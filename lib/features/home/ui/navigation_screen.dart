import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_clinic/features/home/logic/navigation/cubit/navigation_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logic/navigation/cubit/navigation_state.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return Scaffold(
            body: BlocProvider.of<NavigationCubit>(context)
                .screens[BlocProvider.of<NavigationCubit>(context).index],
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    icon: SvgPicture.asset("assets/svgs/home.svg"),
                    label: "as"),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset("assets/svgs/chat.svg"),
                    label: "as"),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset("assets/svgs/search.svg"),
                    label: "o"),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset("assets/svgs/calendar.svg"),
                    label: "as"),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset("assets/svgs/profile.svg"),
                    label: "p"),
              ],
              currentIndex: BlocProvider.of<NavigationCubit>(context).index,
              onTap: (int index) {
                BlocProvider.of<NavigationCubit>(context)
                    .changeIndexInBottonNavigationBar(index);
              },
            ));
      },
    );
  }
}
