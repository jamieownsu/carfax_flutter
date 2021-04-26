// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicles_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Listings _$ListingsFromJson(Map<String, dynamic> json) {
  return Listings(
    accidentHistory: json['accidentHistory'] == null
        ? null
        : History.fromJson(json['accidentHistory'] as Map<String, dynamic>),
    advantage: json['advantage'] as bool,
    atomOtherOptions:
        (json['atomOtherOptions'] as List)?.map((e) => e as String)?.toList(),
    atomTopOptions:
        (json['atomTopOptions'] as List)?.map((e) => e as String)?.toList(),
    backfill: json['backfill'] as bool,
    badge: json['badge'] as String,
    bedLength: json['bedLength'] as String,
    bodytype: json['bodytype'] as String,
    cabType: json['cabType'] as String,
    certified: json['certified'] as bool,
    currentPrice: json['currentPrice'] as int,
    dealer: json['dealer'] == null
        ? null
        : Dealer.fromJson(json['dealer'] as Map<String, dynamic>),
    dealerType: json['dealerType'] as String,
    displacement: json['displacement'] as String,
    distanceToDealer: (json['distanceToDealer'] as num)?.toDouble(),
    drivetype: json['drivetype'] as String,
    engine: json['engine'] as String,
    exteriorColor: json['exteriorColor'] as String,
    firstSeen: json['firstSeen'] == null
        ? null
        : DateTime.parse(json['firstSeen'] as String),
    followCount: json['followCount'] as int,
    followedAt: json['followedAt'] as int,
    following: json['following'] as bool,
    fuel: json['fuel'] as String,
    hasViewed: json['hasViewed'] as bool,
    id: json['id'] as String,
    imageCount: json['imageCount'] as int,
    images: json['images'] == null
        ? null
        : Images.fromJson(json['images'] as Map<String, dynamic>),
    interiorColor: json['interiorColor'] as String,
    isEnriched: json['isEnriched'] as bool,
    isOemPromoted: json['isOemPromoted'] as bool,
    isOemRefundFlag: json['isOemRefundFlag'] as bool,
    listPrice: json['listPrice'] as int,
    make: json['make'] as String,
    mileage: json['mileage'] as int,
    model: json['model'] as String,
    monthlyPaymentEstimate: json['monthlyPaymentEstimate'] == null
        ? null
        : MonthlyPaymentEstimate.fromJson(
            json['monthlyPaymentEstimate'] as Map<String, dynamic>),
    mpgCity: json['mpgCity'] as int,
    mpgHighway: json['mpgHighway'] as int,
    noAccidents: json['noAccidents'] as bool,
    oneOwner: json['oneOwner'] as bool,
    onePrice: json['onePrice'] as int,
    onePriceArrows: (json['onePriceArrows'] as List)
        ?.map((e) => e == null
            ? null
            : OnePriceArrow.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    onlineOnly: json['onlineOnly'] as bool,
    ownerHistory: json['ownerHistory'] == null
        ? null
        : History.fromJson(json['ownerHistory'] as Map<String, dynamic>),
    personalUse: json['personalUse'] as bool,
    placed: json['placed'] as bool,
    recordType: json['recordType'] as String,
    sentLead: json['sentLead'] as bool,
    serviceHistory: json['serviceHistory'] == null
        ? null
        : ServiceHistory.fromJson(
            json['serviceHistory'] as Map<String, dynamic>),
    serviceRecords: json['serviceRecords'] as bool,
    sortScore: (json['sortScore'] as num)?.toDouble(),
    stockNumber: json['stockNumber'] as String,
    subTrim: json['subTrim'] as String,
    topOptions: (json['topOptions'] as List)?.map((e) => e as String)?.toList(),
    tpCostPerVdp: (json['tpCostPerVdp'] as num)?.toDouble(),
    tpEligible: json['tpEligible'] as bool,
    transmission: json['transmission'] as String,
    trim: json['trim'] as String,
    vdpUrl: json['vdpUrl'] as String,
    vehicleCondition: json['vehicleCondition'] as String,
    vehicleUseHistory: json['vehicleUseHistory'] == null
        ? null
        : History.fromJson(json['vehicleUseHistory'] as Map<String, dynamic>),
    vin: json['vin'] as String,
    windowSticker: json['windowSticker'] as String,
    year: json['year'] as int,
  );
}

