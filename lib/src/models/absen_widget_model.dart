class AbsenWidgetModel {
  bool isloading = false;
  bool isSuccess = false;
  List<AbsenWidget> absenWidget = <AbsenWidget>[];
}

class AbsenWidget {
  String idType;
  String namaType;
  String time;
  AbsenWidget({
    required this.idType,
    required this.namaType,
    required this.time
  });
}