// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

import '../response/absen_check_response.dart';

class AbsenServices {
  final Client _client = Client();

  Future<AbsenCheckResponse> checkAbsen(int userId) async {
    try {
      final response = await _client.get(
          Uri.parse("https://Api.csw-app.com/rest/check_absen?id=$userId"));
      print(response.body);
      if (response.statusCode == 200) {
        AbsenCheckResponse getCartResponse =
            AbsenCheckResponse.fromJson(json.decode(response.body));
        return getCartResponse;
      } else {
        return Future.error("data kosong 🤷‍♂️");
      }
    } on SocketException {
      return Future.error("Yah, Internet Kamu error!😑");
    } on HttpException {
      print("Fungsi post ga nemu 😱");
      // return Future.error("Fungsi post ga nemu 😱");
      return Future.error("terjadi error");
    } on FormatException {
      print("Response format kacauu! 👎");
      // return Future.error("Response format kacauu! 👎");
      return Future.error("terjadi error");
    } catch (e) {
      print('====');
      print(e.toString());
      return Future.error(e);
    }
  }
}