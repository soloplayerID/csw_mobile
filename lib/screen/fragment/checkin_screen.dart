import 'package:csw_attendance/helper/apps_style.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class CheckInScreen extends StatefulWidget {
  const CheckInScreen({super.key});

  @override
  State<CheckInScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CheckInScreen> {
  var now = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: double.infinity,
        child: Column(
          children: [
            Container(
                color: kLightBlue,
                padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
                height: 185,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pop(true);
                          },
                          child: const Icon(LineIcons.arrowLeft,
                              color: Colors.white, size: 30),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Absen',
                            style: kPoppinsMediumBold.copyWith(
                                color: kLighterWhite, fontSize: 28),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: kBlue,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: kBlue,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: const InkWell(
                                        child: Icon(
                                      Icons.timer_outlined,
                                      color: kLighterWhite,
                                      size: 16,
                                    )),
                                  ),
                                  Text('08.00 - 08.30',
                                      style: kPoppinsSemiBold.copyWith(
                                          color: kLighterWhite, fontSize: 12)),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ],
                )),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                width: MediaQuery.of(context).size.width,
                height: double.infinity,
                color: const Color(0xfffafafa),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: kWhite,
                                borderRadius: BorderRadius.circular(8)),
                            child: const InkWell(
                                child: Icon(
                              Icons.location_on_outlined,
                              color: kBlue,
                              size: 22,
                            )),
                          ),
                          Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: kLightWhite,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text('Location',
                                  style: kPoppinsSemiBold.copyWith(
                                      color: kDarkBlue, fontSize: 14))),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 28),
                        child: Text(
                            'TPM OFFICE HO, Dutamas Fatmawati no.26, Jakarta Selatan',
                            style: kPoppinsRegularBold.copyWith(
                                color: kDarkBlue, fontSize: 12)),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: kWhite,
                                borderRadius: BorderRadius.circular(8)),
                            child: const InkWell(
                                child: Icon(
                              Icons.camera_alt_outlined,
                              color: kBlue,
                              size: 22,
                            )),
                          ),
                          Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: kLightWhite,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text('Picture',
                                  style: kPoppinsSemiBold.copyWith(
                                      color: kDarkBlue, fontSize: 14))),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                          height: 160,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 203, 204, 235),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 203, 204, 235)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const InkWell(
                                    child: Icon(
                                  Icons.camera_alt_outlined,
                                  color: kBlue,
                                  size: 28,
                                )),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text('Take a Picture',
                                    style: kPoppinsMediumBold.copyWith(
                                        color: kDarkBlue, fontSize: 14))
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(kLightBlue),
                  ),
                  child: Text('Check In',
                      style: kPoppinsSemiBold.copyWith(
                          color: kWhite, fontSize: 14))),
            )
          ],
        ),
      ),
    );
  }
}
