import 'package:csw_attendance/helper/apps_style.dart';
import 'package:csw_attendance/screen/slip_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:line_icons/line_icons.dart';

class SlipScreen extends StatefulWidget {
  const SlipScreen({super.key});

  @override
  State<SlipScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SlipScreen> {
  var date = DateTime.now();
  String currentIndex = DateFormat('d').format(DateTime.now());


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
              height: 170,
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
                            'Hai Ilham,',
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
                          Text(
                            'Welcome to my pay summary details',
                            style: kPoppinsMediumBold.copyWith(
                                color: kLighterWhite, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                ],
              )
            ),

            

            Expanded(
                child: Container(
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              height: double.infinity,
              color: const Color(0xfffafafa),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SlipDetailScreen()));
                      },
                      child: Container(
                        height: 100,
                        margin: const EdgeInsets.symmetric(vertical: 5.0),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: kLighterGreen,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Agustus',
                                    style: kPoppinsMediumBold.copyWith(
                                        color: kDarkBlue, fontSize: 18)),
                                Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: kLightWhite,
                                        borderRadius: BorderRadius.circular(12)),
                                    child: Text('Rp. 10.000.000',
                                        style: kPoppinsMediumBold.copyWith(
                                            color: kDarkBlue, fontSize: 14))),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      color: kLightWhite,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: const InkWell(
                                      child: Icon(
                                    Icons.arrow_right,
                                    color: kDarkBlue,
                                  )),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 100,
                      margin: const EdgeInsets.symmetric(vertical: 5.0),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: kLighterPurple,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('September',
                                  style: kPoppinsMediumBold.copyWith(
                                      color: kDarkBlue, fontSize: 18)),
                              Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: kLightWhite,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Text('Rp. 10.000.000',
                                      style: kPoppinsMediumBold.copyWith(
                                          color: kDarkBlue, fontSize: 14))),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    color: kLightWhite,
                                    borderRadius: BorderRadius.circular(8)),
                                child: const InkWell(
                                    child: Icon(
                                  Icons.arrow_right,
                                  color: kDarkBlue,
                                )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 100,
                      margin: const EdgeInsets.symmetric(vertical: 5.0),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: kLighterOrange,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Oktober',
                                  style: kPoppinsMediumBold.copyWith(
                                      color: kDarkBlue, fontSize: 18)),
                              Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: kLightWhite,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Text('Rp. 10.000.000',
                                      style: kPoppinsMediumBold.copyWith(
                                          color: kDarkBlue, fontSize: 14))),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    color: kLightWhite,
                                    borderRadius: BorderRadius.circular(8)),
                                child: const InkWell(
                                    child: Icon(
                                  Icons.arrow_right,
                                  color: kDarkBlue,
                                )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 100,
                      margin: const EdgeInsets.symmetric(vertical: 5.0),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: kLighterBlue,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('November',
                                  style: kPoppinsMediumBold.copyWith(
                                      color: kDarkBlue, fontSize: 18)),
                              Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: kLightWhite,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Text('Rp. 10.000.000',
                                      style: kPoppinsMediumBold.copyWith(
                                          color: kDarkBlue, fontSize: 14))),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    color: kLightWhite,
                                    borderRadius: BorderRadius.circular(8)),
                                child: const InkWell(
                                    child: Icon(
                                  Icons.arrow_right,
                                  color: kDarkBlue,
                                )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
