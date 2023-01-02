import 'package:csw_attendance/helper/apps_style.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:line_icons/line_icons.dart';

import 'fragment/add_lembur_screen.dart';

class LemburScreen extends StatefulWidget {
  const LemburScreen({super.key});

  @override
  State<LemburScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LemburScreen> {
  var date = DateTime.now();
  String currentIndex = DateFormat('d').format(DateTime.now());

  final ScrollController _scrollController = ScrollController();

  _scrollToBottom() {
    _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom());
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
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AddLemburScreen()));
                    },
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lembur',
                    style: kPoppinsMediumBold.copyWith(
                        color: kDarkBlue, fontSize: 28),
                  ),
                  Text('hari ini: ${DateFormat('d MMM, yyyy').format(date)}',
                      style: kPoppinsRegularBold.copyWith(fontSize: 12)),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: kLightGreen,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Total lemburan",
                              style: kPoppinsMediumBold.copyWith(
                                  color: kLightWhite, fontSize: 14)),
                          Text("4",
                              style: kPoppinsRegularBold.copyWith(
                                  color: kLightWhite, fontSize: 24)),
                        ],
                      ),
                      Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: kLightBlue,
                              borderRadius: BorderRadius.circular(12)),
                          child: Text(DateFormat('MMMM').format(date),
                              style: kPoppinsMediumBold.copyWith(
                                  color: kLightWhite, fontSize: 14))),
                    ],
                  )),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ListView.builder(
                  itemCount: int.parse(currentIndex),
                  controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  itemExtent: 45,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int itemIndex) {
                    return Padding(
                      padding: const EdgeInsets.all(1),
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          'Day\n${itemIndex + 1}',
                          style: kPoppinsMediumBold.copyWith(
                              color: int.parse(currentIndex) == itemIndex + 1
                                  ? kDarkBlue
                                  : const Color(0XFFb0bec5),
                              fontSize: 14),
                        ),
                      ),
                    );
                  },
                ),
              ),
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
                    Container(
                      height: 110,
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
                              Text('17.00-20.00 WIB',
                                  style: kPoppinsMediumBold.copyWith(
                                      color: kDarkBlue, fontSize: 16)),
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
                                          color: kGrey, fontSize: 14)),
                                  Text('Mengerjakan input data pegawai',
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
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 110,
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
                              Text('17.00-20.00 WIB',
                                  style: kPoppinsMediumBold.copyWith(
                                      color: kDarkBlue, fontSize: 16)),
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
                                          color: kGrey, fontSize: 14)),
                                  Text('Mengerjakan input data pegawai',
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
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 110,
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
                              Text('17.00-20.00 WIB',
                                  style: kPoppinsMediumBold.copyWith(
                                      color: kDarkBlue, fontSize: 16)),
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
                                          color: kGrey, fontSize: 14)),
                                  Text('Mengerjakan input data pegawai',
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
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 110,
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
                              Text('17.00-20.00 WIB',
                                  style: kPoppinsMediumBold.copyWith(
                                      color: kDarkBlue, fontSize: 16)),
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
                                          color: kGrey, fontSize: 14)),
                                  Text('Mengerjakan input data pegawai',
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
                    const SizedBox(
                      height: 12,
                    )
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
