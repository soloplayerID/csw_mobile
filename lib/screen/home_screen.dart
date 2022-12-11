import 'package:csw_attendance/screen/leave_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../helper/apps_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //name
                      Text('Selamat Datang',
                          style: kPoppinsRegularBold.copyWith(
                              color: kGrey, fontSize: 20)),
                      const SizedBox(
                        height: 6,
                      ),
                      Text('Ilham Taufik',
                          style: kPoppinsBold.copyWith(fontSize: 18)),
                    ],
                  ),

                  //Profile Picture
                  InkWell(
                    onTap: () async {},
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: const Color(0XFF4CACBC),
                          borderRadius: BorderRadius.circular(12)),
                      child: const InkWell(
                          child: Icon(
                        Icons.person,
                        color: Colors.white,
                      )),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(15),
                height: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25)),
                  color: Color(0xffecedf2),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: const ClampingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //card -> hhow do you feel?
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: kLightBlue,
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            children: [
                              //animation or picture
                              Container(
                                  padding: const EdgeInsets.all(12),
                                  height: 100,
                                  width: 100,
                                  child: SvgPicture.asset(
                                      "assets/icons/welcome.svg")),
                              const SizedBox(
                                width: 20,
                              ),
                              // how do you feel + get started button
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(DateFormat('EEEE').format(date),
                                        style: kPoppinsBold.copyWith(
                                            fontSize: 18)),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(DateFormat('d MMM, yyyy').format(date),
                                        style: kPoppinsRegularBold.copyWith(
                                            fontSize: 14)),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),

                      Padding(
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
                                Container(
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                        color: kLightBlue,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Text('Check In',
                                        style: kPoppinsMediumBold.copyWith(
                                            color: kDarkBlue, fontSize: 14))),
                              ],
                            )),
                      ),

                      const SizedBox(
                        height: 25,
                      ),

                      //doctor list
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Menu lain',
                                style: kPoppinsMediumBold.copyWith(
                                    color: kDarkBlue, fontSize: 16)),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      color: Colors.cyan,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: const InkWell(
                                      child: Icon(
                                    Icons.format_quote_rounded,
                                    color: Colors.white,
                                  )),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Request Lembur",
                                        style: kPoppinsMediumBold.copyWith(
                                            color: kDarkBlue, fontSize: 14)),
                                    Text("08.00 - 08.30 WIB",
                                        style: kPoppinsRegularBold.copyWith(
                                            color: kDarkBlue, fontSize: 14)),
                                  ],
                                ),
                              ],
                            )),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: const InkWell(
                                      child: Icon(
                                    Icons.payment_rounded,
                                    color: Colors.white,
                                  )),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Slip Gaji",
                                        style: kPoppinsMediumBold.copyWith(
                                            color: kDarkBlue, fontSize: 14)),
                                    Text("08.00 - 08.30 WIB",
                                        style: kPoppinsRegularBold.copyWith(
                                            color: kDarkBlue, fontSize: 14)),
                                  ],
                                ),
                              ],
                            )),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LeaveScreen()));
                          },
                          child: Container(
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: kWhite,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: const InkWell(
                                        child: Icon(
                                      Icons.hotel_outlined,
                                      color: Colors.white,
                                    )),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Izin",
                                          style: kPoppinsMediumBold.copyWith(
                                              color: kDarkBlue, fontSize: 14)),
                                      Text("08.00 - 08.30 WIB",
                                          style: kPoppinsRegularBold.copyWith(
                                              color: kDarkBlue, fontSize: 14)),
                                    ],
                                  ),
                                ],
                              )),
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
                              color: kWhite,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      color: Colors.pinkAccent,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: const InkWell(
                                      child: Icon(
                                    Icons.picture_as_pdf,
                                    color: Colors.white,
                                  )),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Surat-surat",
                                        style: kPoppinsMediumBold.copyWith(
                                            color: kDarkBlue, fontSize: 14)),
                                    Text("08.00 - 08.30 WIB",
                                        style: kPoppinsRegularBold.copyWith(
                                            color: kDarkBlue, fontSize: 14)),
                                  ],
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
