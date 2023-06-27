// To parse this JSON data, do
//
//     final uploadModal = uploadModalFromJson(jsonString);

import 'dart:convert';

UploadModal uploadModalFromJson(String str) => UploadModal.fromJson(json.decode(str));

String uploadModalToJson(UploadModal data) => json.encode(data.toJson());

class UploadModal {
  List<int> statusArray;
  List<dynamic> screenType;
  List<dynamic> responseFormat;
  List<dynamic> globalGalleryIds;
  List<dynamic> categoryIds;
  List<dynamic> docTypes;
  List<dynamic> types;
  int limit;
  int skip;
  String searchingText;

  UploadModal({
    required this.statusArray,
    required this.screenType,
    required this.responseFormat,
    required this.globalGalleryIds,
    required this.categoryIds,
    required this.docTypes,
    required this.types,
    required this.limit,
    required this.skip,
    required this.searchingText,
  });

  factory UploadModal.fromJson(Map<String, dynamic> json) => UploadModal(
    statusArray: List<int>.from(json["statusArray"].map((x) => x)),
    screenType: List<dynamic>.from(json["screenType"].map((x) => x)),
    responseFormat: List<dynamic>.from(json["responseFormat"].map((x) => x)),
    globalGalleryIds: List<dynamic>.from(json["globalGalleryIds"].map((x) => x)),
    categoryIds: List<dynamic>.from(json["categoryIds"].map((x) => x)),
    docTypes: List<dynamic>.from(json["docTypes"].map((x) => x)),
    types: List<dynamic>.from(json["types"].map((x) => x)),
    limit: json["limit"],
    skip: json["skip"],
    searchingText: json["searchingText"],
  );

  Map<String, dynamic> toJson() => {
    "statusArray": List<dynamic>.from(statusArray.map((x) => x)),
    "screenType": List<dynamic>.from(screenType.map((x) => x)),
    "responseFormat": List<dynamic>.from(responseFormat.map((x) => x)),
    "globalGalleryIds": List<dynamic>.from(globalGalleryIds.map((x) => x)),
    "categoryIds": List<dynamic>.from(categoryIds.map((x) => x)),
    "docTypes": List<dynamic>.from(docTypes.map((x) => x)),
    "types": List<dynamic>.from(types.map((x) => x)),
    "limit": limit,
    "skip": skip,
    "searchingText": searchingText,
  };
}
