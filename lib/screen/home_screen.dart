import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

import '../helper/apps_style.dart';
import '../helper/size_config.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //name
                      Text('Selamat Datang',
                          style: kPoppinsRegularBold.copyWith(
                              color: kGrey,
                              fontSize: 20)),
                      const SizedBox(
                        height: 6,
                      ),
                      Text('Ilham Taufik',
                          style: kPoppinsBold.copyWith(
                              fontSize: 18)),
                    ],
                  ),

                  //Profile Picture
                  InkWell(
                    onTap: () async {
                    },
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
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                                child:
                                    SvgPicture.asset("assets/icons/welcome.svg")
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              // how do you feel + get started button
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Today',
                                      style: kPoppinsBold.copyWith( fontSize: 18)
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      '06 Desember 2022',
                                      style: kPoppinsRegularBold.copyWith(
                                            fontSize: 14)
                                    ),
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

                      //search bar
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      //   child: Container(
                      //     padding: const EdgeInsets.all(8),
                      //     decoration: BoxDecoration(
                      //       color: const Color.fromARGB(255, 203, 204, 235),
                      //       borderRadius: BorderRadius.circular(12),
                      //     ),
                      //     child: const TextField(
                      //       decoration: InputDecoration(
                      //         prefixIcon: Icon(Icons.search),
                      //         border: InputBorder.none,
                      //         hintText: 'How can we help you?',
                      //       ),
                      //     ),
                      //   ),
                      // ),

                      const SizedBox(
                        height: 25,
                      ),

                      //doctor list
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Berita\n terbaru',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            InkWell(
                              child: Text(
                                'Lihat semua',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 15,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
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