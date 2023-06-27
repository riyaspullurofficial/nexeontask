// To parse this JSON data, do
//
//     final detailsModal = detailsModalFromJson(jsonString);

import 'dart:convert';

DetailsModal detailsModalFromJson(String str) => DetailsModal.fromJson(json.decode(str));

String detailsModalToJson(DetailsModal data) => json.encode(data.toJson());

class DetailsModal {
  String message;
  Data data;

  DetailsModal({
    required this.message,
    required this.data,
  });

  factory DetailsModal.fromJson(Map<String, dynamic> json) => DetailsModal(
    message: json["message"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "data": data.toJson(),
  };
}

class Data {
  List<ListElement> list;
  int totalCount;

  Data({
    required this.list,
    required this.totalCount,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    list: List<ListElement>.from(json["list"].map((x) => ListElement.fromJson(x))),
    totalCount: json["totalCount"],
  );

  Map<String, dynamic> toJson() => {
    "list": List<dynamic>.from(list.map((x) => x.toJson())),
    "totalCount": totalCount,
  };
}

class ListElement {
  String id;
  String name;
  dynamic globalGalleryCategoryId;
  int docType;
  int uid;
  int type;
  String url;
  String? createdUserId;
  int createdAt;
  dynamic updatedUserId;
  int updatedAt;
  int status;
  int v;

  ListElement({
    required this.id,
    required this.name,
    this.globalGalleryCategoryId,
    required this.docType,
    required this.uid,
    required this.type,
    required this.url,
    this.createdUserId,
    required this.createdAt,
    this.updatedUserId,
    required this.updatedAt,
    required this.status,
    required this.v,
  });

  factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
    id: json["_id"],
    name: json["_name"],
    globalGalleryCategoryId: json["_globalGalleryCategoryId"],
    docType: json["_docType"],
    uid: json["_uid"],
    type: json["_type"],
    url: json["_url"],
    createdUserId: json["_createdUserId"],
    createdAt: json["_createdAt"],
    updatedUserId: json["_updatedUserId"],
    updatedAt: json["_updatedAt"],
    status: json["_status"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "_name": name,
    "_globalGalleryCategoryId": globalGalleryCategoryId,
    "_docType": docType,
    "_uid": uid,
    "_type": type,
    "_url": url,
    "_createdUserId": createdUserId,
    "_createdAt": createdAt,
    "_updatedUserId": updatedUserId,
    "_updatedAt": updatedAt,
    "_status": status,
    "__v": v,
  };
}
