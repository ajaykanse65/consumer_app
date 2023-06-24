// To parse this JSON data, do
//
//     final otpModel = otpModelFromJson(jsonString);

import 'dart:convert';

OtpModel otpModelFromJson(String str) => OtpModel.fromJson(json.decode(str));

String otpModelToJson(OtpModel data) => json.encode(data.toJson());

class OtpModel {
  int status;
  String statusMsg;
  Data data;

  OtpModel({
    required this.status,
    required this.statusMsg,
    required this.data,
  });

  factory OtpModel.fromJson(Map<String, dynamic> json) => OtpModel(
    status: json["status"],
    statusMsg: json["statusMsg"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "statusMsg": statusMsg,
    "data": data.toJson(),
  };
}

class Data {
  int newCustomer;
  String customerId;
  String profileActivated;
  String userId;
  String affiliateId;

  Data({
    required this.newCustomer,
    required this.customerId,
    required this.profileActivated,
    required this.userId,
    required this.affiliateId,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    newCustomer: json["new_customer"],
    customerId: json["customer_id"],
    profileActivated: json["profile_activated"],
    userId: json["user_id"],
    affiliateId: json["affiliate_id"],
  );

  Map<String, dynamic> toJson() => {
    "new_customer": newCustomer,
    "customer_id": customerId,
    "profile_activated": profileActivated,
    "user_id": userId,
    "affiliate_id": affiliateId,
  };
}




// class OtpModel {
//   int status;
//   String statusMsg;
//   Data data;
//
//   OtpModel({
//     required this.status,
//     required this.statusMsg,
//     required this.data,
//   });
//
//   factory OtpModel.fromJson(Map<String, dynamic> json) {
//     return OtpModel(
//       status: json['status'],
//       statusMsg: json['statusMsg'],
//       data: Data.fromJson(json['data']),
//     );
//   }
// }
//
// class Data {
//   int newCustomer;
//   String customerId;
//   String profileActivated;
//   String userId;
//   String affiliateId;
//
//   Data({
//     required this.newCustomer,
//     required this.customerId,
//     required this.profileActivated,
//     required this.userId,
//     required this.affiliateId,
//   });
//
//   factory Data.fromJson(Map<String, dynamic> json) {
//     return Data(
//       newCustomer: json['new_customer'],
//       customerId: json['customer_id'],
//       profileActivated: json['profile_activated'],
//       userId: json['user_id'],
//       affiliateId: json['affiliate_id'],
//     );
//   }
// }

