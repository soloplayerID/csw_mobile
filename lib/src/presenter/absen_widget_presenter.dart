

// ignore_for_file: avoid_print

import '../models/absen_widget_model.dart';
import '../resources/absen_api.dart';
import '../state/absen_widget_state.dart';

abstract class AbsenWidgetPresenterAbstract {
  set view(AbsenWidgetState view) {}
  void checkAbsen(String id){}
}

class AbsenWidgetPresenter implements AbsenWidgetPresenterAbstract {
  final AbsenWidgetModel _absenWidgetModel = AbsenWidgetModel();
  late AbsenWidgetState _absenWidgetState;
  final AbsenServices _absenServices = AbsenServices();

  @override
  // ignore: avoid_return_types_on_setters
  void set view(AbsenWidgetState view) {
    _absenWidgetState = view;
    _absenWidgetState.refreshData(_absenWidgetModel);
  }
  
  @override
  void checkAbsen(String id) {
    _absenWidgetModel.isloading = true;
    _absenWidgetState.refreshData(_absenWidgetModel);
    // print('test $id');

    _absenServices.checkAbsen(id).then((value) {
      if(value.data!.id != null){
        _absenWidgetModel.absenWidget.add(AbsenWidget(
          idType: value.data!.id.toString(), 
          namaType: value.data!.namaType.toString()
        ));
      }
      _absenWidgetModel.isloading = false;
      _absenWidgetState.refreshData(_absenWidgetModel);
    }).catchError((error){
      _absenWidgetState.onError(error);
      _absenWidgetModel.isloading = false;
      _absenWidgetState.refreshData(_absenWidgetModel);
    });
  }


}
