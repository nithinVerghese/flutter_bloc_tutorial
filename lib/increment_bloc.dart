import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'increment_event.dart';
part 'increment_state.dart';

class IncrementBloc extends Bloc<IncrementEvent, IncrementState> {
  IncrementBloc() : super(const IncrementState()) {
    on<AddEvent >((event, emit) => _addLogic(event,emit));
    on<DecrementEvent >((event, emit) => _decrementLogic(event,emit));
    on<ResetEvent >((event, emit) => _resetLogic(event,emit));
  }

  void _addLogic( AddEvent event, Emitter<IncrementState> emit){
    final int updatedData = state.count+1;
    emit(state.copyWith(updatedData));
  }

  void _decrementLogic( DecrementEvent event, Emitter<IncrementState> emit){
    final int updatedData = state.count-1;
    emit(state.copyWith(updatedData));
  }
  void _resetLogic( ResetEvent event, Emitter<IncrementState> emit){
    const int updatedData = 0;
    emit(state.copyWith(updatedData));
  }
}
