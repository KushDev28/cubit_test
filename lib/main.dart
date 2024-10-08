import 'package:cubit_test/presentation/cubit/indian_state_cubit.dart';
import 'package:cubit_test/presentation/indan_states_listing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BlocProvider(
            create: (context) => IndianStatesCubit(), child: const IndianStatesListing()));
  }
}




