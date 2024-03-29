import 'package:themy_sabri_s_application4/widgets/custom_text_form_field.dart';
import 'package:themy_sabri_s_application4/widgets/custom_drop_down.dart';
import 'models/soal_1_model.dart';
import 'package:themy_sabri_s_application4/core/utils/validation_functions.dart';
import 'package:themy_sabri_s_application4/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:themy_sabri_s_application4/core/app_export.dart';
import 'bloc/soal_1_bloc.dart';

// ignore_for_file: must_be_immutable
class Soal1Screen extends StatelessWidget {
  Soal1Screen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<Soal1Bloc>(
        create: (context) => Soal1Bloc(Soal1State(soal1ModelObj: Soal1Model()))
          ..add(Soal1InitialEvent()),
        child: Soal1Screen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            height: SizeUtils.height,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  _buildEleven(context),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          margin: EdgeInsets.only(
                                              left: 25.h,
                                              right: 25.h,
                                              bottom: 3.v),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 17.h, vertical: 23.v),
                                          decoration: AppDecoration.outlineBlack
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 5.h, right: 6.h),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                              decoration: AppDecoration
                                                                  .outlineBlack900
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder10),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    SizedBox(
                                                                        height:
                                                                            3.v),
                                                                    SizedBox(
                                                                        width: 76
                                                                            .h,
                                                                        child: Text(
                                                                            "msg_masukkan_foto_profil"
                                                                                .tr,
                                                                            maxLines:
                                                                                2,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.center,
                                                                            style: theme.textTheme.bodySmall)),
                                                                    SizedBox(
                                                                        height:
                                                                            28.v),
                                                                    Container(
                                                                        padding: EdgeInsets.symmetric(
                                                                            horizontal: 28
                                                                                .h,
                                                                            vertical: 3
                                                                                .v),
                                                                        decoration: AppDecoration.fillBlueGray.copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .customBorderBL10),
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                            children: [
                                                                              SizedBox(height: 2.v),
                                                                              Text("lbl_ubah".tr, style: theme.textTheme.labelLarge)
                                                                            ]))
                                                                  ])),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      bottom:
                                                                          6.v),
                                                              child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                        "lbl_nama_panjang"
                                                                            .tr,
                                                                        style: theme
                                                                            .textTheme
                                                                            .titleSmall),
                                                                    SizedBox(
                                                                        height:
                                                                            8.v),
                                                                    _buildSeven(
                                                                        context)
                                                                  ]))
                                                        ])),
                                                SizedBox(height: 32.v),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 5.h),
                                                        child: Text(
                                                            "lbl_nik".tr,
                                                            style: theme
                                                                .textTheme
                                                                .titleSmall))),
                                                SizedBox(height: 8.v),
                                                _buildMasukkanNIKanda(context),
                                                SizedBox(height: 21.v),
                                                _buildNineteen(context),
                                                SizedBox(height: 18.v),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 5.h),
                                                        child: Text(
                                                            "lbl_email".tr,
                                                            style: theme
                                                                .textTheme
                                                                .titleSmall))),
                                                SizedBox(height: 8.v),
                                                _buildEmail(context),
                                                SizedBox(height: 21.v),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 5.h),
                                                        child: Text(
                                                            "lbl_alamat_rumah"
                                                                .tr,
                                                            style: theme
                                                                .textTheme
                                                                .titleSmall))),
                                                SizedBox(height: 8.v),
                                                _buildFour(context),
                                                SizedBox(height: 69.v),
                                                _buildSimpan(context),
                                                SizedBox(height: 42.v)
                                              ])))
                                ])))))));
  }

  /// Section Widget
  Widget _buildEleven(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft, // Align header ke kiri
      child: Container(
        width:
            MediaQuery.of(context).size.width, // Menggunakan lebar layar penuh
        height: 150.v, // Atur tinggi sesuai kebutuhan
        padding: EdgeInsets.fromLTRB(30.h, 30.v, 30.h,
            70.v), // Tambahkan padding di bagian atas untuk menaikkan posisi teks "Profil"
        decoration: BoxDecoration(
          color: Color.fromRGBO(
              35, 60, 95, 1), // Ubah warna background menjadi biru gelap
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(
                10), // Atur border radius untuk sudut kanan bawah
            topLeft:
                Radius.circular(0), // Atur border radius untuk sudut kiri atas
            topRight:
                Radius.circular(0), // Atur border radius untuk sudut kanan atas
            bottomLeft: Radius.circular(
                10), // Atur border radius untuk sudut kiri bawah
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Profil",
                style: theme.textTheme
                    .headlineLarge), // Teks "Profil" menjadi rata kiri
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return BlocSelector<Soal1Bloc, Soal1State, TextEditingController?>(
        selector: (state) => state.sevenController,
        builder: (context, sevenController) {
          return CustomTextFormField(
              width: 137.h,
              controller: sevenController,
              hintText: "msg_masukkan_nama_lengkap".tr,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 7.h, vertical: 21.v));
        });
  }

  /// Section Widget
  Widget _buildMasukkanNIKanda(BuildContext context) {
    return BlocSelector<Soal1Bloc, Soal1State, TextEditingController?>(
        selector: (state) => state.masukkanNIKandaController,
        builder: (context, masukkanNIKandaController) {
          return CustomTextFormField(
              controller: masukkanNIKandaController,
              hintText: "msg_masukkan_nik_anda".tr);
        });
  }

  /// Section Widget
  Widget _buildNineteen(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                height: 17.v,
                width: 85.h,
                margin: EdgeInsets.only(left: 5.h),
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Text("lbl_tanggal_lahir".tr,
                          style: theme.textTheme.titleSmall)),
                  Align(
                      alignment: Alignment.center,
                      child: Text("lbl_tanggal_lahir".tr,
                          style: theme.textTheme.titleSmall))
                ])),
            SizedBox(height: 6.v),
            GestureDetector(
                onTap: () {
                  onTapThree(context);
                },
                child: Container(
                    width: 118.h,
                    padding: EdgeInsets.symmetric(vertical: 10.v),
                    decoration: AppDecoration.outlineGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 5.v, bottom: 2.v),
                              child:
                                  BlocSelector<Soal1Bloc, Soal1State, String?>(
                                      selector: (state) =>
                                          state.soal1ModelObj!.ddmmyyyy,
                                      builder: (context, ddmmyyyy) {
                                        return Text(ddmmyyyy ?? "",
                                            style: theme.textTheme.labelMedium);
                                      })),
                          CustomImageView(
                              imagePath: ImageConstant.imgCalendar,
                              height: 20.adaptSize,
                              width: 20.adaptSize)
                        ])))
          ])),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text("lbl_gender".tr, style: theme.textTheme.titleSmall)),
        SizedBox(height: 9.v),
        BlocSelector<Soal1Bloc, Soal1State, Soal1Model?>(
            selector: (state) => state.soal1ModelObj,
            builder: (context, soal1ModelObj) {
              return CustomDropDown(
                  width: 124.h,
                  icon: Container(
                      margin: EdgeInsets.fromLTRB(14.h, 12.v, 3.h, 8.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgArrowdropdown,
                          height: 20.adaptSize,
                          width: 20.adaptSize)),
                  hintText: "lbl_perempuan".tr,
                  items: soal1ModelObj?.dropdownItemList ?? []);
            })
      ])
    ]);
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return BlocSelector<Soal1Bloc, Soal1State, TextEditingController?>(
        selector: (state) => state.emailController,
        builder: (context, emailController) {
          return CustomTextFormField(
              controller: emailController,
              hintText: "msg_masukkan_email_anda".tr,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildFour(BuildContext context) {
    return BlocSelector<Soal1Bloc, Soal1State, TextEditingController?>(
        selector: (state) => state.fourController,
        builder: (context, fourController) {
          return CustomTextFormField(
              controller: fourController,
              hintText: "msg_masukkan_alamat".tr,
              textInputAction: TextInputAction.done);
        });
  }

  /// Section Widget
  Widget _buildSimpan(BuildContext context) {
    return CustomElevatedButton(width: 175.h, text: "lbl_simpan".tr);
  }

  /// Displays a date picker dialog and updates the selected date in the
  /// current [soal1ModelObj] object if the user selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapThree(BuildContext context) async {
    var initialState = BlocProvider.of<Soal1Bloc>(context).state;
    DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      initialState.soal1ModelObj?.selectedDdmmyyyy = dateTime;
      context.read<Soal1Bloc>().add(ChangeDateEvent(
          date: dateTime.format(pattern: dateTimeFormatPattern)));
    }
  }
}
