part of 'increment_bloc.dart';

class IncrementState extends Equatable {

  final int count;

  const IncrementState({this.count = 0});

  IncrementState copyWith(int? count){
    return IncrementState(
      count: count ?? this.count
    );
  }

  @override
  List<Object> get props => [count];
}
