import 'package:csw_attendance/helper/apps_style.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:line_icons/line_icons.dart';

class SlipDetailScreen extends StatefulWidget {
  const SlipDetailScreen({super.key});

  @override
  State<SlipDetailScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SlipDetailScreen> {
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
                height: 80,
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
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Payslip Detail',
                                style: kPoppinsMediumBold.copyWith(
                                    color: kLighterWhite, fontSize: 24),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              height: double.infinity,
              color: const Color(0xffffffff),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'You have earned gross pay of September month',
                            style: kPoppinsMediumBold.copyWith(
                                color: kGrey, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.all(8),
                        height: 220,
                        width: 220,
                        child: Image.asset("assets/images/saving.png")),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Rp, 10.000.000',
                            style: kPoppinsMediumBold.copyWith(
                                color: kDarkBlue, fontSize: 26),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: kLighterBlueSea,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                              Icons.info,
                              color: kBlue,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                          Text('Below is your payslip summary',
                              style: kPoppinsMediumBold.copyWith(
                                  color: kAlmostLightBlue, fontSize: 12)),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Gaji Gross',
                            style: kPoppinsMediumBold.copyWith(
                                color: kAlmostLightBlue, fontSize: 12)),
                        Text('Rp, 10.000.000',
                            style: kPoppinsMediumBold.copyWith(
                                color: kAlmostLightBlue, fontSize: 12)),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                      child: Center(
                        child: Container(
                          margin: const EdgeInsetsDirectional.only(
                              start: 1.0, end: 1.0),
                          height: 1.0,
                          color: kGrey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Transfer To',
                            style: kPoppinsMediumBold.copyWith(
                            color: kAlmostLightBlue, fontSize: 12)),
                            Text('Ilham Taufik Prahastiyono',
                            style: kPoppinsMediumBold.copyWith(
                                color: kAlmostLightBlue, fontSize: 12)),
                      ],
                    ),
                     SizedBox(
                      height: 5.0,
                      child: Center(
                        child: Container(
                          margin: const EdgeInsetsDirectional.only(
                              start: 1.0, end: 1.0),
                          height: 1.0,
                          color: kGrey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('PPH 21',
                            style: kPoppinsMediumBold.copyWith(
                                color: kAlmostLightBlue, fontSize: 12)),
                        Text('Rp, 10.000',
                            style: kPoppinsMediumBold.copyWith(
                                color: kAlmostLightBlue, fontSize: 12)),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                      child: Center(
                        child: Container(
                          margin: const EdgeInsetsDirectional.only(
                              start: 1.0, end: 1.0),
                          height: 1.0,
                          color: kGrey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('BPJS TK',
                            style: kPoppinsMediumBold.copyWith(
                                color: kAlmostLightBlue, fontSize: 12)),
                        Text('Rp, 145.000',
                            style: kPoppinsMediumBold.copyWith(
                                color: kAlmostLightBlue, fontSize: 12)),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                      child: Center(
                        child: Container(
                          margin: const EdgeInsetsDirectional.only(
                              start: 1.0, end: 1.0),
                          height: 1.0,
                          color: kGrey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Jaminan Pensiun',
                            style: kPoppinsMediumBold.copyWith(
                                color: kAlmostLightBlue, fontSize: 12)),
                        Text('Rp, 100.000',
                            style: kPoppinsMediumBold.copyWith(
                                color: kAlmostLightBlue, fontSize: 12)),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                      child: Center(
                        child: Container(
                          margin: const EdgeInsetsDirectional.only(
                              start: 1.0, end: 1.0),
                          height: 1.0,
                          color: kGrey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Gaji Nett',
                            style: kPoppinsMediumBold.copyWith(
                                color: kAlmostLightBlue, fontSize: 16)),
                        Text('Rp, 9.745.000',
                            style: kPoppinsMediumBold.copyWith(
                                color: kAlmostLightBlue, fontSize: 16)),
                      ],
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
