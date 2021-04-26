import 'package:json_annotation/json_annotation.dart';

part 'vehicles_json.g.dart';

// @JsonSerializable()
// class VehiclesJson {
//   VehiclesJson({this.listings});

//   factory VehiclesJson.fromJson(Map<String, dynamic> json) =>
//       _$VehiclesJsonFromJson(json);
//   Map<String, dynamic> toJson() => _$VehiclesJsonToJson(this);

//   final Listings listings;
// }

@JsonSerializable()
class Listings {
  Listings({
    this.accidentHistory,
    this.advantage,
    this.atomOtherOptions,
    this.atomTopOptions,
    this.backfill,
    this.badge,
    this.bedLength,
    this.bodytype,
    this.cabType,
    this.certified,
    this.currentPrice,
    this.dealer,
    this.dealerType,
    this.displacement,
    this.distanceToDealer,
    this.drivetype,
    this.engine,
    this.exteriorColor,
    this.firstSeen,
    this.followCount,
    this.followedAt,
    this.following,
    this.fuel,
    this.hasViewed,
    this.id,
    this.imageCount,
    this.images,
    this.interiorColor,
    this.isEnriched,
    this.isOemPromoted,
    this.isOemRefundFlag,
    this.listPrice,
    this.make,
    this.mileage,
    this.model,
    this.monthlyPaymentEstimate,
    this.mpgCity,
    this.mpgHighway,
    this.noAccidents,
    this.oneOwner,
    this.onePrice,
    this.onePriceArrows,
    this.onlineOnly,
    this.ownerHistory,
    this.personalUse,
    this.placed,
    this.recordType,
    this.sentLead,
    this.serviceHistory,
    this.serviceRecords,
    this.sortScore,
    this.stockNumber,
    this.subTrim,
    this.topOptions,
    this.tpCostPerVdp,
    this.tpEligible,
    this.transmission,
    this.trim,
    this.vdpUrl,
    this.vehicleCondition,
    this.vehicleUseHistory,
    this.vin,
    this.windowSticker,
    this.year,
  });

  factory Listings.fromJson(Map<String, dynamic> json) =>
      _$ListingsFromJson(json);

  Map<String, dynamic> toJson() => _$ListingsToJson(this);

  History accidentHistory;
  bool advantage;
  List<String> atomOtherOptions;
  List<String> atomTopOptions;
  bool backfill;
  String badge;
  String bedLength;
  String bodytype;
  String cabType;
  bool certified;
  int currentPrice;
  Dealer dealer;
  String dealerType;
  String displacement;
  double distanceToDealer;
  String drivetype;
  String engine;
  String exteriorColor;
  DateTime firstSeen;
  int followCount;
  int followedAt;
  bool following;
  String fuel;
  bool hasViewed;
  String id;
  int imageCount;
  Images images;
  String interiorColor;
  bool isEnriched;
  bool isOemPromoted;
  bool isOemRefundFlag;
  int listPrice;
  String make;
  int mileage;
  String model;
  MonthlyPaymentEstimate monthlyPaymentEstimate;
  int mpgCity;
  int mpgHighway;
  bool noAccidents;
  bool oneOwner;
  int onePrice;
  List<OnePriceArrow> onePriceArrows;
  bool onlineOnly;
  History ownerHistory;
  bool personalUse;
  bool placed;
  String recordType;
  bool sentLead;
  ServiceHistory serviceHistory;
  bool serviceRecords;
  double sortScore;
  String stockNumber;
  String subTrim;
  List<String> topOptions;
  double tpCostPerVdp;
  bool tpEligible;
  String transmission;
  String trim;
  String vdpUrl;
  String vehicleCondition;
  History vehicleUseHistory;
  String vin;
  String windowSticker;
  int year;
}

@JsonSerializable()
class History {
  History({
    this.accidentSummary,
    this.icon,
    this.iconUrl,
    this.text,
    this.history,
  });

  factory History.fromJson(Map<String, dynamic> json) =>
      _$HistoryFromJson(json);

  Map<String, dynamic> toJson() => _$HistoryToJson(this);

  List<String> accidentSummary;
  String icon;
  String iconUrl;
  String text;
  List<AccidentHistoryHistory> history;
}

@JsonSerializable()
class AccidentHistoryHistory {
  AccidentHistoryHistory({
    this.city,
    this.endOwnershipDate,
    this.ownerNumber,
    this.purchaseDate,
    this.state,
    this.averageMilesPerYear,
    this.useType,
  });

