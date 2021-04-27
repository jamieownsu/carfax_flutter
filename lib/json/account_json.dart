import 'package:json_annotation/json_annotation.dart';

part 'account_json.g.dart';

@JsonSerializable()
class Account {
  Account({
    this.accountAttributes,
    this.accountCreationDate,
    this.agree,
    this.consumerSignup,
    this.email,
    this.facebookId,
    this.favoriteShopCompCode,
    this.firstName,
    this.forcedOneAccount,
    this.fraudAccount,
    this.fraudAccountWatch,
    this.id,
    this.isCanadian,
    this.language,
    this.maxAddedVehiclesCount,
    this.maxVehiclesCount,
    this.newPassword,
    this.oneAccountId,
    this.partnerId,
    this.postalCode,
    this.signUp,
    this.suggestedViNs,
    this.token,
    this.type,
    this.vehicles,
    this.verifyEmail,
  });

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  Map<String, dynamic> toJson() => _$AccountToJson(this);

  List<dynamic> accountAttributes;
  DateTime accountCreationDate;
  bool agree;
  ConsumerSignup consumerSignup;
  String email;
  dynamic facebookId;
  dynamic favoriteShopCompCode;
  dynamic firstName;
  dynamic forcedOneAccount;
  dynamic fraudAccount;
  List<FraudAccountWatch> fraudAccountWatch;
  int id;
  bool isCanadian;
  String language;
  int maxAddedVehiclesCount;
  int maxVehiclesCount;
  dynamic newPassword;
  int oneAccountId;
  dynamic partnerId;
  String postalCode;
  dynamic signUp;
  List<dynamic> suggestedViNs;
  dynamic token;
  dynamic type;
  List<Vehicle> vehicles;
  dynamic verifyEmail;
}

@JsonSerializable()
class ConsumerSignup {
  ConsumerSignup({
    this.account,
    this.compCode,
    this.id,
    this.salesForceId,
    this.type,
  });

  factory ConsumerSignup.fromJson(Map<String, dynamic> json) =>
      _$ConsumerSignupFromJson(json);

  Map<String, dynamic> toJson() => _$ConsumerSignupToJson(this);

  AccountClass account;
  dynamic compCode;
  int id;
  String salesForceId;
  String type;
}

@JsonSerializable()
class AccountClass {
  AccountClass({
    this.ref,
    this.accountClass,
  });

  factory AccountClass.fromJson(Map<String, dynamic> json) =>
      _$AccountClassFromJson(json);

  Map<String, dynamic> toJson() => _$AccountClassToJson(this);

  String ref;
  String accountClass;
}

@JsonSerializable()
class FraudAccountWatch {
  FraudAccountWatch({
    this.account,
    this.createDate,
    this.id,
    this.vin,
  });

  factory FraudAccountWatch.fromJson(Map<String, dynamic> json) =>
      _$FraudAccountWatchFromJson(json);

  Map<String, dynamic> toJson() => _$FraudAccountWatchToJson(this);

  AccountClass account;
  DateTime createDate;
  int id;
  String vin;
}

@JsonSerializable()
class Vehicle {
  Vehicle({
    this.alertCount,
    this.attributes,
    this.averageKmPerDay,
    this.averageMilesPerDay,
    this.avgDistanceSource,
    this.avgKmPerYear,
    this.avgMilesPerYear,
    this.bodyTypeDescription,
    this.confirmedServiceDate,
    this.createDate,
    this.displayRecords,
    this.driveline,
    this.engineInformation,
    this.estimatedCurrentKm,
    this.estimatedCurrentMileage,
    this.events,
    this.favoriteShops,
    this.id,
    this.lastModDate,
    this.lastOdoDate,
    this.lastOdoKm,
    this.lastOdoMileage,
    this.lastOdoSource,
    this.lastOwnershipDate,
    this.licensePlate,
    this.make,
    this.metric,
    this.model,
    this.nickname,
    this.numberOfAfterMarketServiceRecords,
    this.numberOfDealerServiceRecords,
    this.numberOfDisplayableRecords,
    this.numberOfRecallRecords,
    this.numberOfServiceRecords,
    this.pickListShops,
    this.postalCode,
    this.recallDataDisplayable,
    this.recallDismissals,
    this.recentShops,
    this.serviceScheduleIdentifier,
    this.severeEvents,
    this.signupType,
    this.socialSharingDescription,
    this.submodelSelected,
    this.suggestedShops,
    this.tradeInLeads,
    this.userEventIntervals,
    this.vehicleDescription,
    this.vehiclePhotos,
    this.vin,
    this.wellMaintainedBadge,
    this.year,
  });

