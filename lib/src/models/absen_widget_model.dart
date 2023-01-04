class AbsenWidgetModel {
  bool isloading = false;
  bool isSuccess = false;
  List<AbsenWidget> absenWidget = <AbsenWidget>[];
}

class AbsenWidget {
  String idType;
  String namaType;
  AbsenWidget({
    required this.idType,
    required this.namaType,
  });
}