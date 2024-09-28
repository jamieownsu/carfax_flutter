class AccountData {
  AccountData({
    required this.accountAttributes,
    required this.accountCreationDate,
    required this.agree,
    required this.consumerSignup,
    required this.email,
    required this.facebookId,
    required this.favoriteShopCompCode,
    required this.firstName,
    required this.forcedOneAccount,
    required this.fraudAccount,
    required this.fraudAccountWatch,
    required this.id,
    required this.isCanadian,
    required this.language,
    required this.maxAddedVehiclesCount,
    required this.maxVehiclesCount,
    required this.newPassword,
    required this.oneAccountId,
    required this.partnerId,
    required this.postalCode,
    required this.signUp,
    required this.suggestedVINs,
    required this.token,
    required this.type,
    required this.vehicles,
    required this.verifyEmail,
  });
  late final List<dynamic> accountAttributes;
  late final String accountCreationDate;
  late final bool agree;
  late final ConsumerSignup consumerSignup;
  late final String email;
  late final String facebookId;
  late final String favoriteShopCompCode;
  late final String firstName;
  late final String forcedOneAccount;
  late final String fraudAccount;
  late final List<FraudAccountWatch> fraudAccountWatch;
  late final int id;
  late final bool isCanadian;
  late final String language;
  late final int maxAddedVehiclesCount;
  late final int maxVehiclesCount;
  late final String newPassword;
  late final int oneAccountId;
  late final String partnerId;
  late final String postalCode;
  late final String signUp;
  late final List<dynamic> suggestedVINs;
  late final String token;
  late final String type;
  late final List<Vehicles> vehicles;
  late final String verifyEmail;

  AccountData.fromJson(Map<String, dynamic> json) {
    accountAttributes = List.castFrom<dynamic, dynamic>(json['accountAttributes']);
    accountCreationDate = json['accountCreationDate'];
    agree = json['agree'];
    consumerSignup = ConsumerSignup.fromJson(json['consumerSignup']);
    email = json['email'];
    facebookId = json['facebookId'];
    favoriteShopCompCode = json['favoriteShopCompCode'];
    firstName = json['firstName'];
    forcedOneAccount = json['forcedOneAccount'];
    fraudAccount = json['fraudAccount'];
    fraudAccountWatch = List.from(json['fraudAccountWatch']).map((e) => FraudAccountWatch.fromJson(e)).toList();
    id = json['id'];
    isCanadian = json['isCanadian'];
    language = json['language'];
    maxAddedVehiclesCount = json['maxAddedVehiclesCount'];
    maxVehiclesCount = json['maxVehiclesCount'];
    newPassword = json['newPassword'];
    oneAccountId = json['oneAccountId'];
    partnerId = json['partnerId'];
    postalCode = json['postalCode'];
    signUp = json['signUp'];
    suggestedVINs = List.castFrom<dynamic, dynamic>(json['suggestedVINs']);
    token = json['token'];
    type = json['type'];
    vehicles = List.from(json['vehicles']).map((e) => Vehicles.fromJson(e)).toList();
    verifyEmail = json['verifyEmail'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['accountAttributes'] = accountAttributes;
    data['accountCreationDate'] = accountCreationDate;
    data['agree'] = agree;
    data['consumerSignup'] = consumerSignup.toJson();
    data['email'] = email;
    data['facebookId'] = facebookId;
    data['favoriteShopCompCode'] = favoriteShopCompCode;
    data['firstName'] = firstName;
    data['forcedOneAccount'] = forcedOneAccount;
    data['fraudAccount'] = fraudAccount;
    data['fraudAccountWatch'] = fraudAccountWatch.map((e) => e.toJson()).toList();
    data['id'] = id;
    data['isCanadian'] = isCanadian;
    data['language'] = language;
    data['maxAddedVehiclesCount'] = maxAddedVehiclesCount;
    data['maxVehiclesCount'] = maxVehiclesCount;
    data['newPassword'] = newPassword;
    data['oneAccountId'] = oneAccountId;
    data['partnerId'] = partnerId;
    data['postalCode'] = postalCode;
    data['signUp'] = signUp;
    data['suggestedVINs'] = suggestedVINs;
    data['token'] = token;
    data['type'] = type;
    data['vehicles'] = vehicles.map((e) => e.toJson()).toList();
    data['verifyEmail'] = verifyEmail;
    return data;
  }
}

class ConsumerSignup {
  ConsumerSignup({
    required this.compCode,
    required this.id,
    required this.salesForceId,
    required this.type,
  });
  late final String compCode;
  late final int id;
  late final String salesForceId;
  late final String type;

  ConsumerSignup.fromJson(Map<String, dynamic> json) {
    compCode = json['compCode'];
    id = json['id'];
    salesForceId = json['salesForceId'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['compCode'] = compCode;
    data['id'] = id;
    data['salesForceId'] = salesForceId;
    data['type'] = type;
    return data;
  }
}

class FraudAccountWatch {
  FraudAccountWatch({
    required this.createDate,
    required this.id,
    required this.vin,
  });
  late final String createDate;
  late final int id;
  late final String vin;

  FraudAccountWatch.fromJson(Map<String, dynamic> json) {
    createDate = json['createDate'];
    id = json['id'];
    vin = json['vin'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['createDate'] = createDate;
    data['id'] = id;
    data['vin'] = vin;
    return data;
  }
}

class Vehicles {
  Vehicles({
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
  late final int alertCount;
  late final List<Attributes> attributes;
  late final double averageKmPerDay;
  late final double averageMilesPerDay;
  late final String avgDistanceSource;
  late final int avgKmPerYear;
  late final int avgMilesPerYear;
  late final String bodyTypeDescription;
  late final String confirmedServiceDate;
  late final String createDate;
  late final List<dynamic> displayRecords;
  late final String driveline;
  late final String engineInformation;
  late final int estimatedCurrentKm;
  late final int estimatedCurrentMileage;
  late final List<dynamic> events;
  late final List<dynamic> favoriteShops;
  late final int id;
  late final String lastModDate;
  late final String lastOdoDate;
  late final int lastOdoKm;
  late final int lastOdoMileage;
  late final String lastOdoSource;
  late final String lastOwnershipDate;
  late final String licensePlate;
  late final String make;
  late final bool metric;
  late final String model;
  late final String nickname;
  late final int numberOfAfterMarketServiceRecords;
  late final int numberOfDealerServiceRecords;
  late final int numberOfDisplayableRecords;
  late final int numberOfRecallRecords;
  late final int numberOfServiceRecords;
  late final List<dynamic> pickListShops;
  late final String postalCode;
  late final String recallDataDisplayable;
  late final List<dynamic> recallDismissals;
  late final List<dynamic> recentShops;
  late final ServiceScheduleIdentifier serviceScheduleIdentifier;
  late final List<dynamic> severeEvents;
  late final String signupType;
  late final String socialSharingDescription;
  late final bool submodelSelected;
  late final List<dynamic> suggestedShops;
  late final String tradeInLeads;
  late final List<UserEventIntervals> userEventIntervals;
  late final String vehicleDescription;
  late final List<dynamic> vehiclePhotos;
  late final String vin;
  late final String wellMaintainedBadge;
  late final String year;

  Vehicles.fromJson(Map<String, dynamic> json) {
    alertCount = json['alertCount'];
    attributes = List.from(json['attributes']).map((e) => Attributes.fromJson(e)).toList();
    averageKmPerDay = json['averageKmPerDay'];
    averageMilesPerDay = json['averageMilesPerDay'];
    avgDistanceSource = json['avgDistanceSource'];
    avgKmPerYear = json['avgKmPerYear'];
    avgMilesPerYear = json['avgMilesPerYear'];
    bodyTypeDescription = json['bodyTypeDescription'];
    confirmedServiceDate = json['confirmedServiceDate'];
    createDate = json['createDate'];
    displayRecords = List.castFrom<dynamic, dynamic>(json['displayRecords']);
    driveline = json['driveline'];
    engineInformation = json['engineInformation'];
    estimatedCurrentKm = json['estimatedCurrentKm'];
    estimatedCurrentMileage = json['estimatedCurrentMileage'];
    events = List.castFrom<dynamic, dynamic>(json['events']);
    favoriteShops = List.castFrom<dynamic, dynamic>(json['favoriteShops']);
    id = json['id'];
    lastModDate = json['lastModDate'];
    lastOdoDate = json['lastOdoDate'];
    lastOdoKm = json['lastOdoKm'];
    lastOdoMileage = json['lastOdoMileage'];
    lastOdoSource = json['lastOdoSource'];
    lastOwnershipDate = json['lastOwnershipDate'];
    licensePlate = json['licensePlate'];
    make = json['make'];
    metric = json['metric'];
    model = json['model'];
    nickname = json['nickname'];
    numberOfAfterMarketServiceRecords = json['numberOfAfterMarketServiceRecords'];
    numberOfDealerServiceRecords = json['numberOfDealerServiceRecords'];
    numberOfDisplayableRecords = json['numberOfDisplayableRecords'];
    numberOfRecallRecords = json['numberOfRecallRecords'];
    numberOfServiceRecords = json['numberOfServiceRecords'];
    pickListShops = List.castFrom<dynamic, dynamic>(json['pickListShops']);
    postalCode = json['postalCode'];
    recallDataDisplayable = json['recallDataDisplayable'];
    recallDismissals = List.castFrom<dynamic, dynamic>(json['recallDismissals']);
    recentShops = List.castFrom<dynamic, dynamic>(json['recentShops']);
    serviceScheduleIdentifier = ServiceScheduleIdentifier.fromJson(json['serviceScheduleIdentifier']);
    severeEvents = List.castFrom<dynamic, dynamic>(json['severeEvents']);
    signupType = json['signupType'];
    socialSharingDescription = json['socialSharingDescription'];
    submodelSelected = json['submodelSelected'];
    suggestedShops = List.castFrom<dynamic, dynamic>(json['suggestedShops']);
    tradeInLeads = json['tradeInLeads'];
    userEventIntervals = List.from(json['userEventIntervals']).map((e) => UserEventIntervals.fromJson(e)).toList();
    vehicleDescription = json['vehicleDescription'];
    vehiclePhotos = List.castFrom<dynamic, dynamic>(json['vehiclePhotos']);
    vin = json['vin'];
    wellMaintainedBadge = json['wellMaintainedBadge'];
    year = json['year'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['alertCount'] = alertCount;
    data['attributes'] = attributes.map((e) => e.toJson()).toList();
    data['averageKmPerDay'] = averageKmPerDay;
    data['averageMilesPerDay'] = averageMilesPerDay;
    data['avgDistanceSource'] = avgDistanceSource;
    data['avgKmPerYear'] = avgKmPerYear;
    data['avgMilesPerYear'] = avgMilesPerYear;
    data['bodyTypeDescription'] = bodyTypeDescription;
    data['confirmedServiceDate'] = confirmedServiceDate;
    data['createDate'] = createDate;
    data['displayRecords'] = displayRecords;
    data['driveline'] = driveline;
    data['engineInformation'] = engineInformation;
    data['estimatedCurrentKm'] = estimatedCurrentKm;
    data['estimatedCurrentMileage'] = estimatedCurrentMileage;
    data['events'] = events;
    data['favoriteShops'] = favoriteShops;
    data['id'] = id;
    data['lastModDate'] = lastModDate;
    data['lastOdoDate'] = lastOdoDate;
    data['lastOdoKm'] = lastOdoKm;
    data['lastOdoMileage'] = lastOdoMileage;
    data['lastOdoSource'] = lastOdoSource;
    data['lastOwnershipDate'] = lastOwnershipDate;
    data['licensePlate'] = licensePlate;
    data['make'] = make;
    data['metric'] = metric;
    data['model'] = model;
    data['nickname'] = nickname;
    data['numberOfAfterMarketServiceRecords'] = numberOfAfterMarketServiceRecords;
    data['numberOfDealerServiceRecords'] = numberOfDealerServiceRecords;
    data['numberOfDisplayableRecords'] = numberOfDisplayableRecords;
    data['numberOfRecallRecords'] = numberOfRecallRecords;
    data['numberOfServiceRecords'] = numberOfServiceRecords;
    data['pickListShops'] = pickListShops;
    data['postalCode'] = postalCode;
    data['recallDataDisplayable'] = recallDataDisplayable;
    data['recallDismissals'] = recallDismissals;
    data['recentShops'] = recentShops;
    data['serviceScheduleIdentifier'] = serviceScheduleIdentifier.toJson();
    data['severeEvents'] = severeEvents;
    data['signupType'] = signupType;
    data['socialSharingDescription'] = socialSharingDescription;
    data['submodelSelected'] = submodelSelected;
    data['suggestedShops'] = suggestedShops;
    data['tradeInLeads'] = tradeInLeads;
    data['userEventIntervals'] = userEventIntervals.map((e) => e.toJson()).toList();
    data['vehicleDescription'] = vehicleDescription;
    data['vehiclePhotos'] = vehiclePhotos;
    data['vin'] = vin;
    data['wellMaintainedBadge'] = wellMaintainedBadge;
    data['year'] = year;
    return data;
  }
}

class Attributes {
  Attributes({
    required this.fieldName,
    required this.fieldValue,
    required this.id,
  });
  late final String fieldName;
  late final String fieldValue;
  late final int id;

  Attributes.fromJson(Map<String, dynamic> json) {
    fieldName = json['fieldName'];
    fieldValue = json['fieldValue'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['fieldName'] = fieldName;
    data['fieldValue'] = fieldValue;
    data['id'] = id;
    return data;
  }
}

class ServiceScheduleIdentifier {
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
  late final String cylinders;
  late final int engineBaseId;
  late final int engineDesignationId;
  late final String fuelType;
  late final int id;
  late final String liter;
  late final String modelName;
  late final int submodelId;
  late final String submodelName;
  late final String vinSelectPattern;

  ServiceScheduleIdentifier.fromJson(Map<String, dynamic> json) {
    cylinders = json['cylinders'];
    engineBaseId = json['engineBaseId'];
    engineDesignationId = json['engineDesignationId'];
    fuelType = json['fuelType'];
    id = json['id'];
    liter = json['liter'];
    modelName = json['modelName'];
    submodelId = json['submodelId'];
    submodelName = json['submodelName'];
    vinSelectPattern = json['vinSelectPattern'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['cylinders'] = cylinders;
    data['engineBaseId'] = engineBaseId;
    data['engineDesignationId'] = engineDesignationId;
    data['fuelType'] = fuelType;
    data['id'] = id;
    data['liter'] = liter;
    data['modelName'] = modelName;
    data['submodelId'] = submodelId;
    data['submodelName'] = submodelName;
    data['vinSelectPattern'] = vinSelectPattern;
    return data;
  }
}

class UserEventIntervals {
  UserEventIntervals({
    required this.dayInterval,
    required this.eventType,
    required this.id,
    required this.kmInterval,
    required this.mileageInterval,
    required this.monthInterval,
  });
  late final int dayInterval;
  late final String eventType;
  late final int id;
  late final String kmInterval;
  late final String mileageInterval;
  late final String monthInterval;

  UserEventIntervals.fromJson(Map<String, dynamic> json) {
    dayInterval = json['dayInterval'];
    eventType = json['eventType'];
    id = json['id'];
    kmInterval = json['kmInterval'];
    mileageInterval = json['mileageInterval'];
    monthInterval = json['monthInterval'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['dayInterval'] = dayInterval;
    data['eventType'] = eventType;
    data['id'] = id;
    data['kmInterval'] = kmInterval;
    data['mileageInterval'] = mileageInterval;
    data['monthInterval'] = monthInterval;
    return data;
  }
}
