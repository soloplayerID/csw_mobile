import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helper/apps_style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const ClampingScrollPhysics(),
        child: Form(
          child: Container(
            padding: const EdgeInsets.only(left: 25, right: 25),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: 'hero',
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 32.0,
                    child: Image.asset('assets/icons/employees.png'),
                  ),
                ),
                Text('Attandence App',
                    style: kPoppinsMediumBold.copyWith(
                        color: kDarkBlue, fontSize: 30)),
                Text('by CSW',
                    style: kPoppinsRegularBold.copyWith(
                        color: kDarkBlue, fontSize: 12)),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 1.2,
                        height: 30,
                        margin: const EdgeInsets.only(
                            top: 4, left: 16, bottom: 1, right: 16),
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
                              hintText: "Username",
                              border: InputBorder.none,
                              errorStyle:
                                  TextStyle(color: Colors.red, fontSize: 9),
                              fillColor: Colors.grey,
                              hintStyle: TextStyle(
                                  color: Color(0xff2D8EFF), fontSize: 12)),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: 30,
                  margin: const EdgeInsets.only(
                      top: 4, left: 16, bottom: 1, right: 16),
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      border: Border(
                        bottom: BorderSide(width: 1, color: Color(0xff2D8EFF)),
                      )),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null) {}
                      return null;
                    },
                    onChanged: (str) {},
                    style: const TextStyle(color: Colors.grey, fontSize: 14),
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            icon: const Icon(
                              Icons.visibility,
                              color: Colors.black,
                              size: 18,
                            ),
                            onPressed: () {}),
                        hintText: "Password",
                        border: InputBorder.none,
                        errorStyle:
                            const TextStyle(color: Colors.red, fontSize: 9),
                        fillColor: Colors.grey,
                        hintStyle: const TextStyle(
                            color: Color(0xff2D8EFF), fontSize: 12)),
                  ),
                ),
                InkWell(
                  splashColor: const Color(0xff7474BF),
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                    Fluttertoast.showToast(
                        msg: 'berhasil login :D',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 2,
                        backgroundColor: Colors.green,
                        textColor: Colors.white,
                        fontSize: 15);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 50.0),
                    height: 43,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 28),
                              blurRadius: 40,
                              spreadRadius: -12)
                        ],
                        color: kLightBlue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const Center(
                      child: Text(
                        "Masuk",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
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
    ));
  }
}