Map<String, dynamic> _$ListingsToJson(Listings instance) => <String, dynamic>{
      'accidentHistory': instance.accidentHistory,
      'advantage': instance.advantage,
      'atomOtherOptions': instance.atomOtherOptions,
      'atomTopOptions': instance.atomTopOptions,
      'backfill': instance.backfill,
      'badge': instance.badge,
      'bedLength': instance.bedLength,
      'bodytype': instance.bodytype,
      'cabType': instance.cabType,
      'certified': instance.certified,
      'currentPrice': instance.currentPrice,
      'dealer': instance.dealer,
      'dealerType': instance.dealerType,
      'displacement': instance.displacement,
      'distanceToDealer': instance.distanceToDealer,
      'drivetype': instance.drivetype,
      'engine': instance.engine,
      'exteriorColor': instance.exteriorColor,
      'firstSeen': instance.firstSeen?.toIso8601String(),
      'followCount': instance.followCount,
      'followedAt': instance.followedAt,
      'following': instance.following,
      'fuel': instance.fuel,
      'hasViewed': instance.hasViewed,
      'id': instance.id,
      'imageCount': instance.imageCount,
      'images': instance.images,
      'interiorColor': instance.interiorColor,
      'isEnriched': instance.isEnriched,
      'isOemPromoted': instance.isOemPromoted,
      'isOemRefundFlag': instance.isOemRefundFlag,
      'listPrice': instance.listPrice,
      'make': instance.make,
      'mileage': instance.mileage,
      'model': instance.model,
      'monthlyPaymentEstimate': instance.monthlyPaymentEstimate,
      'mpgCity': instance.mpgCity,
      'mpgHighway': instance.mpgHighway,
      'noAccidents': instance.noAccidents,
      'oneOwner': instance.oneOwner,
      'onePrice': instance.onePrice,
      'onePriceArrows': instance.onePriceArrows,
      'onlineOnly': instance.onlineOnly,
      'ownerHistory': instance.ownerHistory,
      'personalUse': instance.personalUse,
      'placed': instance.placed,
      'recordType': instance.recordType,
      'sentLead': instance.sentLead,
      'serviceHistory': instance.serviceHistory,
      'serviceRecords': instance.serviceRecords,
      'sortScore': instance.sortScore,
      'stockNumber': instance.stockNumber,
      'subTrim': instance.subTrim,
      'topOptions': instance.topOptions,
      'tpCostPerVdp': instance.tpCostPerVdp,
      'tpEligible': instance.tpEligible,
      'transmission': instance.transmission,
      'trim': instance.trim,
      'vdpUrl': instance.vdpUrl,
      'vehicleCondition': instance.vehicleCondition,
      'vehicleUseHistory': instance.vehicleUseHistory,
      'vin': instance.vin,
      'windowSticker': instance.windowSticker,
      'year': instance.year,
    };

