// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) {
  return Account(
    accountAttributes: json['accountAttributes'] as List,
    accountCreationDate: json['accountCreationDate'] == null
        ? null
        : DateTime.parse(json['accountCreationDate'] as String),
    agree: json['agree'] as bool,
    consumerSignup: json['consumerSignup'] == null
        ? null
        : ConsumerSignup.fromJson(
            json['consumerSignup'] as Map<String, dynamic>),
    email: json['email'] as String,
    facebookId: json['facebookId'],
    favoriteShopCompCode: json['favoriteShopCompCode'],
    firstName: json['firstName'],
    forcedOneAccount: json['forcedOneAccount'],
    fraudAccount: json['fraudAccount'],
    fraudAccountWatch: (json['fraudAccountWatch'] as List)
        ?.map((e) => e == null
            ? null
            : FraudAccountWatch.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    id: json['id'] as int,
    isCanadian: json['isCanadian'] as bool,
    language: json['language'] as String,
    maxAddedVehiclesCount: json['maxAddedVehiclesCount'] as int,
    maxVehiclesCount: json['maxVehiclesCount'] as int,
    newPassword: json['newPassword'],
    oneAccountId: json['oneAccountId'] as int,
    partnerId: json['partnerId'],
    postalCode: json['postalCode'] as String,
    signUp: json['signUp'],
    suggestedViNs: json['suggestedViNs'] as List,
    token: json['token'],
    type: json['type'],
    vehicles: (json['vehicles'] as List)
        ?.map((e) =>
            e == null ? null : Vehicle.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    verifyEmail: json['verifyEmail'],
  );
}

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'accountAttributes': instance.accountAttributes,
      'accountCreationDate': instance.accountCreationDate?.toIso8601String(),
      'agree': instance.agree,
      'consumerSignup': instance.consumerSignup,
      'email': instance.email,
      'facebookId': instance.facebookId,
      'favoriteShopCompCode': instance.favoriteShopCompCode,
      'firstName': instance.firstName,
      'forcedOneAccount': instance.forcedOneAccount,
      'fraudAccount': instance.fraudAccount,
      'fraudAccountWatch': instance.fraudAccountWatch,
      'id': instance.id,
      'isCanadian': instance.isCanadian,
      'language': instance.language,
      'maxAddedVehiclesCount': instance.maxAddedVehiclesCount,
      'maxVehiclesCount': instance.maxVehiclesCount,
      'newPassword': instance.newPassword,
      'oneAccountId': instance.oneAccountId,
      'partnerId': instance.partnerId,
      'postalCode': instance.postalCode,
      'signUp': instance.signUp,
      'suggestedViNs': instance.suggestedViNs,
      'token': instance.token,
      'type': instance.type,
      'vehicles': instance.vehicles,
      'verifyEmail': instance.verifyEmail,
    };

