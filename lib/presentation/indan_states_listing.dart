import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/indian_state.dart';
import 'cubit/indian_state_cubit.dart';


class IndianStatesListing extends StatelessWidget {
  const IndianStatesListing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Indian States'),
      ),
      body: BlocBuilder<IndianStatesCubit, IndianStatesState>(
        builder: (context, state) {
          if (state is IndianDataState) {
            return ListView.builder(
              itemBuilder: (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child:
                    Text(state.states[index].title, style: const TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),),
                  ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, i) => Padding(
                        padding: const EdgeInsets.all(8),
                        child:Text(state.states[index].names[i])),itemCount: state.states[index].names.length,)
                ],
              ),
              itemCount: state.states.length,
            );
          } else {
            return const Center(child: CircularProgressIndicator(color: Colors.amber,));
          }
        },
      ),
    );
  }
}