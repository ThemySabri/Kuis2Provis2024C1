// ignore_for_file: must_be_immutable

part of 'soal_1_bloc.dart';

/// Represents the state of Soal1 in the application.
class Soal1State extends Equatable {
  Soal1State({
    this.sevenController,
    this.masukkanNIKandaController,
    this.emailController,
    this.fourController,
    this.selectedDropDownValue,
    this.soal1ModelObj,
  });

  TextEditingController? sevenController;

  TextEditingController? masukkanNIKandaController;

  TextEditingController? emailController;

  TextEditingController? fourController;

  SelectionPopupModel? selectedDropDownValue;

  Soal1Model? soal1ModelObj;

  @override
  List<Object?> get props => [
        sevenController,
        masukkanNIKandaController,
        emailController,
        fourController,
        selectedDropDownValue,
        soal1ModelObj,
      ];

  Soal1State copyWith({
    TextEditingController? sevenController,
    TextEditingController? masukkanNIKandaController,
    TextEditingController? emailController,
    TextEditingController? fourController,
    SelectionPopupModel? selectedDropDownValue,
    Soal1Model? soal1ModelObj,
  }) {
    return Soal1State(
      sevenController: sevenController ?? this.sevenController,
      masukkanNIKandaController:
          masukkanNIKandaController ?? this.masukkanNIKandaController,
      emailController: emailController ?? this.emailController,
      fourController: fourController ?? this.fourController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      soal1ModelObj: soal1ModelObj ?? this.soal1ModelObj,
    );
  }
}