  factory AccidentHistoryHistory.fromJson(Map<String, dynamic> json) =>
      _$AccidentHistoryHistoryFromJson(json);

  Map<String, dynamic> toJson() => _$AccidentHistoryHistoryToJson(this);

  String city;
  String endOwnershipDate;
  int ownerNumber;
  String purchaseDate;
  String state;
  int averageMilesPerYear;
  String useType;
}

@JsonSerializable()
class Dealer {
  Dealer({
    this.address,
    this.backfill,
    this.carfaxId,
    this.cfxMicrositeUrl,
    this.city,
    this.dealerAverageRating,
    this.dealerInventoryUrl,
    this.dealerLeadType,
    this.dealerReviewComments,
    this.dealerReviewCount,
    this.dealerReviewDate,
    this.dealerReviewRating,
    this.dealerReviewReviewer,
    this.dealerReviewTitle,
    this.latitude,
    this.longitude,
    this.name,
    this.onlineOnly,
    this.phone,
    this.state,
    this.zip,
  });

  factory Dealer.fromJson(Map<String, dynamic> json) => _$DealerFromJson(json);

  Map<String, dynamic> toJson() => _$DealerToJson(this);

  String address;
  bool backfill;
  String carfaxId;
  String cfxMicrositeUrl;
  String city;
  double dealerAverageRating;
  String dealerInventoryUrl;
  String dealerLeadType;
  String dealerReviewComments;
  int dealerReviewCount;
  DateTime dealerReviewDate;
  int dealerReviewRating;
  String dealerReviewReviewer;
  String dealerReviewTitle;
  String latitude;
  String longitude;
  String name;
  bool onlineOnly;
  String phone;
  String state;
  String zip;
}

@JsonSerializable()
class Images {
  Images({
    this.baseUrl,
    this.firstPhoto,
    this.large,
    this.medium,
    this.small,
  });

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);

  Map<String, dynamic> toJson() => _$ImagesToJson(this);

  String baseUrl;
  FirstPhoto firstPhoto;
  List<String> large;
  List<String> medium;
  List<String> small;
}

@JsonSerializable()
class FirstPhoto {
  FirstPhoto({
    this.large,
    this.medium,
    this.small,
  });

  factory FirstPhoto.fromJson(Map<String, dynamic> json) =>
      _$FirstPhotoFromJson(json);

  Map<String, dynamic> toJson() => _$FirstPhotoToJson(this);

  String large;
  String medium;
  String small;
}

@JsonSerializable()
class MonthlyPaymentEstimate {
  MonthlyPaymentEstimate({
    this.downPaymentAmount,
    this.downPaymentPercent,
    this.interestRate,
    this.loanAmount,
    this.monthlyPayment,
    this.price,
    this.termInMonths,
  });

  factory MonthlyPaymentEstimate.fromJson(Map<String, dynamic> json) =>
      _$MonthlyPaymentEstimateFromJson(json);

  Map<String, dynamic> toJson() => _$MonthlyPaymentEstimateToJson(this);

  double downPaymentAmount;
  int downPaymentPercent;
  int interestRate;
  double loanAmount;
  double monthlyPayment;
  int price;
  int termInMonths;
}

@JsonSerializable()
class OnePriceArrow {
  OnePriceArrow({
    this.arrow,
    this.arrowUrl,
    this.icon,
    this.iconUrl,
    this.order,
    this.text,
  });

  factory OnePriceArrow.fromJson(Map<String, dynamic> json) =>
      _$OnePriceArrowFromJson(json);

  Map<String, dynamic> toJson() => _$OnePriceArrowToJson(this);

  String arrow;
  String arrowUrl;
  String icon;
  String iconUrl;
  int order;
  String text;
}

@JsonSerializable()
class ServiceHistory {
  ServiceHistory({
    this.history,
    this.icon,
    this.iconUrl,
    this.number,
    this.text,
  });

  factory ServiceHistory.fromJson(Map<String, dynamic> json) =>
      _$ServiceHistoryFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceHistoryToJson(this);

  List<ServiceHistoryHistory> history;
  String icon;
  String iconUrl;
  int number;
  String text;
}

@JsonSerializable()
class ServiceHistoryHistory {
  ServiceHistoryHistory({
    this.city,
    this.date,
    this.description,
    this.odometerReading,
    this.source,
    this.state,
  });

  factory ServiceHistoryHistory.fromJson(Map<String, dynamic> json) =>
      _$ServiceHistoryHistoryFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceHistoryHistoryToJson(this);

  String city;
  String date;
  String description;
  int odometerReading;
  String source;
  String state;
}
