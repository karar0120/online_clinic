import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_clinic/features/home/logic/navigation/cubit/navigation_cubit.dart';
import 'doc_app.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider<NavigationCubit>(
      create: (BuildContext context) => NavigationCubit(),
    ),
  ], child: const DocApp()));
}
