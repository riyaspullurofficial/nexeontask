import 'package:dio/dio.dart';
import 'package:nexeontask/models/details_model.dart';

import '../constants/app_constants.dart';

class Repository extends Interceptor {
  final Dio dio = Dio();

  Future<DetailsModal?> getDetailsRepo() async {
    print("login  called remote");
    try {
      Response resdata = await dio.post(base_url,
          data: {
            "statusArray": [1],
            "screenType": [],
            "responseFormat": [],
            "globalGalleryIds": [],
            "categoryIds": [],
            "docTypes": [],
            "types": [],
            "limit": 10,
            "skip": 0,
            "searchingText": ""
          },
          options: Options(headers: {"Authorization": token}));

      if (resdata.statusCode == 200) {}
      print("data response ${resdata.data}");
      var userResponseData = DetailsModal.fromJson(resdata.data);

      print("details modal response== $userResponseData");

      return userResponseData;
    } on DioError catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        print('Dio error!====');
        print('STATUS error: ${e.response?.statusCode}');
        print('DATA error: ${e.response?.data}');
        print('HEADERS error: ${e.response?.headers}');
      } else {
        // Error due to setting up or sending the request
        print('Error sending request!');
        print(e.message);
      }
    }
    return null;
  }
}
