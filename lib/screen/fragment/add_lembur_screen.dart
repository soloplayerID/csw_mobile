import 'package:csw_attendance/helper/apps_style.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class AddLemburScreen extends StatefulWidget {
  const AddLemburScreen({super.key});

  @override
  State<AddLemburScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AddLemburScreen> {
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
                padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                height: 140,
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
                            'Add lembur',
                            style: kPoppinsMediumBold.copyWith(
                                color: kLighterWhite, fontSize: 28),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
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
                              Icons.notification_important,
                              color: kBlue,
                              size: 22,
                            )),
                          ),
                          Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: kLightWhite,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text('Keterangan',
                                  style: kPoppinsSemiBold.copyWith(
                                      color: kDarkBlue, fontSize: 14))),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: 25,
                        margin: const EdgeInsets.only(
                            top: 1, left: 28, bottom: 1, right: 28),
                        decoration: const BoxDecoration(
                            color: Colors.transparent,
                            border: Border(
                              bottom: BorderSide(
                                  width: 1, color: Color(0xff2D8EFF)),
                            )),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null) {}
                            return null;
                          },
                          onChanged: (str) {},
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 14),
                          decoration: const InputDecoration(
                              hintText: "keterangan",
                              border: InputBorder.none,
                              errorStyle:
                                  TextStyle(color: Colors.red, fontSize: 9),
                              fillColor: Colors.grey,
                              hintStyle: TextStyle(
                                  color: Color(0xff2D8EFF), fontSize: 12)),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
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
