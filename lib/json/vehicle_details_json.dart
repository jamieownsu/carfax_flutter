// To parse this JSON data, do
//
//     final vehicleDetails = vehicleDetailsFromJson(jsonString);

import 'dart:convert';

VehicleDetails vehicleDetailsFromJson(String str) => VehicleDetails.fromJson(json.decode(str));

String vehicleDetailsToJson(VehicleDetails data) => json.encode(data.toJson());

class VehicleDetails {
  int alertCount;
  List<Attribute> attributes;
  double averageKmPerDay;
  double averageMilesPerDay;
  AvgDistanceSource avgDistanceSource;
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
  AvgDistanceSource lastOdoSource;
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

  VehicleDetails({
    required this.alertCount,
    required this.attributes,
    required this.averageKmPerDay,
    required this.averageMilesPerDay,
    required this.avgDistanceSource,
    required this.avgKmPerYear,
    required this.avgMilesPerYear,
    required this.bodyTypeDescription,
    required this.confirmedServiceDate,
    required this.createDate,
    required this.displayRecords,
    required this.driveline,
    required this.engineInformation,
    required this.estimatedCurrentKm,
    required this.estimatedCurrentMileage,
    required this.events,
    required this.favoriteShops,
    required this.id,
    required this.lastModDate,
    required this.lastOdoDate,
    required this.lastOdoKm,
    required this.lastOdoMileage,
    required this.lastOdoSource,
    required this.lastOwnershipDate,
    required this.licensePlate,
    required this.make,
    required this.metric,
    required this.model,
    required this.nickname,
    required this.numberOfAfterMarketServiceRecords,
    required this.numberOfDealerServiceRecords,
    required this.numberOfDisplayableRecords,
    required this.numberOfRecallRecords,
    required this.numberOfServiceRecords,
    required this.pickListShops,
    required this.postalCode,
    required this.recallDataDisplayable,
    required this.recallDismissals,
    required this.recentShops,
    required this.serviceScheduleIdentifier,
    required this.severeEvents,
    required this.signupType,
    required this.socialSharingDescription,
    required this.submodelSelected,
    required this.suggestedShops,
    required this.tradeInLeads,
    required this.userEventIntervals,
    required this.vehicleDescription,
    required this.vehiclePhotos,
    required this.vin,
    required this.wellMaintainedBadge,
    required this.year,
  });

