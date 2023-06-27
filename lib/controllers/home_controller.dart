import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:nexeontask/repository/repository.dart';

import '../models/details_model.dart';
import 'base_controller.dart';

class HomeController extends BaseController {
  Repository repository = Repository();

  var detailsModal = Rxn<DetailsModal>();

  @override
  void onInit() {
    getDetails();
    super.onInit();


  }

  void getDetails() {
/*    showLoader();*/

    repository.getDetailsRepo().then((value) {
      print("get details from controller ==== $value");

      detailsModal.value = value;

/*      hideLoader();*/
    });
  }
}
