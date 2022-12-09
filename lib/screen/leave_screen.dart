import 'package:auto_size_text/auto_size_text.dart';
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
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: double.infinity,
          child: Column(
            children: [
              Container(
                color: const Color(0XFFA0D995),
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                height: 90,
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
                    // InkWell(
                    //   onTap: () {
                    //     Navigator.pushNamed(context, '/addKriteria');
                    //   },
                    //   child: const Icon(LineIcons.plus,
                    //       color: Colors.white, size: 30),
                    // ),
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
                    children: [
                      Container(
                        height: 120,
                        margin: const EdgeInsets.symmetric(vertical: 5.0),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.asset('assets/icons/user.png')),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    'half day application',
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff1f1f1f)),
                                    ),
                                    maxLines: 3,
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  // Row(
                                  //   mainAxisAlignment:
                                  //       MainAxisAlignment
                                  //           .start,
                                  //   children: [
                                  //     Row(
                                  //       children: [
                                  //         Text(
                                  //           '${_santriListModel
                                  //                   .santri[itemIndex]
                                  //                   .nis}',
                                  //           style: GoogleFonts
                                  //               .poppins(
                                  //             textStyle: const TextStyle(
                                  //                 fontSize:
                                  //                     14,
                                  //                 color:
                                  //                     Color(0xff2b2b2b)),
                                  //           ),
                                  //         )
                                  //       ],
                                  //     )
                                  //   ],
                                  // )
                                ],
                              ),
                            ),
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
      ),
    );
  }
}
