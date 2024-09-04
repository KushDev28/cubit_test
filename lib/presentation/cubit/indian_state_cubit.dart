import 'package:cubit_test/util/app_constant.dart';
import 'package:cubit_test/model/state_data_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'indian_state.dart';

class IndianStatesCubit extends Cubit<IndianStatesState> {
  IndianStatesCubit() : super( IndianStatesInitialState()){

    getStateList();
  }

  Future<void> getStateList()  async{
    await Future.delayed(const Duration(seconds: 1));
    var data = AppConstants.data;
    IndianStateData statesData = IndianStateData.fromJson(data);
    emit(IndianDataState(
      states: statesData.states,
    ));
  }
}