  factory VehicleDetails.fromJson(Map<String, dynamic> json) => VehicleDetails(
        alertCount: json["alertCount"],
        attributes: List<Attribute>.from(json["attributes"].map((x) => Attribute.fromJson(x))),
        averageKmPerDay: json["averageKmPerDay"]?.toDouble(),
        averageMilesPerDay: json["averageMilesPerDay"]?.toDouble(),
        avgDistanceSource: avgDistanceSourceValues.map[json["avgDistanceSource"]]!,
        avgKmPerYear: json["avgKmPerYear"],
        avgMilesPerYear: json["avgMilesPerYear"],
        bodyTypeDescription: json["bodyTypeDescription"],
        confirmedServiceDate: json["confirmedServiceDate"],
        createDate: DateTime.parse(json["createDate"]),
        displayRecords: List<DisplayRecordElement>.from(json["displayRecords"].map((x) => DisplayRecordElement.fromJson(x))),
        driveline: json["driveline"],
        engineInformation: json["engineInformation"],
        estimatedCurrentKm: json["estimatedCurrentKm"],
        estimatedCurrentMileage: json["estimatedCurrentMileage"],
        events: List<Event>.from(json["events"].map((x) => Event.fromJson(x))),
        favoriteShops: List<dynamic>.from(json["favoriteShops"].map((x) => x)),
        id: json["id"],
        lastModDate: json["lastModDate"],
        lastOdoDate: DateTime.parse(json["lastOdoDate"]),
        lastOdoKm: json["lastOdoKm"],
        lastOdoMileage: json["lastOdoMileage"],
        lastOdoSource: avgDistanceSourceValues.map[json["lastOdoSource"]]!,
        lastOwnershipDate: DateTime.parse(json["lastOwnershipDate"]),
        licensePlate: json["licensePlate"],
        make: json["make"],
        metric: json["metric"],
        model: json["model"],
        nickname: json["nickname"],
        numberOfAfterMarketServiceRecords: json["numberOfAfterMarketServiceRecords"],
        numberOfDealerServiceRecords: json["numberOfDealerServiceRecords"],
        numberOfDisplayableRecords: json["numberOfDisplayableRecords"],
        numberOfRecallRecords: json["numberOfRecallRecords"],
        numberOfServiceRecords: json["numberOfServiceRecords"],
        pickListShops: List<dynamic>.from(json["pickListShops"].map((x) => x)),
        postalCode: json["postalCode"],
        recallDataDisplayable: json["recallDataDisplayable"],
        recallDismissals: List<dynamic>.from(json["recallDismissals"].map((x) => x)),
        recentShops: List<RecentShop>.from(json["recentShops"].map((x) => RecentShop.fromJson(x))),
        serviceScheduleIdentifier: ServiceScheduleIdentifier.fromJson(json["serviceScheduleIdentifier"]),
        severeEvents: List<dynamic>.from(json["severeEvents"].map((x) => x)),
        signupType: json["signupType"],
        socialSharingDescription: json["socialSharingDescription"],
        submodelSelected: json["submodelSelected"],
        suggestedShops: List<dynamic>.from(json["suggestedShops"].map((x) => x)),
        tradeInLeads: TradeInLeads.fromJson(json["tradeInLeads"]),
        userEventIntervals: List<UserEventInterval>.from(json["userEventIntervals"].map((x) => UserEventInterval.fromJson(x))),
        vehicleDescription: json["vehicleDescription"],
        vehiclePhotos: List<dynamic>.from(json["vehiclePhotos"].map((x) => x)),
        vin: json["vin"],
        wellMaintainedBadge: WellMaintainedBadge.fromJson(json["wellMaintainedBadge"]),
        year: json["year"],
      );

  Map<String, dynamic> toJson() => {
        "alertCount": alertCount,
        "attributes": List<dynamic>.from(attributes.map((x) => x.toJson())),
        "averageKmPerDay": averageKmPerDay,
        "averageMilesPerDay": averageMilesPerDay,
        "avgDistanceSource": avgDistanceSourceValues.reverse[avgDistanceSource],
        "avgKmPerYear": avgKmPerYear,
        "avgMilesPerYear": avgMilesPerYear,
        "bodyTypeDescription": bodyTypeDescription,
        "confirmedServiceDate": confirmedServiceDate,
        "createDate": createDate.toIso8601String(),
        "displayRecords": List<dynamic>.from(displayRecords.map((x) => x.toJson())),
        "driveline": driveline,
        "engineInformation": engineInformation,
        "estimatedCurrentKm": estimatedCurrentKm,
        "estimatedCurrentMileage": estimatedCurrentMileage,
        "events": List<dynamic>.from(events.map((x) => x.toJson())),
        "favoriteShops": List<dynamic>.from(favoriteShops.map((x) => x)),
        "id": id,
        "lastModDate": lastModDate,
        "lastOdoDate": lastOdoDate.toIso8601String(),
        "lastOdoKm": lastOdoKm,
        "lastOdoMileage": lastOdoMileage,
        "lastOdoSource": avgDistanceSourceValues.reverse[lastOdoSource],
        "lastOwnershipDate": lastOwnershipDate.toIso8601String(),
        "licensePlate": licensePlate,
        "make": make,
        "metric": metric,
        "model": model,
        "nickname": nickname,
        "numberOfAfterMarketServiceRecords": numberOfAfterMarketServiceRecords,
        "numberOfDealerServiceRecords": numberOfDealerServiceRecords,
        "numberOfDisplayableRecords": numberOfDisplayableRecords,
        "numberOfRecallRecords": numberOfRecallRecords,
        "numberOfServiceRecords": numberOfServiceRecords,
        "pickListShops": List<dynamic>.from(pickListShops.map((x) => x)),
        "postalCode": postalCode,
        "recallDataDisplayable": recallDataDisplayable,
        "recallDismissals": List<dynamic>.from(recallDismissals.map((x) => x)),
        "recentShops": List<dynamic>.from(recentShops.map((x) => x.toJson())),
        "serviceScheduleIdentifier": serviceScheduleIdentifier.toJson(),
        "severeEvents": List<dynamic>.from(severeEvents.map((x) => x)),
        "signupType": signupType,
        "socialSharingDescription": socialSharingDescription,
        "submodelSelected": submodelSelected,
        "suggestedShops": List<dynamic>.from(suggestedShops.map((x) => x)),
        "tradeInLeads": tradeInLeads.toJson(),
        "userEventIntervals": List<dynamic>.from(userEventIntervals.map((x) => x.toJson())),
        "vehicleDescription": vehicleDescription,
        "vehiclePhotos": List<dynamic>.from(vehiclePhotos.map((x) => x)),
        "vin": vin,
        "wellMaintainedBadge": wellMaintainedBadge.toJson(),
        "year": year,
      };
}

