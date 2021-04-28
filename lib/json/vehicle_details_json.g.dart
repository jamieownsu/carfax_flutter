// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_details_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleDetailsJson _$VehicleDetailsJsonFromJson(Map<String, dynamic> json) {
  return VehicleDetailsJson(
    alertCount: json['alertCount'] as int,
    attributes: (json['attributes'] as List)
        ?.map((e) =>
            e == null ? null : Attribute.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    averageKmPerDay: (json['averageKmPerDay'] as num)?.toDouble(),
    averageMilesPerDay: (json['averageMilesPerDay'] as num)?.toDouble(),
    avgDistanceSource: json['avgDistanceSource'] as String,
    avgKmPerYear: json['avgKmPerYear'] as int,
    avgMilesPerYear: json['avgMilesPerYear'] as int,
    bodyTypeDescription: json['bodyTypeDescription'] as String,
    confirmedServiceDate: json['confirmedServiceDate'] as String,
    createDate: json['createDate'] == null
        ? null
        : DateTime.parse(json['createDate'] as String),
    displayRecords: (json['displayRecords'] as List)
        ?.map((e) => e == null
            ? null
            : DisplayRecordElement.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    driveline: json['driveline'] as String,
    engineInformation: json['engineInformation'] as String,
    estimatedCurrentKm: json['estimatedCurrentKm'] as int,
    estimatedCurrentMileage: json['estimatedCurrentMileage'] as int,
    events: (json['events'] as List)
        ?.map(
            (e) => e == null ? null : Event.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    favoriteShops: json['favoriteShops'] as List,
    id: json['id'] as int,
    lastModDate: json['lastModDate'] as String,
    lastOdoDate: json['lastOdoDate'] == null
        ? null
        : DateTime.parse(json['lastOdoDate'] as String),
    lastOdoKm: json['lastOdoKm'] as int,
    lastOdoMileage: json['lastOdoMileage'] as int,
    lastOdoSource: json['lastOdoSource'] as String,
    lastOwnershipDate: json['lastOwnershipDate'] == null
        ? null
        : DateTime.parse(json['lastOwnershipDate'] as String),
    licensePlate: json['licensePlate'] as String,
    make: json['make'] as String,
    metric: json['metric'] as bool,
    model: json['model'] as String,
    nickname: json['nickname'] as String,
    numberOfAfterMarketServiceRecords:
        json['numberOfAfterMarketServiceRecords'] as int,
    numberOfDealerServiceRecords: json['numberOfDealerServiceRecords'] as int,
    numberOfDisplayableRecords: json['numberOfDisplayableRecords'] as int,
    numberOfRecallRecords: json['numberOfRecallRecords'] as int,
    numberOfServiceRecords: json['numberOfServiceRecords'] as int,
    pickListShops: json['pickListShops'] as List,
    postalCode: json['postalCode'] as String,
    recallDataDisplayable: json['recallDataDisplayable'] as bool,
    recallDismissals: json['recallDismissals'] as List,
    recentShops: (json['recentShops'] as List)
        ?.map((e) =>
            e == null ? null : RecentShop.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    serviceScheduleIdentifier: json['serviceScheduleIdentifier'] == null
        ? null
        : ServiceScheduleIdentifier.fromJson(
            json['serviceScheduleIdentifier'] as Map<String, dynamic>),
    severeEvents: json['severeEvents'] as List,
    signupType: json['signupType'] as String,
    socialSharingDescription: json['socialSharingDescription'] as String,
    submodelSelected: json['submodelSelected'] as bool,
    suggestedShops: json['suggestedShops'] as List,
    tradeInLeads: json['tradeInLeads'] == null
        ? null
        : TradeInLeads.fromJson(json['tradeInLeads'] as Map<String, dynamic>),
    userEventIntervals: (json['userEventIntervals'] as List)
        ?.map((e) => e == null
            ? null
            : UserEventInterval.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    vehicleDescription: json['vehicleDescription'] as String,
    vehiclePhotos: json['vehiclePhotos'] as List,
    vin: json['vin'] as String,
    wellMaintainedBadge: json['wellMaintainedBadge'] == null
        ? null
        : WellMaintainedBadge.fromJson(
            json['wellMaintainedBadge'] as Map<String, dynamic>),
    year: json['year'] as String,
  );
}

Map<String, dynamic> _$VehicleDetailsJsonToJson(VehicleDetailsJson instance) =>
    <String, dynamic>{
      'alertCount': instance.alertCount,
      'attributes': instance.attributes,
      'averageKmPerDay': instance.averageKmPerDay,
      'averageMilesPerDay': instance.averageMilesPerDay,
      'avgDistanceSource': instance.avgDistanceSource,
      'avgKmPerYear': instance.avgKmPerYear,
      'avgMilesPerYear': instance.avgMilesPerYear,
      'bodyTypeDescription': instance.bodyTypeDescription,
      'confirmedServiceDate': instance.confirmedServiceDate,
      'createDate': instance.createDate?.toIso8601String(),
      'displayRecords': instance.displayRecords,
      'driveline': instance.driveline,
      'engineInformation': instance.engineInformation,
      'estimatedCurrentKm': instance.estimatedCurrentKm,
      'estimatedCurrentMileage': instance.estimatedCurrentMileage,
      'events': instance.events,
      'favoriteShops': instance.favoriteShops,
      'id': instance.id,
      'lastModDate': instance.lastModDate,
      'lastOdoDate': instance.lastOdoDate?.toIso8601String(),
      'lastOdoKm': instance.lastOdoKm,
      'lastOdoMileage': instance.lastOdoMileage,
      'lastOdoSource': instance.lastOdoSource,
      'lastOwnershipDate': instance.lastOwnershipDate?.toIso8601String(),
      'licensePlate': instance.licensePlate,
      'make': instance.make,
      'metric': instance.metric,
      'model': instance.model,
      'nickname': instance.nickname,
      'numberOfAfterMarketServiceRecords':
          instance.numberOfAfterMarketServiceRecords,
      'numberOfDealerServiceRecords': instance.numberOfDealerServiceRecords,
      'numberOfDisplayableRecords': instance.numberOfDisplayableRecords,
      'numberOfRecallRecords': instance.numberOfRecallRecords,
      'numberOfServiceRecords': instance.numberOfServiceRecords,
      'pickListShops': instance.pickListShops,
      'postalCode': instance.postalCode,
      'recallDataDisplayable': instance.recallDataDisplayable,
      'recallDismissals': instance.recallDismissals,
      'recentShops': instance.recentShops,
      'serviceScheduleIdentifier': instance.serviceScheduleIdentifier,
      'severeEvents': instance.severeEvents,
      'signupType': instance.signupType,
      'socialSharingDescription': instance.socialSharingDescription,
      'submodelSelected': instance.submodelSelected,
      'suggestedShops': instance.suggestedShops,
      'tradeInLeads': instance.tradeInLeads,
      'userEventIntervals': instance.userEventIntervals,
      'vehicleDescription': instance.vehicleDescription,
      'vehiclePhotos': instance.vehiclePhotos,
      'vin': instance.vin,
      'wellMaintainedBadge': instance.wellMaintainedBadge,
      'year': instance.year,
    };

Attribute _$AttributeFromJson(Map<String, dynamic> json) {
  return Attribute(
    fieldName: json['fieldName'] as String,
    fieldValue: json['fieldValue'] as String,
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$AttributeToJson(Attribute instance) => <String, dynamic>{
      'fieldName': instance.fieldName,
      'fieldValue': instance.fieldValue,
      'id': instance.id,
    };

DisplayRecordElement _$DisplayRecordElementFromJson(Map<String, dynamic> json) {
  return DisplayRecordElement(
    activeShop: json['activeShop'] as bool,
    comments: json['comments'] as String,
    compCode: json['compCode'] as String,
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    detailPageUrl: json['detailPageUrl'] as String,
    details: (json['details'] as List)
        ?.map((e) =>
            e == null ? null : Detail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    displayDate: json['displayDate'] as String,
    displayed: json['displayed'] as bool,
    eligibleForReview: json['eligibleForReview'] as bool,
    loadDate: json['loadDate'] == null
        ? null
        : DateTime.parse(json['loadDate'] as String),
    motorOperationIds:
        (json['motorOperationIds'] as List)?.map((e) => e as int)?.toList(),
    odometer: json['odometer'] as String,
    odometerKm: json['odometerKm'] as String,
    origin: json['origin'] as String,
    recallDetails: json['recallDetails'] as List,
    receiptPhotoIds: json['receiptPhotoIds'] as List,
    recordId: json['recordId'] as int,
    review: json['review'] as String,
    shop: json['shop'] == null
        ? null
        : PurpleShop.fromJson(json['shop'] as Map<String, dynamic>),
    source: (json['source'] as List)
        ?.map((e) =>
            e == null ? null : Detail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    state: json['state'] as String,
    type: json['type'] as String,
    userRecordId: json['userRecordId'] as int,
    vhdbId: json['vhdbId'] as String,
    vhdbRecordId: json['vhdbRecordId'] as int,
  );
}

Map<String, dynamic> _$DisplayRecordElementToJson(
        DisplayRecordElement instance) =>
    <String, dynamic>{
      'activeShop': instance.activeShop,
      'comments': instance.comments,
      'compCode': instance.compCode,
      'date': instance.date?.toIso8601String(),
      'detailPageUrl': instance.detailPageUrl,
      'details': instance.details,
      'displayDate': instance.displayDate,
      'displayed': instance.displayed,
      'eligibleForReview': instance.eligibleForReview,
      'loadDate': instance.loadDate?.toIso8601String(),
      'motorOperationIds': instance.motorOperationIds,
      'odometer': instance.odometer,
      'odometerKm': instance.odometerKm,
      'origin': instance.origin,
      'recallDetails': instance.recallDetails,
      'receiptPhotoIds': instance.receiptPhotoIds,
      'recordId': instance.recordId,
      'review': instance.review,
      'shop': instance.shop,
      'source': instance.source,
      'state': instance.state,
      'type': instance.type,
      'userRecordId': instance.userRecordId,
      'vhdbId': instance.vhdbId,
      'vhdbRecordId': instance.vhdbRecordId,
    };

Detail _$DetailFromJson(Map<String, dynamic> json) {
  return Detail(
    bold: json['bold'] as bool,
    breakAfter: json['breakAfter'] as bool,
    breakBefore: json['breakBefore'] as bool,
    concat: json['concat'] as bool,
    href: json['href'] as String,
    postText: json['postText'] as String,
    preText: json['preText'] as String,
    text: json['text'] as String,
    vtfId: json['vtfId'] as String,
  );
}

Map<String, dynamic> _$DetailToJson(Detail instance) => <String, dynamic>{
      'bold': instance.bold,
      'breakAfter': instance.breakAfter,
      'breakBefore': instance.breakBefore,
      'concat': instance.concat,
      'href': instance.href,
      'postText': instance.postText,
      'preText': instance.preText,
      'text': instance.text,
      'vtfId': instance.vtfId,
    };

PurpleShop _$PurpleShopFromJson(Map<String, dynamic> json) {
  return PurpleShop(
    serviceAdvantageInd: json['serviceAdvantageInd'] as String,
    images: json['images'] as String,
  );
}

Map<String, dynamic> _$PurpleShopToJson(PurpleShop instance) =>
    <String, dynamic>{
      'serviceAdvantageInd': instance.serviceAdvantageInd,
      'images': instance.images,
    };

Event _$EventFromJson(Map<String, dynamic> json) {
  return Event(
    dashboardDetails: (json['dashboardDetails'] as List)
        ?.map((e) => e == null
            ? null
            : DashboardDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    displayable: json['displayable'] as bool,
    inferred: json['inferred'] as bool,
    interval: json['interval'] as int,
    intervalKm: json['intervalKm'] as int,
    intervalMonth: json['intervalMonth'] as int,
    intervalOptions: json['intervalOptions'] as String,
    intervals: (json['intervals'] as List)
        ?.map((e) =>
            e == null ? null : Interval.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    label: json['label'] as String,
    lastService: json['lastService'] as String,
    lastServiceKm: json['lastServiceKm'] as String,
    motorIds: (json['motorIds'] as List)?.map((e) => e as int)?.toList(),
    nextService: json['nextService'] as String,
    nextServiceKm: json['nextServiceKm'] as String,
    percentComplete: json['percentComplete'],
    recommendedInterval: json['recommendedInterval'],
    recommendedIntervalKm: json['recommendedIntervalKm'] as int,
    statusCode: json['statusCode'] as String,
    statusDisplay: json['statusDisplay'] as String,
    statusNumber: json['statusNumber'] as String,
    trackable: json['trackable'] as bool,
    type: json['type'] as String,
    url: json['url'] as String,
    vtfIds: (json['vtfIds'] as List)?.map((e) => e as int)?.toList(),
  );
}

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'dashboardDetails': instance.dashboardDetails,
      'displayable': instance.displayable,
      'inferred': instance.inferred,
      'interval': instance.interval,
      'intervalKm': instance.intervalKm,
      'intervalMonth': instance.intervalMonth,
      'intervalOptions': instance.intervalOptions,
      'intervals': instance.intervals,
      'label': instance.label,
      'lastService': instance.lastService,
      'lastServiceKm': instance.lastServiceKm,
      'motorIds': instance.motorIds,
      'nextService': instance.nextService,
      'nextServiceKm': instance.nextServiceKm,
      'percentComplete': instance.percentComplete,
      'recommendedInterval': instance.recommendedInterval,
      'recommendedIntervalKm': instance.recommendedIntervalKm,
      'statusCode': instance.statusCode,
      'statusDisplay': instance.statusDisplay,
      'statusNumber': instance.statusNumber,
      'trackable': instance.trackable,
      'type': instance.type,
      'url': instance.url,
      'vtfIds': instance.vtfIds,
    };

DashboardDetail _$DashboardDetailFromJson(Map<String, dynamic> json) {
  return DashboardDetail(
    displayRecord: json['displayRecord'] == null
        ? null
        : DashboardDetailDisplayRecord.fromJson(
            json['displayRecord'] as Map<String, dynamic>),
    label: json['label'] as String,
    order: json['order'] as String,
  );
}

Map<String, dynamic> _$DashboardDetailToJson(DashboardDetail instance) =>
    <String, dynamic>{
      'displayRecord': instance.displayRecord,
      'label': instance.label,
      'order': instance.order,
    };

DashboardDetailDisplayRecord _$DashboardDetailDisplayRecordFromJson(
    Map<String, dynamic> json) {
  return DashboardDetailDisplayRecord(
    activeShop: json['activeShop'] as bool,
    comments: json['comments'] as String,
    compCode: json['compCode'] as String,
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    detailPageUrl: json['detailPageUrl'] as String,
    details: (json['details'] as List)
        ?.map((e) =>
            e == null ? null : Detail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    displayDate: json['displayDate'] as String,
    displayed: json['displayed'] as bool,
    eligibleForReview: json['eligibleForReview'] as bool,
    loadDate: json['loadDate'] as String,
    motorOperationIds: json['motorOperationIds'] as String,
    odometer: json['odometer'] as String,
    odometerKm: json['odometerKm'] as String,
    origin: json['origin'] as String,
    recallDetails: json['recallDetails'] as String,
    receiptPhotoIds: json['receiptPhotoIds'] as String,
    recordId: json['recordId'] as int,
    review: json['review'] as String,
    shop: json['shop'] == null
        ? null
        : FluffyShop.fromJson(json['shop'] as Map<String, dynamic>),
    source: json['source'],
    state: json['state'] as String,
    type: json['type'] as String,
    userRecordId: json['userRecordId'] as int,
    vhdbId: json['vhdbId'] as String,
    vhdbRecordId: json['vhdbRecordId'] as int,
  );
}

Map<String, dynamic> _$DashboardDetailDisplayRecordToJson(
        DashboardDetailDisplayRecord instance) =>
    <String, dynamic>{
      'activeShop': instance.activeShop,
      'comments': instance.comments,
      'compCode': instance.compCode,
      'date': instance.date?.toIso8601String(),
      'detailPageUrl': instance.detailPageUrl,
      'details': instance.details,
      'displayDate': instance.displayDate,
      'displayed': instance.displayed,
      'eligibleForReview': instance.eligibleForReview,
      'loadDate': instance.loadDate,
      'motorOperationIds': instance.motorOperationIds,
      'odometer': instance.odometer,
      'odometerKm': instance.odometerKm,
      'origin': instance.origin,
      'recallDetails': instance.recallDetails,
      'receiptPhotoIds': instance.receiptPhotoIds,
      'recordId': instance.recordId,
      'review': instance.review,
      'shop': instance.shop,
      'source': instance.source,
      'state': instance.state,
      'type': instance.type,
      'userRecordId': instance.userRecordId,
      'vhdbId': instance.vhdbId,
      'vhdbRecordId': instance.vhdbRecordId,
    };

FluffyShop _$FluffyShopFromJson(Map<String, dynamic> json) {
  return FluffyShop();
}

Map<String, dynamic> _$FluffyShopToJson(FluffyShop instance) =>
    <String, dynamic>{};

Interval _$IntervalFromJson(Map<String, dynamic> json) {
  return Interval(
    interval: json['interval'] as int,
    intervalDescription: json['intervalDescription'] as String,
    recommended: json['recommended'] as bool,
  );
}

Map<String, dynamic> _$IntervalToJson(Interval instance) => <String, dynamic>{
      'interval': instance.interval,
      'intervalDescription': instance.intervalDescription,
      'recommended': instance.recommended,
    };

RecentShop _$RecentShopFromJson(Map<String, dynamic> json) {
  return RecentShop(
    active: json['active'] as bool,
    address: json['address'] as String,
    analytics: (json['analytics'] as List)
        ?.map((e) =>
            e == null ? null : Analytic.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    averageRating: json['averageRating'] as int,
    carfax4Life: json['carfax4Life'] as String,
    city: json['city'] as String,
    compCode: json['compCode'] as String,
    companyName: json['companyName'] as String,
    countryCode: json['countryCode'] as String,
    dealer: json['dealer'] as bool,
    detailPageUrl: json['detailPageUrl'] as String,
    distance: json['distance'] as String,
    isCarfax4Life: json['isCarfax4Life'] as bool,
    isTestShop: json['isTestShop'] as bool,
    isTradeInLeadsEligible: json['isTradeInLeadsEligible'] as bool,
    landingPageUrl: json['landingPageUrl'] as String,
    latitude: (json['latitude'] as num)?.toDouble(),
    longitude: (json['longitude'] as num)?.toDouble(),
    numberOfReviews: json['numberOfReviews'] as int,
    opportunityName: json['opportunityName'] as String,
    ownerGroupCompCode: json['ownerGroupCompCode'] as String,
    phoneNumber: json['phoneNumber'] as String,
    profileCode: json['profileCode'] as String,
    reviews: json['reviews'] as List,
    salesForceId: json['salesForceId'] as String,
    serviceAdvantageInd: json['serviceAdvantageInd'] as String,
    serviceLinkStatus: json['serviceLinkStatus'] as String,
    shopLoyalty: json['shopLoyalty'] as String,
    shopProfile: json['shopProfile'] as String,
    slug: json['slug'] as String,
    state: json['state'] as String,
    topMakes: json['topMakes'] as List,
    topServices: json['topServices'] as List,
    totalCompletedProfiles: json['totalCompletedProfiles'] as int,
    totalProfiles: json['totalProfiles'] as int,
    twilioPhoneData: json['twilioPhoneData'] as String,
    webAddress: json['webAddress'] as String,
    zipCode: json['zipCode'] as String,
  );
}

Map<String, dynamic> _$RecentShopToJson(RecentShop instance) =>
    <String, dynamic>{
      'active': instance.active,
      'address': instance.address,
      'analytics': instance.analytics,
      'averageRating': instance.averageRating,
      'carfax4Life': instance.carfax4Life,
      'city': instance.city,
      'compCode': instance.compCode,
      'companyName': instance.companyName,
      'countryCode': instance.countryCode,
      'dealer': instance.dealer,
      'detailPageUrl': instance.detailPageUrl,
      'distance': instance.distance,
      'isCarfax4Life': instance.isCarfax4Life,
      'isTestShop': instance.isTestShop,
      'isTradeInLeadsEligible': instance.isTradeInLeadsEligible,
      'landingPageUrl': instance.landingPageUrl,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'numberOfReviews': instance.numberOfReviews,
      'opportunityName': instance.opportunityName,
      'ownerGroupCompCode': instance.ownerGroupCompCode,
      'phoneNumber': instance.phoneNumber,
      'profileCode': instance.profileCode,
      'reviews': instance.reviews,
      'salesForceId': instance.salesForceId,
      'serviceAdvantageInd': instance.serviceAdvantageInd,
      'serviceLinkStatus': instance.serviceLinkStatus,
      'shopLoyalty': instance.shopLoyalty,
      'shopProfile': instance.shopProfile,
      'slug': instance.slug,
      'state': instance.state,
      'topMakes': instance.topMakes,
      'topServices': instance.topServices,
      'totalCompletedProfiles': instance.totalCompletedProfiles,
      'totalProfiles': instance.totalProfiles,
      'twilioPhoneData': instance.twilioPhoneData,
      'webAddress': instance.webAddress,
      'zipCode': instance.zipCode,
    };

Analytic _$AnalyticFromJson(Map<String, dynamic> json) {
  return Analytic(
    favorites: json['favorites'] as String,
  );
}

Map<String, dynamic> _$AnalyticToJson(Analytic instance) => <String, dynamic>{
      'favorites': instance.favorites,
    };

ServiceScheduleIdentifier _$ServiceScheduleIdentifierFromJson(
    Map<String, dynamic> json) {
  return ServiceScheduleIdentifier(
    cylinders: json['cylinders'] as String,
    engineBaseId: json['engineBaseId'] as int,
    engineDesignationId: json['engineDesignationId'] as int,
    fuelType: json['fuelType'] as String,
    id: json['id'] as int,
    liter: json['liter'] as String,
    modelName: json['modelName'] as String,
    submodelId: json['submodelId'] as int,
    submodelName: json['submodelName'] as String,
    vinSelectPattern: json['vinSelectPattern'] as String,
  );
}

Map<String, dynamic> _$ServiceScheduleIdentifierToJson(
        ServiceScheduleIdentifier instance) =>
    <String, dynamic>{
      'cylinders': instance.cylinders,
      'engineBaseId': instance.engineBaseId,
      'engineDesignationId': instance.engineDesignationId,
      'fuelType': instance.fuelType,
      'id': instance.id,
      'liter': instance.liter,
      'modelName': instance.modelName,
      'submodelId': instance.submodelId,
      'submodelName': instance.submodelName,
      'vinSelectPattern': instance.vinSelectPattern,
    };

TradeInLeads _$TradeInLeadsFromJson(Map<String, dynamic> json) {
  return TradeInLeads(
    isEligible: json['isEligible'] as bool,
  );
}

Map<String, dynamic> _$TradeInLeadsToJson(TradeInLeads instance) =>
    <String, dynamic>{
      'isEligible': instance.isEligible,
    };

UserEventInterval _$UserEventIntervalFromJson(Map<String, dynamic> json) {
  return UserEventInterval(
    dayInterval: json['dayInterval'] as int,
    eventType: json['eventType'] as String,
    id: json['id'] as int,
    kmInterval: json['kmInterval'] as String,
    mileageInterval: json['mileageInterval'] as String,
    monthInterval: json['monthInterval'] as String,
  );
}

Map<String, dynamic> _$UserEventIntervalToJson(UserEventInterval instance) =>
    <String, dynamic>{
      'dayInterval': instance.dayInterval,
      'eventType': instance.eventType,
      'id': instance.id,
      'kmInterval': instance.kmInterval,
      'mileageInterval': instance.mileageInterval,
      'monthInterval': instance.monthInterval,
    };

WellMaintainedBadge _$WellMaintainedBadgeFromJson(Map<String, dynamic> json) {
  return WellMaintainedBadge(
    atRisk: json['atRisk'] as bool,
    atRiskByMiles: json['atRiskByMiles'] as bool,
    atRiskByMonths: json['atRiskByMonths'] as bool,
    intervalKm: json['intervalKm'] as String,
    intervalMiles: json['intervalMiles'] as int,
    intervalMonths: json['intervalMonths'] as int,
    qualifies: json['qualifies'] as bool,
  );
}

Map<String, dynamic> _$WellMaintainedBadgeToJson(
        WellMaintainedBadge instance) =>
    <String, dynamic>{
      'atRisk': instance.atRisk,
      'atRiskByMiles': instance.atRiskByMiles,
      'atRiskByMonths': instance.atRiskByMonths,
      'intervalKm': instance.intervalKm,
      'intervalMiles': instance.intervalMiles,
      'intervalMonths': instance.intervalMonths,
      'qualifies': instance.qualifies,
    };
