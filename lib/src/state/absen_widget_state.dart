import 'package:csw_attendance/src/models/absen_widget_model.dart';

abstract class AbsenWidgetState {
  void refreshData(AbsenWidgetModel absenWidgetModel);
  void onSuccess(String success);
  void onError(String error);
}