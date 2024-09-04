import 'package:cubit_test/model/state_data_model.dart';
import 'package:equatable/equatable.dart';

abstract class IndianStatesState extends Equatable{

}

class IndianDataState extends IndianStatesState {
  final List<Region> states;

  IndianDataState({
    required this.states,
  });

  @override
  List<Object?> get props => [states];
}

class IndianStatesInitialState extends IndianStatesState {


  @override
  List<Object?> get props => [];

}
