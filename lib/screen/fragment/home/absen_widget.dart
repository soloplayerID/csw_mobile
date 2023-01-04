import 'package:csw_attendance/src/models/absen_widget_model.dart';
import 'package:csw_attendance/src/state/absen_widget_state.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:skeleton_animation/skeleton_animation.dart';
import '../../../helper/getStorage.dart' as constant;

import '../../../helper/apps_style.dart';
import '../../../src/presenter/absen_widget_presenter.dart';
import '../checkin_screen.dart';

class AbsenWidget extends StatefulWidget {
  const AbsenWidget({super.key});

  @override
  State<AbsenWidget> createState() => _AbsenWidgetState();
}

class _AbsenWidgetState extends State<AbsenWidget> implements AbsenWidgetState {

  late AbsenWidgetModel _absenWidgetModel;
  late AbsenWidgetPresenter _absenWidgetPresenter;

  _AbsenWidgetState() {
    _absenWidgetPresenter = AbsenWidgetPresenter();
  }

  @override
  void initState() {
    super.initState();
    _absenWidgetPresenter.view = this;
    _absenWidgetPresenter.checkAbsen(GetStorage().read(constant.idUser));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  _absenWidgetModel.isloading
    ? Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 203, 204, 235),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("CSW Office",
                      style: kPoppinsMediumBold.copyWith(
                          color: kDarkBlue, fontSize: 14)),
                  Text("08.00 - 08.30 WIB",
                      style: kPoppinsRegularBold.copyWith(
                          color: kDarkBlue, fontSize: 14)),
                ],
              ),
              Skeleton(height: 40, width: 90, style: SkeletonStyle.text),
            ],
          )),
    )
    : Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 203, 204, 235),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("CSW Office",
                      style: kPoppinsMediumBold.copyWith(
                          color: kDarkBlue, fontSize: 14)),
                  Text("08.00 - 08.30 WIB",
                      style: kPoppinsRegularBold.copyWith(
                          color: kDarkBlue, fontSize: 14)),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const CheckInScreen()));
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ))),
                child: Text('Absen ${_absenWidgetModel.absenWidget[0].namaType}',
                    style: kPoppinsMediumBold.copyWith(
                        color: kLightWhite, fontSize: 16)),
              )
            ],
          )),
    );
     
  }

  @override
  void onError(String error) {
    
  }

  @override
  void onSuccess(String success) {
    
  }

  @override
  void refreshData(AbsenWidgetModel absenWidgetMdel) {
    setState(() {
      _absenWidgetModel = absenWidgetMdel;
    });
  }
}