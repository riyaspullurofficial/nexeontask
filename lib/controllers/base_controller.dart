import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../ui/widgets/dialogue_helper.dart';



class BaseController extends GetxController {
  bool _isLoadInitiated = false;

  void setIsLoadInitiated() {
    _isLoadInitiated = true;
  }

  void setReload() {
    _isLoadInitiated = false;
  }

  bool isLoadInitiated() => _isLoadInitiated;

  void showLoader() {
    DialogHelper.showLoading();
  }

  void hideLoader() {
    DialogHelper.hideLoading();
  }
}