class Attribute {
  String fieldName;
  String fieldValue;
  int id;

  Attribute({
    required this.fieldName,
    required this.fieldValue,
    required this.id,
  });

  factory Attribute.fromJson(Map<String, dynamic> json) => Attribute(
        fieldName: json["fieldName"],
        fieldValue: json["fieldValue"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "fieldName": fieldName,
        "fieldValue": fieldValue,
        "id": id,
      };
}

enum AvgDistanceSource { CARFAX }

final avgDistanceSourceValues = EnumValues({"CARFAX": AvgDistanceSource.CARFAX});

class DisplayRecordElement {
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
  AvgDistanceSource origin;
  List<dynamic> recallDetails;
  List<dynamic> receiptPhotoIds;
  int recordId;
  String review;
  PurpleShop shop;
  List<Detail> source;
  State state;
  Type type;
  int userRecordId;
  String vhdbId;
  int vhdbRecordId;

  DisplayRecordElement({
    required this.activeShop,
    required this.comments,
    required this.compCode,
    required this.date,
    required this.detailPageUrl,
    required this.details,
    required this.displayDate,
    required this.displayed,
    required this.eligibleForReview,
    required this.loadDate,
    required this.motorOperationIds,
    required this.odometer,
    required this.odometerKm,
    required this.origin,
    required this.recallDetails,
    required this.receiptPhotoIds,
    required this.recordId,
    required this.review,
    required this.shop,
    required this.source,
    required this.state,
    required this.type,
    required this.userRecordId,
    required this.vhdbId,
    required this.vhdbRecordId,
  });

  factory DisplayRecordElement.fromJson(Map<String, dynamic> json) => DisplayRecordElement(
        activeShop: json["activeShop"],
        comments: json["comments"],
        compCode: json["compCode"],
        date: DateTime.parse(json["date"]),
        detailPageUrl: json["detailPageUrl"],
        details: List<Detail>.from(json["details"].map((x) => Detail.fromJson(x))),
        displayDate: json["displayDate"],
        displayed: json["displayed"],
        eligibleForReview: json["eligibleForReview"],
        loadDate: DateTime.parse(json["loadDate"]),
        motorOperationIds: List<int>.from(json["motorOperationIds"].map((x) => x)),
        odometer: json["odometer"],
        odometerKm: json["odometerKm"],
        origin: avgDistanceSourceValues.map[json["origin"]]!,
        recallDetails: List<dynamic>.from(json["recallDetails"].map((x) => x)),
        receiptPhotoIds: List<dynamic>.from(json["receiptPhotoIds"].map((x) => x)),
        recordId: json["recordId"],
        review: json["review"],
        shop: PurpleShop.fromJson(json["shop"]),
        source: List<Detail>.from(json["source"].map((x) => Detail.fromJson(x))),
        state: stateValues.map[json["state"]]!,
        type: typeValues.map[json["type"]]!,
        userRecordId: json["userRecordId"],
        vhdbId: json["vhdbId"],
        vhdbRecordId: json["vhdbRecordId"],
      );

