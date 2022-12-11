import 'package:auto_size_text/auto_size_text.dart';
import 'package:csw_attendance/helper/apps_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

class LeaveScreen extends StatefulWidget {
  const LeaveScreen({super.key});

  @override
  State<LeaveScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LeaveScreen> {
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
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop(true);
                    },
                    child: const Icon(LineIcons.arrowLeft,
                        color: Colors.white, size: 30),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: kLightWhite,
                          borderRadius: BorderRadius.circular(12)),
                      child: const InkWell(
                          child: Icon(
                        Icons.add,
                        color: Colors.black,
                      )),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              height: double.infinity,
              color: const Color(0xffecedf2),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Leave',
                              style: kPoppinsMediumBold.copyWith(
                                  color: kDarkBlue, fontSize: 28)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text('December 2022',
                        style: kPoppinsRegularBold.copyWith(
                            color: kGrey, fontSize: 16)),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 110,
                      margin: const EdgeInsets.symmetric(vertical: 5.0),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Half Day Application',
                                  style: kPoppinsRegularBold.copyWith(
                                      color: kGrey, fontSize: 16)),
                              Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: const Color(0xffFFF0C5),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Text('Awaiting',
                                      style: kPoppinsMediumBold.copyWith(
                                          color: kDarkBlue, fontSize: 14))),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Wed, 16 Dec',
                                      style: kPoppinsMediumBold.copyWith(
                                          color: kDarkBlue, fontSize: 14)),
                                  Text('Berobat',
                                      style: kPoppinsMediumBold.copyWith(
                                          color: kLightBlue, fontSize: 14)),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    color: kLightWhite,
                                    borderRadius: BorderRadius.circular(8)),
                                child: const InkWell(
                                    child: Icon(
                                  Icons.arrow_right,
                                  color: kGrey,
                                )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 110,
                      margin: const EdgeInsets.symmetric(vertical: 5.0),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('3 Day Application',
                                  style: kPoppinsRegularBold.copyWith(
                                      color: kGrey, fontSize: 16)),
                              Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: const Color(0xffd0180e),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Text('Decline',
                                      style: kPoppinsMediumBold.copyWith(
                                          color: kLightWhite, fontSize: 14))),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Wed, 16 Dec',
                                      style: kPoppinsMediumBold.copyWith(
                                          color: kDarkBlue, fontSize: 14)),
                                  Text('Jalan-jalan',
                                      style: kPoppinsMediumBold.copyWith(
                                          color: kLightBlue, fontSize: 14)),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    color: kLightWhite,
                                    borderRadius: BorderRadius.circular(8)),
                                child: const InkWell(
                                    child: Icon(
                                  Icons.arrow_right,
                                  color: kGrey,
                                )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 110,
                      margin: const EdgeInsets.symmetric(vertical: 5.0),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Full Day Application',
                                  style: kPoppinsRegularBold.copyWith(
                                      color: kGrey, fontSize: 16)),
                              Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: const Color(0xffB4F5D0),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Text('Approved',
                                      style: kPoppinsMediumBold.copyWith(
                                          color: kDarkBlue, fontSize: 14))),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Wed, 16 Dec',
                                      style: kPoppinsMediumBold.copyWith(
                                          color: kDarkBlue, fontSize: 14)),
                                  Text('Sick',
                                      style: kPoppinsMediumBold.copyWith(
                                          color: kLightBlue, fontSize: 14)),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    color: kLightWhite,
                                    borderRadius: BorderRadius.circular(8)),
                                child: const InkWell(
                                    child: Icon(
                                  Icons.arrow_right,
                                  color: kGrey,
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