History _$HistoryFromJson(Map<String, dynamic> json) {
  return History(
    accidentSummary:
        (json['accidentSummary'] as List)?.map((e) => e as String)?.toList(),
    icon: json['icon'] as String,
    iconUrl: json['iconUrl'] as String,
    text: json['text'] as String,
    history: (json['history'] as List)
        ?.map((e) => e == null
            ? null
            : AccidentHistoryHistory.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$HistoryToJson(History instance) => <String, dynamic>{
      'accidentSummary': instance.accidentSummary,
      'icon': instance.icon,
      'iconUrl': instance.iconUrl,
      'text': instance.text,
      'history': instance.history,
    };

AccidentHistoryHistory _$AccidentHistoryHistoryFromJson(
    Map<String, dynamic> json) {
  return AccidentHistoryHistory(
    city: json['city'] as String,
    endOwnershipDate: json['endOwnershipDate'] as String,
    ownerNumber: json['ownerNumber'] as int,
    purchaseDate: json['purchaseDate'] as String,
    state: json['state'] as String,
    averageMilesPerYear: json['averageMilesPerYear'] as int,
    useType: json['useType'] as String,
  );
}

Map<String, dynamic> _$AccidentHistoryHistoryToJson(
        AccidentHistoryHistory instance) =>
    <String, dynamic>{
      'city': instance.city,
      'endOwnershipDate': instance.endOwnershipDate,
      'ownerNumber': instance.ownerNumber,
      'purchaseDate': instance.purchaseDate,
      'state': instance.state,
      'averageMilesPerYear': instance.averageMilesPerYear,
      'useType': instance.useType,
    };

Dealer _$DealerFromJson(Map<String, dynamic> json) {
  return Dealer(
    address: json['address'] as String,
    backfill: json['backfill'] as bool,
    carfaxId: json['carfaxId'] as String,
    cfxMicrositeUrl: json['cfxMicrositeUrl'] as String,
    city: json['city'] as String,
    dealerAverageRating: (json['dealerAverageRating'] as num)?.toDouble(),
    dealerInventoryUrl: json['dealerInventoryUrl'] as String,
    dealerLeadType: json['dealerLeadType'] as String,
    dealerReviewComments: json['dealerReviewComments'] as String,
    dealerReviewCount: json['dealerReviewCount'] as int,
    dealerReviewDate: json['dealerReviewDate'] == null
        ? null
        : DateTime.parse(json['dealerReviewDate'] as String),
    dealerReviewRating: json['dealerReviewRating'] as int,
    dealerReviewReviewer: json['dealerReviewReviewer'] as String,
    dealerReviewTitle: json['dealerReviewTitle'] as String,
    latitude: json['latitude'] as String,
    longitude: json['longitude'] as String,
    name: json['name'] as String,
    onlineOnly: json['onlineOnly'] as bool,
    phone: json['phone'] as String,
    state: json['state'] as String,
    zip: json['zip'] as String,
  );
}

Map<String, dynamic> _$DealerToJson(Dealer instance) => <String, dynamic>{
      'address': instance.address,
      'backfill': instance.backfill,
      'carfaxId': instance.carfaxId,
      'cfxMicrositeUrl': instance.cfxMicrositeUrl,
      'city': instance.city,
      'dealerAverageRating': instance.dealerAverageRating,
      'dealerInventoryUrl': instance.dealerInventoryUrl,
      'dealerLeadType': instance.dealerLeadType,
      'dealerReviewComments': instance.dealerReviewComments,
      'dealerReviewCount': instance.dealerReviewCount,
      'dealerReviewDate': instance.dealerReviewDate?.toIso8601String(),
      'dealerReviewRating': instance.dealerReviewRating,
      'dealerReviewReviewer': instance.dealerReviewReviewer,
      'dealerReviewTitle': instance.dealerReviewTitle,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'name': instance.name,
      'onlineOnly': instance.onlineOnly,
      'phone': instance.phone,
      'state': instance.state,
      'zip': instance.zip,
    };

Images _$ImagesFromJson(Map<String, dynamic> json) {
  return Images(
    baseUrl: json['baseUrl'] as String,
    firstPhoto: json['firstPhoto'] == null
        ? null
        : FirstPhoto.fromJson(json['firstPhoto'] as Map<String, dynamic>),
    large: (json['large'] as List)?.map((e) => e as String)?.toList(),
    medium: (json['medium'] as List)?.map((e) => e as String)?.toList(),
    small: (json['small'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'baseUrl': instance.baseUrl,
      'firstPhoto': instance.firstPhoto,
      'large': instance.large,
      'medium': instance.medium,
      'small': instance.small,
    };

FirstPhoto _$FirstPhotoFromJson(Map<String, dynamic> json) {
  return FirstPhoto(
    large: json['large'] as String,
    medium: json['medium'] as String,
    small: json['small'] as String,
  );
}

Map<String, dynamic> _$FirstPhotoToJson(FirstPhoto instance) =>
    <String, dynamic>{
      'large': instance.large,
      'medium': instance.medium,
      'small': instance.small,
    };

MonthlyPaymentEstimate _$MonthlyPaymentEstimateFromJson(
    Map<String, dynamic> json) {
  return MonthlyPaymentEstimate(
    downPaymentAmount: (json['downPaymentAmount'] as num)?.toDouble(),
    downPaymentPercent: json['downPaymentPercent'] as int,
    interestRate: json['interestRate'] as int,
    loanAmount: (json['loanAmount'] as num)?.toDouble(),
    monthlyPayment: (json['monthlyPayment'] as num)?.toDouble(),
    price: json['price'] as int,
    termInMonths: json['termInMonths'] as int,
  );
}

Map<String, dynamic> _$MonthlyPaymentEstimateToJson(
        MonthlyPaymentEstimate instance) =>
    <String, dynamic>{
      'downPaymentAmount': instance.downPaymentAmount,
      'downPaymentPercent': instance.downPaymentPercent,
      'interestRate': instance.interestRate,
      'loanAmount': instance.loanAmount,
      'monthlyPayment': instance.monthlyPayment,
      'price': instance.price,
      'termInMonths': instance.termInMonths,
    };

OnePriceArrow _$OnePriceArrowFromJson(Map<String, dynamic> json) {
  return OnePriceArrow(
    arrow: json['arrow'] as String,
    arrowUrl: json['arrowUrl'] as String,
    icon: json['icon'] as String,
    iconUrl: json['iconUrl'] as String,
    order: json['order'] as int,
    text: json['text'] as String,
  );
}

Map<String, dynamic> _$OnePriceArrowToJson(OnePriceArrow instance) =>
    <String, dynamic>{
      'arrow': instance.arrow,
      'arrowUrl': instance.arrowUrl,
      'icon': instance.icon,
      'iconUrl': instance.iconUrl,
      'order': instance.order,
      'text': instance.text,
    };

ServiceHistory _$ServiceHistoryFromJson(Map<String, dynamic> json) {
  return ServiceHistory(
    history: (json['history'] as List)
        ?.map((e) => e == null
            ? null
            : ServiceHistoryHistory.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    icon: json['icon'] as String,
    iconUrl: json['iconUrl'] as String,
    number: json['number'] as int,
    text: json['text'] as String,
  );
}

Map<String, dynamic> _$ServiceHistoryToJson(ServiceHistory instance) =>
    <String, dynamic>{
      'history': instance.history,
      'icon': instance.icon,
      'iconUrl': instance.iconUrl,
      'number': instance.number,
      'text': instance.text,
    };

ServiceHistoryHistory _$ServiceHistoryHistoryFromJson(
    Map<String, dynamic> json) {
  return ServiceHistoryHistory(
    city: json['city'] as String,
    date: json['date'] as String,
    description: json['description'] as String,
    odometerReading: json['odometerReading'] as int,
    source: json['source'] as String,
    state: json['state'] as String,
  );
}

Map<String, dynamic> _$ServiceHistoryHistoryToJson(
        ServiceHistoryHistory instance) =>
    <String, dynamic>{
      'city': instance.city,
      'date': instance.date,
      'description': instance.description,
      'odometerReading': instance.odometerReading,
      'source': instance.source,
      'state': instance.state,
    };