  Map<String, dynamic> toJson() => {
        "activeShop": activeShop,
        "comments": comments,
        "compCode": compCode,
        "date": date.toIso8601String(),
        "detailPageUrl": detailPageUrl,
        "details": List<dynamic>.from(details.map((x) => x.toJson())),
        "displayDate": displayDate,
        "displayed": displayed,
        "eligibleForReview": eligibleForReview,
        "loadDate": loadDate.toIso8601String(),
        "motorOperationIds": List<dynamic>.from(motorOperationIds.map((x) => x)),
        "odometer": odometer,
        "odometerKm": odometerKm,
        "origin": avgDistanceSourceValues.reverse[origin],
        "recallDetails": List<dynamic>.from(recallDetails.map((x) => x)),
        "receiptPhotoIds": List<dynamic>.from(receiptPhotoIds.map((x) => x)),
        "recordId": recordId,
        "review": review,
        "shop": shop.toJson(),
        "source": List<dynamic>.from(source.map((x) => x.toJson())),
        "state": stateValues.reverse[state],
        "type": typeValues.reverse[type],
        "userRecordId": userRecordId,
        "vhdbId": vhdbId,
        "vhdbRecordId": vhdbRecordId,
      };
}

class Detail {
  bool bold;
  bool breakAfter;
  bool breakBefore;
  bool concat;
  String href;
  Text postText;
  Text preText;
  String text;
  String vtfId;

  Detail({
    required this.bold,
    required this.breakAfter,
    required this.breakBefore,
    required this.concat,
    required this.href,
    required this.postText,
    required this.preText,
    required this.text,
    required this.vtfId,
  });

  factory Detail.fromJson(Map<String, dynamic> json) => Detail(
        bold: json["bold"],
        breakAfter: json["breakAfter"],
        breakBefore: json["breakBefore"],
        concat: json["concat"],
        href: json["href"],
        postText: textValues.map[json["postText"]]!,
        preText: textValues.map[json["preText"]]!,
        text: json["text"],
        vtfId: json["vtfId"],
      );

  Map<String, dynamic> toJson() => {
        "bold": bold,
        "breakAfter": breakAfter,
        "breakBefore": breakBefore,
        "concat": concat,
        "href": href,
        "postText": textValues.reverse[postText],
        "preText": textValues.reverse[preText],
        "text": text,
        "vtfId": vtfId,
      };
}

enum Text { EMPTY, TEXT }

final textValues = EnumValues({"": Text.EMPTY, " ": Text.TEXT});

class PurpleShop {
  String? serviceAdvantageInd;
  String? images;

  PurpleShop({
    this.serviceAdvantageInd,
    this.images,
  });

  factory PurpleShop.fromJson(Map<String, dynamic> json) => PurpleShop(
        serviceAdvantageInd: json["serviceAdvantageInd"],
        images: json["images"],
      );

  Map<String, dynamic> toJson() => {
        "serviceAdvantageInd": serviceAdvantageInd,
        "images": images,
      };
}

enum State { ON }

final stateValues = EnumValues({"ON": State.ON});

enum Type { SERVICE }

final typeValues = EnumValues({"service": Type.SERVICE});

class Event {
  List<DashboardDetail> dashboardDetails;
  bool displayable;
  bool? inferred;
  int interval;
  int? intervalKm;
  int? intervalMonth;
  String? intervalOptions;
  List<Interval> intervals;
  String label;
  String lastService;
  String? lastServiceKm;
  List<int>? motorIds;
  String nextService;
  String? nextServiceKm;
  dynamic percentComplete;
  dynamic recommendedInterval;
  int? recommendedIntervalKm;
  String statusCode;
  String statusDisplay;
  String statusNumber;
  bool trackable;
  String type;
  String? url;
  List<int>? vtfIds;