ConsumerSignup _$ConsumerSignupFromJson(Map<String, dynamic> json) {
  return ConsumerSignup(
    account: json['account'] == null
        ? null
        : AccountClass.fromJson(json['account'] as Map<String, dynamic>),
    compCode: json['compCode'],
    id: json['id'] as int,
    salesForceId: json['salesForceId'] as String,
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$ConsumerSignupToJson(ConsumerSignup instance) =>
    <String, dynamic>{
      'account': instance.account,
      'compCode': instance.compCode,
      'id': instance.id,
      'salesForceId': instance.salesForceId,
      'type': instance.type,
    };

AccountClass _$AccountClassFromJson(Map<String, dynamic> json) {
  return AccountClass(
    ref: json['ref'] as String,
    accountClass: json['accountClass'] as String,
  );
}

Map<String, dynamic> _$AccountClassToJson(AccountClass instance) =>
    <String, dynamic>{
      'ref': instance.ref,
      'accountClass': instance.accountClass,
    };

FraudAccountWatch _$FraudAccountWatchFromJson(Map<String, dynamic> json) {
  return FraudAccountWatch(
    account: json['account'] == null
        ? null
        : AccountClass.fromJson(json['account'] as Map<String, dynamic>),
    createDate: json['createDate'] == null
        ? null
        : DateTime.parse(json['createDate'] as String),
    id: json['id'] as int,
    vin: json['vin'] as String,
  );
}

Map<String, dynamic> _$FraudAccountWatchToJson(FraudAccountWatch instance) =>
    <String, dynamic>{
      'account': instance.account,
      'createDate': instance.createDate?.toIso8601String(),
      'id': instance.id,
      'vin': instance.vin,
    };

Vehicle _$VehicleFromJson(Map<String, dynamic> json) {
  return Vehicle(
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
    bodyTypeDescription: json['bodyTypeDescription'],
    confirmedServiceDate: json['confirmedServiceDate'],
    createDate: json['createDate'] == null
        ? null
        : DateTime.parse(json['createDate'] as String),
    displayRecords: json['displayRecords'] as List,
    driveline: json['driveline'],
    engineInformation: json['engineInformation'],
    estimatedCurrentKm: json['estimatedCurrentKm'] as int,
    estimatedCurrentMileage: json['estimatedCurrentMileage'] as int,
    events: json['events'] as List,
    favoriteShops: json['favoriteShops'] as List,
    id: json['id'] as int,
    lastModDate: json['lastModDate'],
    lastOdoDate: json['lastOdoDate'] == null
        ? null
        : DateTime.parse(json['lastOdoDate'] as String),
    lastOdoKm: json['lastOdoKm'] as int,
    lastOdoMileage: json['lastOdoMileage'] as int,
    lastOdoSource: json['lastOdoSource'] as String,
    lastOwnershipDate: json['lastOwnershipDate'] == null
        ? null
        : DateTime.parse(json['lastOwnershipDate'] as String),
    licensePlate: json['licensePlate'],
    make: json['make'] as String,
    metric: json['metric'] as bool,
    model: json['model'] as String,
    nickname: json['nickname'],
    numberOfAfterMarketServiceRecords:
        json['numberOfAfterMarketServiceRecords'] as int,
    numberOfDealerServiceRecords: json['numberOfDealerServiceRecords'] as int,
    numberOfDisplayableRecords: json['numberOfDisplayableRecords'] as int,
    numberOfRecallRecords: json['numberOfRecallRecords'] as int,
    numberOfServiceRecords: json['numberOfServiceRecords'] as int,
    pickListShops: json['pickListShops'] as List,
    postalCode: json['postalCode'] as String,
    recallDataDisplayable: json['recallDataDisplayable'],
    recallDismissals: json['recallDismissals'] as List,
    recentShops: json['recentShops'] as List,
    serviceScheduleIdentifier: json['serviceScheduleIdentifier'] == null
        ? null
        : ServiceScheduleIdentifier.fromJson(
            json['serviceScheduleIdentifier'] as Map<String, dynamic>),
    severeEvents: json['severeEvents'] as List,
    signupType: json['signupType'],
    socialSharingDescription: json['socialSharingDescription'] as String,
    submodelSelected: json['submodelSelected'] as bool,
    suggestedShops: json['suggestedShops'] as List,
    tradeInLeads: json['tradeInLeads'],
    userEventIntervals: (json['userEventIntervals'] as List)
        ?.map((e) => e == null
            ? null
            : UserEventInterval.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    vehicleDescription: json['vehicleDescription'] as String,
    vehiclePhotos: json['vehiclePhotos'] as List,
    vin: json['vin'] as String,
    wellMaintainedBadge: json['wellMaintainedBadge'],
    year: json['year'] as String,
  );
}

Map<String, dynamic> _$VehicleToJson(Vehicle instance) => <String, dynamic>{
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

ServiceScheduleIdentifier _$ServiceScheduleIdentifierFromJson(
    Map<String, dynamic> json) {
  return ServiceScheduleIdentifier(
    cylinders: json['cylinders'],
    engineBaseId: json['engineBaseId'] as int,
    engineDesignationId: json['engineDesignationId'] as int,
    fuelType: json['fuelType'],
    id: json['id'] as int,
    liter: json['liter'],
    modelName: json['modelName'],
    submodelId: json['submodelId'] as int,
    submodelName: json['submodelName'],
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

UserEventInterval _$UserEventIntervalFromJson(Map<String, dynamic> json) {
  return UserEventInterval(
    dayInterval: json['dayInterval'] as int,
    eventType: json['eventType'] as String,
    id: json['id'] as int,
    kmInterval: json['kmInterval'],
    mileageInterval: json['mileageInterval'],
    monthInterval: json['monthInterval'],
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
