import 'package:json_annotation/json_annotation.dart';

part 'vehicle_details_json.g.dart';

@JsonSerializable()
class VehicleDetailsJson {
  VehicleDetailsJson({
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

  factory VehicleDetailsJson.fromJson(Map<String, dynamic> json) =>
      _$VehicleDetailsJsonFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleDetailsJsonToJson(this);

  int alertCount;
  List<Attribute> attributes;
  double averageKmPerDay;
  double averageMilesPerDay;
  String avgDistanceSource;
  int avgKmPerYear;
  int avgMilesPerYear;
  String bodyTypeDescription;
  String confirmedServiceDate;
  DateTime createDate;
  List<DisplayRecordElement> displayRecords;
  String driveline;
  String engineInformation;
  int estimatedCurrentKm;
  int estimatedCurrentMileage;
  List<Event> events;
  List<dynamic> favoriteShops;
  int id;
  String lastModDate;
  DateTime lastOdoDate;
  int lastOdoKm;
  int lastOdoMileage;
  String lastOdoSource;
  DateTime lastOwnershipDate;
  String licensePlate;
  String make;
  bool metric;
  String model;
  String nickname;
  int numberOfAfterMarketServiceRecords;
  int numberOfDealerServiceRecords;
  int numberOfDisplayableRecords;
  int numberOfRecallRecords;
  int numberOfServiceRecords;
  List<dynamic> pickListShops;
  String postalCode;
  bool recallDataDisplayable;
  List<dynamic> recallDismissals;
  List<RecentShop> recentShops;
  ServiceScheduleIdentifier serviceScheduleIdentifier;
  List<dynamic> severeEvents;
  String signupType;
  String socialSharingDescription;
  bool submodelSelected;
  List<dynamic> suggestedShops;
  TradeInLeads tradeInLeads;
  List<UserEventInterval> userEventIntervals;
  String vehicleDescription;
  List<dynamic> vehiclePhotos;
  String vin;
  WellMaintainedBadge wellMaintainedBadge;
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
class DisplayRecordElement {
  DisplayRecordElement({
    this.activeShop,
    this.comments,
    this.compCode,
    this.date,
    this.detailPageUrl,
    this.details,
    this.displayDate,
    this.displayed,
    this.eligibleForReview,
    this.loadDate,
    this.motorOperationIds,
    this.odometer,
    this.odometerKm,
    this.origin,
    this.recallDetails,
    this.receiptPhotoIds,
    this.recordId,
    this.review,
    this.shop,
    this.source,
    this.state,
    this.type,
    this.userRecordId,
    this.vhdbId,
    this.vhdbRecordId,
  });

  factory DisplayRecordElement.fromJson(Map<String, dynamic> json) =>
      _$DisplayRecordElementFromJson(json);

  Map<String, dynamic> toJson() => _$DisplayRecordElementToJson(this);

  bool activeShop;
  String comments;
  String compCode;
  DateTime date;
  String detailPageUrl;
  List<Detail> details;
  String displayDate;
  bool displayed;
  bool eligibleForReview;
  DateTime loadDate;
  List<int> motorOperationIds;
  String odometer;
  String odometerKm;
  String origin;
  List<dynamic> recallDetails;
  List<dynamic> receiptPhotoIds;
  int recordId;
  String review;
  PurpleShop shop;
  List<Detail> source;
  String state;
  String type;
  int userRecordId;
  String vhdbId;
  int vhdbRecordId;
}

@JsonSerializable()
class Detail {
  Detail({
    this.bold,
    this.breakAfter,
    this.breakBefore,
    this.concat,
    this.href,
    this.postText,
    this.preText,
    this.text,
    this.vtfId,
  });

  factory Detail.fromJson(Map<String, dynamic> json) => _$DetailFromJson(json);

  Map<String, dynamic> toJson() => _$DetailToJson(this);

  bool bold;
  bool breakAfter;
  bool breakBefore;
  bool concat;
  String href;
  String postText;
  String preText;
  String text;
  String vtfId;
}

@JsonSerializable()
class PurpleShop {
  PurpleShop({
    this.serviceAdvantageInd,
    this.images,
  });

  factory PurpleShop.fromJson(Map<String, dynamic> json) =>
      _$PurpleShopFromJson(json);

  Map<String, dynamic> toJson() => _$PurpleShopToJson(this);

  String serviceAdvantageInd;
  String images;
}

@JsonSerializable()
class Event {
  Event({
    this.dashboardDetails,
    this.displayable,
    this.inferred,
    this.interval,
    this.intervalKm,
    this.intervalMonth,
    this.intervalOptions,
    this.intervals,
    this.label,
    this.lastService,
    this.lastServiceKm,
    this.motorIds,
    this.nextService,
    this.nextServiceKm,
    this.percentComplete,
    this.recommendedInterval,
    this.recommendedIntervalKm,
    this.statusCode,
    this.statusDisplay,
    this.statusNumber,
    this.trackable,
    this.type,
    this.url,
    this.vtfIds,
  });

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  Map<String, dynamic> toJson() => _$EventToJson(this);

  List<DashboardDetail> dashboardDetails;
  bool displayable;
  bool inferred;
  int interval;
  int intervalKm;
  int intervalMonth;
  String intervalOptions;
  List<Interval> intervals;
  String label;
  String lastService;
  String lastServiceKm;
  List<int> motorIds;
  String nextService;
  String nextServiceKm;
  dynamic percentComplete;
  dynamic recommendedInterval;
  int recommendedIntervalKm;
  String statusCode;
  String statusDisplay;
  String statusNumber;
  bool trackable;
  String type;
  String url;
  List<int> vtfIds;
}

@JsonSerializable()
class DashboardDetail {
  DashboardDetail({
    this.displayRecord,
    this.label,
    this.order,
  });

  factory DashboardDetail.fromJson(Map<String, dynamic> json) =>
      _$DashboardDetailFromJson(json);

  Map<String, dynamic> toJson() => _$DashboardDetailToJson(this);

  DashboardDetailDisplayRecord displayRecord;
  String label;
  String order;
}

@JsonSerializable()
class DashboardDetailDisplayRecord {
  DashboardDetailDisplayRecord({
    this.activeShop,
    this.comments,
    this.compCode,
    this.date,
    this.detailPageUrl,
    this.details,
    this.displayDate,
    this.displayed,
    this.eligibleForReview,
    this.loadDate,
    this.motorOperationIds,
    this.odometer,
    this.odometerKm,
    this.origin,
    this.recallDetails,
    this.receiptPhotoIds,
    this.recordId,
    this.review,
    this.shop,
    this.source,
    this.state,
    this.type,
    this.userRecordId,
    this.vhdbId,
    this.vhdbRecordId,
  });

  factory DashboardDetailDisplayRecord.fromJson(Map<String, dynamic> json) =>
      _$DashboardDetailDisplayRecordFromJson(json);

  Map<String, dynamic> toJson() => _$DashboardDetailDisplayRecordToJson(this);

  bool activeShop;
  String comments;
  String compCode;
  DateTime date;
  String detailPageUrl;
  List<Detail> details;
  String displayDate;
  bool displayed;
  bool eligibleForReview;
  String loadDate;
  String motorOperationIds;
  String odometer;
  String odometerKm;
  String origin;
  String recallDetails;
  String receiptPhotoIds;
  int recordId;
  String review;
  FluffyShop shop;
  dynamic source;
  String state;
  String type;
  int userRecordId;
  String vhdbId;
  int vhdbRecordId;
}

@JsonSerializable()
class FluffyShop {
  FluffyShop();

  factory FluffyShop.fromJson(Map<String, dynamic> json) =>
      _$FluffyShopFromJson(json);

  Map<String, dynamic> toJson() => _$FluffyShopToJson(this);
}

@JsonSerializable()
class Interval {
  Interval({
    this.interval,
    this.intervalDescription,
    this.recommended,
  });

  factory Interval.fromJson(Map<String, dynamic> json) =>
      _$IntervalFromJson(json);

  Map<String, dynamic> toJson() => _$IntervalToJson(this);

  int interval;
  String intervalDescription;
  bool recommended;
}

@JsonSerializable()
class RecentShop {
  RecentShop({
    this.active,
    this.address,
    this.analytics,
    this.averageRating,
    this.carfax4Life,
    this.city,
    this.compCode,
    this.companyName,
    this.countryCode,
    this.dealer,
    this.detailPageUrl,
    this.distance,
    this.isCarfax4Life,
    this.isTestShop,
    this.isTradeInLeadsEligible,
    this.landingPageUrl,
    this.latitude,
    this.longitude,
    this.numberOfReviews,
    this.opportunityName,
    this.ownerGroupCompCode,
    this.phoneNumber,
    this.profileCode,
    this.reviews,
    this.salesForceId,
    this.serviceAdvantageInd,
    this.serviceLinkStatus,
    this.shopLoyalty,
    this.shopProfile,
    this.slug,
    this.state,
    this.topMakes,
    this.topServices,
    this.totalCompletedProfiles,
    this.totalProfiles,
    this.twilioPhoneData,
    this.webAddress,
    this.zipCode,
  });

  factory RecentShop.fromJson(Map<String, dynamic> json) =>
      _$RecentShopFromJson(json);

  Map<String, dynamic> toJson() => _$RecentShopToJson(this);

  bool active;
  String address;
  List<Analytic> analytics;
  int averageRating;
  String carfax4Life;
  String city;
  String compCode;
  String companyName;
  String countryCode;
  bool dealer;
  String detailPageUrl;
  String distance;
  bool isCarfax4Life;
  bool isTestShop;
  bool isTradeInLeadsEligible;
  String landingPageUrl;
  double latitude;
  double longitude;
  int numberOfReviews;
  String opportunityName;
  String ownerGroupCompCode;
  String phoneNumber;
  String profileCode;
  List<dynamic> reviews;
  String salesForceId;
  String serviceAdvantageInd;
  String serviceLinkStatus;
  String shopLoyalty;
  String shopProfile;
  String slug;
  String state;
  List<dynamic> topMakes;
  List<dynamic> topServices;
  int totalCompletedProfiles;
  int totalProfiles;
  String twilioPhoneData;
  String webAddress;
  String zipCode;
}

@JsonSerializable()
class Analytic {
  Analytic({
    this.favorites,
  });

  factory Analytic.fromJson(Map<String, dynamic> json) =>
      _$AnalyticFromJson(json);

  Map<String, dynamic> toJson() => _$AnalyticToJson(this);

  String favorites;
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

  String cylinders;
  int engineBaseId;
  int engineDesignationId;
  String fuelType;
  int id;
  String liter;
  String modelName;
  int submodelId;
  String submodelName;
  String vinSelectPattern;
}

@JsonSerializable()
class TradeInLeads {
  TradeInLeads({
    this.isEligible,
  });

  factory TradeInLeads.fromJson(Map<String, dynamic> json) =>
      _$TradeInLeadsFromJson(json);

  Map<String, dynamic> toJson() => _$TradeInLeadsToJson(this);

  bool isEligible;
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
  String kmInterval;
  String mileageInterval;
  String monthInterval;
}

@JsonSerializable()
class WellMaintainedBadge {
  WellMaintainedBadge({
    this.atRisk,
    this.atRiskByMiles,
    this.atRiskByMonths,
    this.intervalKm,
    this.intervalMiles,
    this.intervalMonths,
    this.qualifies,
  });

  factory WellMaintainedBadge.fromJson(Map<String, dynamic> json) =>
      _$WellMaintainedBadgeFromJson(json);

  Map<String, dynamic> toJson() => _$WellMaintainedBadgeToJson(this);

  bool atRisk;
  bool atRiskByMiles;
  bool atRiskByMonths;
  String intervalKm;
  int intervalMiles;
  int intervalMonths;
  bool qualifies;
}
