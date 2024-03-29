// ignore_for_file: must_be_immutable

part of 'soal_1_bloc.dart';


/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Soal1Event extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Soal1 widget is first created.
class Soal1InitialEvent extends Soal1Event {
  @override
  List<Object?> get props => [];
}

///Event for changing date
class ChangeDateEvent extends Soal1Event {
  ChangeDateEvent({required this.date});

  String date;

  @override
  List<Object?> get props => [
        date,
      ];
}
