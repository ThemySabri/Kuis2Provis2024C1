// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:themy_sabri_s_application4/core/app_export.dart';

/// This class defines the variables used in the [soal_1_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Soal1Model extends Equatable {
  Soal1Model({
    this.selectedDdmmyyyy,
    this.ddmmyyyy = "DD/MM/YYYY",
    this.dropdownItemList = const [],
  }) {
    selectedDdmmyyyy = selectedDdmmyyyy ?? DateTime.now();
  }

  DateTime? selectedDdmmyyyy;

  String ddmmyyyy;

  List<SelectionPopupModel> dropdownItemList;

  Soal1Model copyWith({
    DateTime? selectedDdmmyyyy,
    String? ddmmyyyy,
    List<SelectionPopupModel>? dropdownItemList,
  }) {
    return Soal1Model(
      selectedDdmmyyyy: selectedDdmmyyyy ?? this.selectedDdmmyyyy,
      ddmmyyyy: ddmmyyyy ?? this.ddmmyyyy,
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [selectedDdmmyyyy, ddmmyyyy, dropdownItemList];
}
