import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:themy_sabri_s_application4/presentation/soal_1_screen/models/soal_1_model.dart';
part 'soal_1_event.dart';
part 'soal_1_state.dart';

class Soal1Bloc extends Bloc<Soal1Event, Soal1State> {
  Soal1Bloc(Soal1State initialState) : super(initialState) {
    on<Soal1InitialEvent>(_onInitialize);
    on<ChangeDateEvent>(_changeDate);
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Perempuan", isSelected: true),
      SelectionPopupModel(id: 2, title: "Laki-laki")
    ];
  }

  _onInitialize(
    Soal1InitialEvent event,
    Emitter<Soal1State> emit,
  ) async {
    emit(state.copyWith(
        sevenController: TextEditingController(),
        masukkanNIKandaController: TextEditingController(),
        emailController: TextEditingController(),
        fourController: TextEditingController()));
    emit(state.copyWith(
        soal1ModelObj: state.soal1ModelObj
            ?.copyWith(dropdownItemList: fillDropdownItemList())));
  }

  _changeDate(
    ChangeDateEvent event,
    Emitter<Soal1State> emit,
  ) {
    emit(state.copyWith(
        soal1ModelObj: state.soal1ModelObj?.copyWith(
      ddmmyyyy: event.date,
    )));
  }
}
