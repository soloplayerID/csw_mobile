import 'package:csw_attendance/helper/apps_style.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class DocumentScreen extends StatefulWidget {
  const DocumentScreen({super.key});

  @override
  State<DocumentScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DocumentScreen> {
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
                    Text('Hello Irsyad',
                        style: kPoppinsRegularBold.copyWith(
                            color: kGrey, fontSize: 16)),
                    Text('Documents',
                        style: kPoppinsMediumBold.copyWith(
                            color: kDarkBlue, fontSize: 28)),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 70,
                      margin: const EdgeInsets.symmetric(vertical: 5.0),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: const Color(0xffE9F2FF),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Icon(
                                  Icons.menu_book,
                                  color: kDarkBlue,
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Doc_revision.pdf',
                                      style: kPoppinsMediumBold.copyWith(
                                          color: kDarkBlue, fontSize: 16)),
                                  Text('17-12-2022 15.32',
                                      style: kPoppinsMediumBold.copyWith(
                                          color: kGrey, fontSize: 12)),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(8)),
                            child: InkWell(
                              onTap: () {},
                              child: Text('...',
                                  style: kPoppinsBold.copyWith(
                                      color: kDarkBlue, fontSize: 20)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 70,
                      margin: const EdgeInsets.symmetric(vertical: 5.0),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: const Color(0xffE9F2FF),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Icon(
                                  Icons.play_arrow,
                                  color: kDarkBlue,
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('scan_ktp-kk.pdf',
                                      style: kPoppinsMediumBold.copyWith(
                                          color: kDarkBlue, fontSize: 16)),
                                  Text('17-12-2022 15.32',
                                      style: kPoppinsMediumBold.copyWith(
                                          color: kGrey, fontSize: 12)),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(8)),
                            child: InkWell(
                              onTap: () {},
                              child: Text('...',
                                  style: kPoppinsBold.copyWith(
                                      color: kDarkBlue, fontSize: 20)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 70,
                      margin: const EdgeInsets.symmetric(vertical: 5.0),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: const Color(0xffE9F2FF),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Icon(
                                  Icons.play_arrow,
                                  color: kDarkBlue,
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('doc_revisi2.pdf',
                                      style: kPoppinsMediumBold.copyWith(
                                          color: kDarkBlue, fontSize: 16)),
                                  Text('17-12-2022 15.32',
                                      style: kPoppinsMediumBold.copyWith(
                                          color: kGrey, fontSize: 12)),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(8)),
                            child: InkWell(
                              onTap: () {},
                              child: Text('...',
                                  style: kPoppinsBold.copyWith(
                                      color: kDarkBlue, fontSize: 20)),
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
    );
  }
}