  Event({
    required this.dashboardDetails,
    required this.displayable,
    this.inferred,
    required this.interval,
    this.intervalKm,
    this.intervalMonth,
    this.intervalOptions,
    required this.intervals,
    required this.label,
    required this.lastService,
    this.lastServiceKm,
    this.motorIds,
    required this.nextService,
    this.nextServiceKm,
    required this.percentComplete,
    required this.recommendedInterval,
    this.recommendedIntervalKm,
    required this.statusCode,
    required this.statusDisplay,
    required this.statusNumber,
    required this.trackable,
    required this.type,
    this.url,
    this.vtfIds,
  });

  factory Event.fromJson(Map<String, dynamic> json) => Event(
        dashboardDetails: List<DashboardDetail>.from(json["dashboardDetails"].map((x) => DashboardDetail.fromJson(x))),
        displayable: json["displayable"],
        inferred: json["inferred"],
        interval: json["interval"],
        intervalKm: json["intervalKm"],
        intervalMonth: json["intervalMonth"],
        intervalOptions: json["intervalOptions"],
        intervals: List<Interval>.from(json["intervals"].map((x) => Interval.fromJson(x))),
        label: json["label"],
        lastService: json["lastService"],
        lastServiceKm: json["lastServiceKm"],
        motorIds: json["motorIds"] == null ? [] : List<int>.from(json["motorIds"]!.map((x) => x)),
        nextService: json["nextService"],
        nextServiceKm: json["nextServiceKm"],
        percentComplete: json["percentComplete"],
        recommendedInterval: json["recommendedInterval"],
        recommendedIntervalKm: json["recommendedIntervalKm"],
        statusCode: json["statusCode"],
        statusDisplay: json["statusDisplay"],
        statusNumber: json["statusNumber"],
        trackable: json["trackable"],
        type: json["type"],
        url: json["url"],
        vtfIds: json["vtfIds"] == null ? [] : List<int>.from(json["vtfIds"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "dashboardDetails": List<dynamic>.from(dashboardDetails.map((x) => x.toJson())),
        "displayable": displayable,
        "inferred": inferred,
        "interval": interval,
        "intervalKm": intervalKm,
        "intervalMonth": intervalMonth,
        "intervalOptions": intervalOptions,
        "intervals": List<dynamic>.from(intervals.map((x) => x.toJson())),
        "label": label,
        "lastService": lastService,
        "lastServiceKm": lastServiceKm,
        "motorIds": motorIds == null ? [] : List<dynamic>.from(motorIds!.map((x) => x)),
        "nextService": nextService,
        "nextServiceKm": nextServiceKm,
        "percentComplete": percentComplete,
        "recommendedInterval": recommendedInterval,
        "recommendedIntervalKm": recommendedIntervalKm,
        "statusCode": statusCode,
        "statusDisplay": statusDisplay,
        "statusNumber": statusNumber,
        "trackable": trackable,
        "type": type,
        "url": url,
        "vtfIds": vtfIds == null ? [] : List<dynamic>.from(vtfIds!.map((x) => x)),
      };
}

class DashboardDetail {
  DashboardDetailDisplayRecord displayRecord;
  String label;
  String order;

  DashboardDetail({
    required this.displayRecord,
    required this.label,
    required this.order,
  });

  factory DashboardDetail.fromJson(Map<String, dynamic> json) => DashboardDetail(
        displayRecord: DashboardDetailDisplayRecord.fromJson(json["displayRecord"]),
        label: json["label"],
        order: json["order"],
      );

  Map<String, dynamic> toJson() => {
        "displayRecord": displayRecord.toJson(),
        "label": label,
        "order": order,
      };
}

class DashboardDetailDisplayRecord {
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
  AvgDistanceSource origin;
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

  DashboardDetailDisplayRecord({
    required this.activeShop,
    required this.comments,
    required this.compCode,
    required this.date,
    required this.detailPageUrl,
    required this.details,
    required this.displayDate,
    required this.displayed,
    required this.eligibleForReview,
    required this.loadDate,
    required this.motorOperationIds,
    required this.odometer,
    required this.odometerKm,
    required this.origin,
    required this.recallDetails,
    required this.receiptPhotoIds,
    required this.recordId,
    required this.review,
    required this.shop,
    required this.source,
    required this.state,
    required this.type,
    required this.userRecordId,
    required this.vhdbId,
    required this.vhdbRecordId,
  });

  factory DashboardDetailDisplayRecord.fromJson(Map<String, dynamic> json) => DashboardDetailDisplayRecord(
        activeShop: json["activeShop"],
        comments: json["comments"],
        compCode: json["compCode"],
        date: DateTime.parse(json["date"]),
        detailPageUrl: json["detailPageUrl"],
        details: List<Detail>.from(json["details"].map((x) => Detail.fromJson(x))),
        displayDate: json["displayDate"],
        displayed: json["displayed"],
        eligibleForReview: json["eligibleForReview"],
        loadDate: json["loadDate"],
        motorOperationIds: json["motorOperationIds"],
        odometer: json["odometer"],
        odometerKm: json["odometerKm"],
        origin: avgDistanceSourceValues.map[json["origin"]]!,
        recallDetails: json["recallDetails"],
        receiptPhotoIds: json["receiptPhotoIds"],
        recordId: json["recordId"],
        review: json["review"],
        shop: FluffyShop.fromJson(json["shop"]),
        source: json["source"],
        state: json["state"],
        type: json["type"],
        userRecordId: json["userRecordId"],
        vhdbId: json["vhdbId"],
        vhdbRecordId: json["vhdbRecordId"],
      );

  Map<String, dynamic> toJson() => {
        "activeShop": activeShop,
        "comments": comments,
        "compCode": compCode,
        "date": date.toIso8601String(),
        "detailPageUrl": detailPageUrl,
        "details": List<dynamic>.from(details.map((x) => x.toJson())),
        "displayDate": displayDate,
        "displayed": displayed,
        "eligibleForReview": eligibleForReview,
        "loadDate": loadDate,
        "motorOperationIds": motorOperationIds,
        "odometer": odometer,
        "odometerKm": odometerKm,
        "origin": avgDistanceSourceValues.reverse[origin],
        "recallDetails": recallDetails,
        "receiptPhotoIds": receiptPhotoIds,
        "recordId": recordId,
        "review": review,
        "shop": shop.toJson(),
        "source": source,
        "state": state,
        "type": type,
        "userRecordId": userRecordId,
        "vhdbId": vhdbId,
        "vhdbRecordId": vhdbRecordId,
      };
}

class FluffyShop {
  FluffyShop();

  factory FluffyShop.fromJson(Map<String, dynamic> json) => FluffyShop();

  Map<String, dynamic> toJson() => {};
}

class Interval {
  int interval;
  String intervalDescription;
  bool? recommended;

  Interval({
    required this.interval,
    required this.intervalDescription,
    this.recommended,
  });

  factory Interval.fromJson(Map<String, dynamic> json) => Interval(
        interval: json["interval"],
        intervalDescription: json["intervalDescription"],
        recommended: json["recommended"],
      );

  Map<String, dynamic> toJson() => {
        "interval": interval,
        "intervalDescription": intervalDescription,
        "recommended": recommended,
      };
}

class RecentShop {
  bool active;
  String address;
  List<Analytics> analytics;
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
  State state;
  List<dynamic> topMakes;
  List<dynamic> topServices;
  int totalCompletedProfiles;
  int totalProfiles;
  String twilioPhoneData;
  String webAddress;
  String zipCode;

  RecentShop({
    required this.active,
    required this.address,
    required this.analytics,
    required this.averageRating,
    required this.carfax4Life,
    required this.city,
    required this.compCode,
    required this.companyName,
    required this.countryCode,
    required this.dealer,
    required this.detailPageUrl,
    required this.distance,
    required this.isCarfax4Life,
    required this.isTestShop,
    required this.isTradeInLeadsEligible,
    required this.landingPageUrl,
    required this.latitude,
    required this.longitude,
    required this.numberOfReviews,
    required this.opportunityName,
    required this.ownerGroupCompCode,
    required this.phoneNumber,
    required this.profileCode,
    required this.reviews,
    required this.salesForceId,
    required this.serviceAdvantageInd,
    required this.serviceLinkStatus,
    required this.shopLoyalty,
    required this.shopProfile,
    required this.slug,
    required this.state,
    required this.topMakes,
    required this.topServices,
    required this.totalCompletedProfiles,
    required this.totalProfiles,
    required this.twilioPhoneData,
    required this.webAddress,
    required this.zipCode,
  });

  factory RecentShop.fromJson(Map<String, dynamic> json) => RecentShop(
        active: json["active"],
        address: json["address"],
        analytics: List<Analytics>.from(json["analytics"].map((x) => Analytics.fromJson(x))),
        averageRating: json["averageRating"],
        carfax4Life: json["carfax4Life"],
        city: json["city"],
        compCode: json["compCode"],
        companyName: json["companyName"],
        countryCode: json["countryCode"],
        dealer: json["dealer"],
        detailPageUrl: json["detailPageUrl"],
        distance: json["distance"],
        isCarfax4Life: json["isCarfax4Life"],
        isTestShop: json["isTestShop"],
        isTradeInLeadsEligible: json["isTradeInLeadsEligible"],
        landingPageUrl: json["landingPageUrl"],
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
        numberOfReviews: json["numberOfReviews"],
        opportunityName: json["opportunityName"],
        ownerGroupCompCode: json["ownerGroupCompCode"],
        phoneNumber: json["phoneNumber"],
        profileCode: json["profileCode"],
        reviews: List<dynamic>.from(json["reviews"].map((x) => x)),
        salesForceId: json["salesForceId"],
        serviceAdvantageInd: json["serviceAdvantageInd"],
        serviceLinkStatus: json["serviceLinkStatus"],
        shopLoyalty: json["shopLoyalty"],
        shopProfile: json["shopProfile"],
        slug: json["slug"],
        state: stateValues.map[json["state"]]!,
        topMakes: List<dynamic>.from(json["topMakes"].map((x) => x)),
        topServices: List<dynamic>.from(json["topServices"].map((x) => x)),
        totalCompletedProfiles: json["totalCompletedProfiles"],
        totalProfiles: json["totalProfiles"],
        twilioPhoneData: json["twilioPhoneData"],
        webAddress: json["webAddress"],
        zipCode: json["zipCode"],
      );

  Map<String, dynamic> toJson() => {
        "active": active,
        "address": address,
        "analytics": List<dynamic>.from(analytics.map((x) => x.toJson())),
        "averageRating": averageRating,
        "carfax4Life": carfax4Life,
        "city": city,
        "compCode": compCode,
        "companyName": companyName,
        "countryCode": countryCode,
        "dealer": dealer,
        "detailPageUrl": detailPageUrl,
        "distance": distance,
        "isCarfax4Life": isCarfax4Life,
        "isTestShop": isTestShop,
        "isTradeInLeadsEligible": isTradeInLeadsEligible,
        "landingPageUrl": landingPageUrl,
        "latitude": latitude,
        "longitude": longitude,
        "numberOfReviews": numberOfReviews,
        "opportunityName": opportunityName,
        "ownerGroupCompCode": ownerGroupCompCode,
        "phoneNumber": phoneNumber,
        "profileCode": profileCode,
        "reviews": List<dynamic>.from(reviews.map((x) => x)),
        "salesForceId": salesForceId,
        "serviceAdvantageInd": serviceAdvantageInd,
        "serviceLinkStatus": serviceLinkStatus,
        "shopLoyalty": shopLoyalty,
        "shopProfile": shopProfile,
        "slug": slug,
        "state": stateValues.reverse[state],
        "topMakes": List<dynamic>.from(topMakes.map((x) => x)),
        "topServices": List<dynamic>.from(topServices.map((x) => x)),
        "totalCompletedProfiles": totalCompletedProfiles,
        "totalProfiles": totalProfiles,
        "twilioPhoneData": twilioPhoneData,
        "webAddress": webAddress,
        "zipCode": zipCode,
      };
}

class Analytics {
  String favorites;

  Analytics({
    required this.favorites,
  });

  factory Analytics.fromJson(Map<String, dynamic> json) => Analytics(
        favorites: json["favorites"],
      );

  Map<String, dynamic> toJson() => {
        "favorites": favorites,
      };
}

class ServiceScheduleIdentifier {
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

  ServiceScheduleIdentifier({
    required this.cylinders,
    required this.engineBaseId,
    required this.engineDesignationId,
    required this.fuelType,
    required this.id,
    required this.liter,
    required this.modelName,
    required this.submodelId,
    required this.submodelName,
    required this.vinSelectPattern,
  });

  factory ServiceScheduleIdentifier.fromJson(Map<String, dynamic> json) => ServiceScheduleIdentifier(
        cylinders: json["cylinders"],
        engineBaseId: json["engineBaseId"],
        engineDesignationId: json["engineDesignationId"],
        fuelType: json["fuelType"],
        id: json["id"],
        liter: json["liter"],
        modelName: json["modelName"],
        submodelId: json["submodelId"],
        submodelName: json["submodelName"],
        vinSelectPattern: json["vinSelectPattern"],
      );

  Map<String, dynamic> toJson() => {
        "cylinders": cylinders,
        "engineBaseId": engineBaseId,
        "engineDesignationId": engineDesignationId,
        "fuelType": fuelType,
        "id": id,
        "liter": liter,
        "modelName": modelName,
        "submodelId": submodelId,
        "submodelName": submodelName,
        "vinSelectPattern": vinSelectPattern,
      };
}

class TradeInLeads {
  bool isEligible;

  TradeInLeads({
    required this.isEligible,
  });

  factory TradeInLeads.fromJson(Map<String, dynamic> json) => TradeInLeads(
        isEligible: json["isEligible"],
      );

  Map<String, dynamic> toJson() => {
        "isEligible": isEligible,
      };
}

class UserEventInterval {
  int dayInterval;
  String eventType;
  int id;
  String kmInterval;
  String mileageInterval;
  String monthInterval;

  UserEventInterval({
    required this.dayInterval,
    required this.eventType,
    required this.id,
    required this.kmInterval,
    required this.mileageInterval,
    required this.monthInterval,
  });

  factory UserEventInterval.fromJson(Map<String, dynamic> json) => UserEventInterval(
        dayInterval: json["dayInterval"],
        eventType: json["eventType"],
        id: json["id"],
        kmInterval: json["kmInterval"],
        mileageInterval: json["mileageInterval"],
        monthInterval: json["monthInterval"],
      );

  Map<String, dynamic> toJson() => {
        "dayInterval": dayInterval,
        "eventType": eventType,
        "id": id,
        "kmInterval": kmInterval,
        "mileageInterval": mileageInterval,
        "monthInterval": monthInterval,
      };
}

class WellMaintainedBadge {
  bool atRisk;
  bool atRiskByMiles;
  bool atRiskByMonths;
  String intervalKm;
  int intervalMiles;
  int intervalMonths;
  bool qualifies;

  WellMaintainedBadge({
    required this.atRisk,
    required this.atRiskByMiles,
    required this.atRiskByMonths,
    required this.intervalKm,
    required this.intervalMiles,
    required this.intervalMonths,
    required this.qualifies,
  });

  factory WellMaintainedBadge.fromJson(Map<String, dynamic> json) => WellMaintainedBadge(
        atRisk: json["atRisk"],
        atRiskByMiles: json["atRiskByMiles"],
        atRiskByMonths: json["atRiskByMonths"],
        intervalKm: json["intervalKm"],
        intervalMiles: json["intervalMiles"],
        intervalMonths: json["intervalMonths"],
        qualifies: json["qualifies"],
      );

  Map<String, dynamic> toJson() => {
        "atRisk": atRisk,
        "atRiskByMiles": atRiskByMiles,
        "atRiskByMonths": atRiskByMonths,
        "intervalKm": intervalKm,
        "intervalMiles": intervalMiles,
        "intervalMonths": intervalMonths,
        "qualifies": qualifies,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