  factory Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleToJson(this);

  int alertCount;
  List<Attribute> attributes;
  double averageKmPerDay;
  double averageMilesPerDay;
  String avgDistanceSource;
  int avgKmPerYear;
  int avgMilesPerYear;
  dynamic bodyTypeDescription;
  dynamic confirmedServiceDate;
  DateTime createDate;
  List<dynamic> displayRecords;
  dynamic driveline;
  dynamic engineInformation;
  int estimatedCurrentKm;
  int estimatedCurrentMileage;
  List<dynamic> events;
  List<dynamic> favoriteShops;
  int id;
  dynamic lastModDate;
  DateTime lastOdoDate;
  int lastOdoKm;
  int lastOdoMileage;
  String lastOdoSource;
  DateTime lastOwnershipDate;
  dynamic licensePlate;
  String make;
  bool metric;
  String model;
  dynamic nickname;
  int numberOfAfterMarketServiceRecords;
  int numberOfDealerServiceRecords;
  int numberOfDisplayableRecords;
  int numberOfRecallRecords;
  int numberOfServiceRecords;
  List<dynamic> pickListShops;
  String postalCode;
  dynamic recallDataDisplayable;
  List<dynamic> recallDismissals;
  List<dynamic> recentShops;
  ServiceScheduleIdentifier serviceScheduleIdentifier;
  List<dynamic> severeEvents;
  dynamic signupType;
  String socialSharingDescription;
  bool submodelSelected;
  List<dynamic> suggestedShops;
  dynamic tradeInLeads;
  List<UserEventInterval> userEventIntervals;
  String vehicleDescription;
  List<dynamic> vehiclePhotos;
  String vin;
  dynamic wellMaintainedBadge;
  String year;
}

@JsonSerializable()
class Attribute {
  Attribute({
    this.fieldName,
    this.fieldValue,
    this.id,
  });

  factory Attribute.fromJson(Map<String, dynamic> json) =>
      _$AttributeFromJson(json);

  Map<String, dynamic> toJson() => _$AttributeToJson(this);

  String fieldName;
  String fieldValue;
  int id;
}

@JsonSerializable()
class ServiceScheduleIdentifier {
  ServiceScheduleIdentifier({
    this.cylinders,
    this.engineBaseId,
    this.engineDesignationId,
    this.fuelType,
    this.id,
    this.liter,
    this.modelName,
    this.submodelId,
    this.submodelName,
    this.vinSelectPattern,
  });

  factory ServiceScheduleIdentifier.fromJson(Map<String, dynamic> json) =>
      _$ServiceScheduleIdentifierFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceScheduleIdentifierToJson(this);

  dynamic cylinders;
  int engineBaseId;
  int engineDesignationId;
  dynamic fuelType;
  int id;
  dynamic liter;
  dynamic modelName;
  int submodelId;
  dynamic submodelName;
  String vinSelectPattern;
}

@JsonSerializable()
class UserEventInterval {
  UserEventInterval({
    this.dayInterval,
    this.eventType,
    this.id,
    this.kmInterval,
    this.mileageInterval,
    this.monthInterval,
  });

  factory UserEventInterval.fromJson(Map<String, dynamic> json) =>
      _$UserEventIntervalFromJson(json);

  Map<String, dynamic> toJson() => _$UserEventIntervalToJson(this);

  int dayInterval;
  String eventType;
  int id;
  dynamic kmInterval;
  dynamic mileageInterval;
  dynamic monthInterval;
}
