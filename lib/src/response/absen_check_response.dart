class AbsenCheckResponse {
  bool? status;
  Data? data;

  AbsenCheckResponse({this.status, this.data});

  AbsenCheckResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? id;
  String? time;
  String? namaType;
  String? message;

  Data({this.id, this.time, this.namaType, this.message});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    time = json['time'];
    namaType = json['nama_type'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['time'] = time;
    data['nama_type'] = namaType;
    data['message'] = message;
    return data;
  }
}
