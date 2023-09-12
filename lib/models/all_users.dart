// To parse this JSON data, do
//
//     final allUser = allUserFromJson(jsonString);

import 'dart:convert';

AllUser allUserFromJson(String str) => AllUser.fromJson(json.decode(str));

String allUserToJson(AllUser data) => json.encode(data.toJson());

class AllUser {
  Userinfo? userinfo;
  List<BusinessRegistration>? businessRegistrations;
  List<Business>? businesses;
  List<Employee>? employees;
  List<EntTraining>? entTrainings;
  List<ExistingService>? existingServices;
  List<Quality>? qualities;
  List<RawMaterial>? rawMaterials;
  List<RelatedIndustry>? relatedIndustries;
  List<Userinfosecondary>? userinfosecondaries;

  AllUser({
    this.userinfo,
    this.businessRegistrations,
    this.businesses,
    this.employees,
    this.entTrainings,
    this.existingServices,
    this.qualities,
    this.rawMaterials,
    this.relatedIndustries,
    this.userinfosecondaries,
  });

  factory AllUser.fromJson(Map<String, dynamic> json) => AllUser(
    userinfo: json["userinfo"] == null ? null : Userinfo.fromJson(json["userinfo"]),
    businessRegistrations: json["business_registrations"] == null ? [] : List<BusinessRegistration>.from(json["business_registrations"]!.map((x) => BusinessRegistration.fromJson(x))),
    businesses: json["businesses"] == null ? [] : List<Business>.from(json["businesses"]!.map((x) => Business.fromJson(x))),
    employees: json["employees"] == null ? [] : List<Employee>.from(json["employees"]!.map((x) => Employee.fromJson(x))),
    entTrainings: json["ent_trainings"] == null ? [] : List<EntTraining>.from(json["ent_trainings"]!.map((x) => EntTraining.fromJson(x))),
    existingServices: json["existing_services"] == null ? [] : List<ExistingService>.from(json["existing_services"]!.map((x) => ExistingService.fromJson(x))),
    qualities: json["qualities"] == null ? [] : List<Quality>.from(json["qualities"]!.map((x) => Quality.fromJson(x))),
    rawMaterials: json["raw_materials"] == null ? [] : List<RawMaterial>.from(json["raw_materials"]!.map((x) => RawMaterial.fromJson(x))),
    relatedIndustries: json["related_industries"] == null ? [] : List<RelatedIndustry>.from(json["related_industries"]!.map((x) => RelatedIndustry.fromJson(x))),
    userinfosecondaries: json["userinfosecondaries"] == null ? [] : List<Userinfosecondary>.from(json["userinfosecondaries"]!.map((x) => Userinfosecondary.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "userinfo": userinfo?.toJson(),
    "business_registrations": businessRegistrations == null ? [] : List<dynamic>.from(businessRegistrations!.map((x) => x.toJson())),
    "businesses": businesses == null ? [] : List<dynamic>.from(businesses!.map((x) => x.toJson())),
    "employees": employees == null ? [] : List<dynamic>.from(employees!.map((x) => x.toJson())),
    "ent_trainings": entTrainings == null ? [] : List<dynamic>.from(entTrainings!.map((x) => x.toJson())),
    "existing_services": existingServices == null ? [] : List<dynamic>.from(existingServices!.map((x) => x.toJson())),
    "qualities": qualities == null ? [] : List<dynamic>.from(qualities!.map((x) => x.toJson())),
    "raw_materials": rawMaterials == null ? [] : List<dynamic>.from(rawMaterials!.map((x) => x.toJson())),
    "related_industries": relatedIndustries == null ? [] : List<dynamic>.from(relatedIndustries!.map((x) => x.toJson())),
    "userinfosecondaries": userinfosecondaries == null ? [] : List<dynamic>.from(userinfosecondaries!.map((x) => x.toJson())),
  };
}

class BusinessRegistration {
  int? id;
  String? businessRegister;
  String? businessType;
  dynamic businessEntity;
  String? businessDateOfRegistration;
  String? businessCondition;
  String? businessRevenue;
  String? businessPanNumber;
  String? businessVatNumber;
  String? businessRegistrationLmc;
  int? userinfoId;
  DateTime? createdAt;
  DateTime? updatedAt;

  BusinessRegistration({
    this.id,
    this.businessRegister,
    this.businessType,
    this.businessEntity,
    this.businessDateOfRegistration,
    this.businessCondition,
    this.businessRevenue,
    this.businessPanNumber,
    this.businessVatNumber,
    this.businessRegistrationLmc,
    this.userinfoId,
    this.createdAt,
    this.updatedAt,
  });

  factory BusinessRegistration.fromJson(Map<String, dynamic> json) => BusinessRegistration(
    id: json["id"],
    businessRegister: json["business_register"],
    businessType: json["business_type"],
    businessEntity: json["business_entity"],
    businessDateOfRegistration: json["business_date_of_registration"],
    businessCondition: json["business_condition"],
    businessRevenue: json["business_revenue"],
    businessPanNumber: json["business_pan_number"],
    businessVatNumber: json["business_vat_number"],
    businessRegistrationLmc: json["business_registration_lmc"],
    userinfoId: json["userinfo_id"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "business_register": businessRegister,
    "business_type": businessType,
    "business_entity": businessEntity,
    "business_date_of_registration": businessDateOfRegistration,
    "business_condition": businessCondition,
    "business_revenue": businessRevenue,
    "business_pan_number": businessPanNumber,
    "business_vat_number": businessVatNumber,
    "business_registration_lmc": businessRegistrationLmc,
    "userinfo_id": userinfoId,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
  };
}

class Business {
  int? id;
  String? businessName;
  String? businessTole;
  String? businessWardNumber;
  String? businessPalika;
  String? businessMobileNumber;
  String? phoneNumber;
  String? businessEmail;
  String? businessType;
  String? businessKindOf;
  String? businessTypeOrProductType;
  int? userinfoId;
  DateTime? createdAt;
  DateTime? updatedAt;

  Business({
    this.id,
    this.businessName,
    this.businessTole,
    this.businessWardNumber,
    this.businessPalika,
    this.businessMobileNumber,
    this.phoneNumber,
    this.businessEmail,
    this.businessType,
    this.businessKindOf,
    this.businessTypeOrProductType,
    this.userinfoId,
    this.createdAt,
    this.updatedAt,
  });

  factory Business.fromJson(Map<String, dynamic> json) => Business(
    id: json["id"],
    businessName: json["business_name"],
    businessTole: json["business_tole"],
    businessWardNumber: json["business_ward_number"],
    businessPalika: json["business_palika"],
    businessMobileNumber: json["business_mobile_number"],
    phoneNumber: json["phone_number"],
    businessEmail: json["business_email"],
    businessType: json["business_type"],
    businessKindOf: json["business_kind_of"],
    businessTypeOrProductType: json["business_type_or_product_type"],
    userinfoId: json["userinfo_id"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "business_name": businessName,
    "business_tole": businessTole,
    "business_ward_number": businessWardNumber,
    "business_palika": businessPalika,
    "business_mobile_number": businessMobileNumber,
    "phone_number": phoneNumber,
    "business_email": businessEmail,
    "business_type": businessType,
    "business_kind_of": businessKindOf,
    "business_type_or_product_type": businessTypeOrProductType,
    "userinfo_id": userinfoId,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
  };
}

class Employee {
  int? id;
  String? totalEmployee;
  String? femaleEmployee;
  String? maleEmployee;
  String? disabledEmployee;
  String? targetMarket;
  String? marketProblem;
  String? salesRoom;
  String? salesRoomAddress;
  String? productionCapacityUnit;
  String? productionCapacityAmount;
  int? userinfoId;
  DateTime? createdAt;
  DateTime? updatedAt;

  Employee({
    this.id,
    this.totalEmployee,
    this.femaleEmployee,
    this.maleEmployee,
    this.disabledEmployee,
    this.targetMarket,
    this.marketProblem,
    this.salesRoom,
    this.salesRoomAddress,
    this.productionCapacityUnit,
    this.productionCapacityAmount,
    this.userinfoId,
    this.createdAt,
    this.updatedAt,
  });

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
    id: json["id"],
    totalEmployee: json["total_employee"],
    femaleEmployee: json["female_employee"],
    maleEmployee: json["male_employee"],
    disabledEmployee: json["disabled_employee"],
    targetMarket: json["target_market"],
    marketProblem: json["market_problem"],
    salesRoom: json["sales_room"],
    salesRoomAddress: json["sales_room_address"],
    productionCapacityUnit: json["production_capacity_unit"],
    productionCapacityAmount: json["production_capacity_amount"],
    userinfoId: json["userinfo_id"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "total_employee": totalEmployee,
    "female_employee": femaleEmployee,
    "male_employee": maleEmployee,
    "disabled_employee": disabledEmployee,
    "target_market": targetMarket,
    "market_problem": marketProblem,
    "sales_room": salesRoom,
    "sales_room_address": salesRoomAddress,
    "production_capacity_unit": productionCapacityUnit,
    "production_capacity_amount": productionCapacityAmount,
    "userinfo_id": userinfoId,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
  };
}

class EntTraining {
  int? id;
  String? entTrain;
  String? entTrainingTypes;
  int? userinfoId;
  DateTime? createdAt;
  DateTime? updatedAt;

  EntTraining({
    this.id,
    this.entTrain,
    this.entTrainingTypes,
    this.userinfoId,
    this.createdAt,
    this.updatedAt,
  });

  factory EntTraining.fromJson(Map<String, dynamic> json) => EntTraining(
    id: json["id"],
    entTrain: json["ent_train"],
    entTrainingTypes: json["ent_training_types"],
    userinfoId: json["userinfo_id"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "ent_train": entTrain,
    "ent_training_types": entTrainingTypes,
    "userinfo_id": userinfoId,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
  };
}

class ExistingService {
  int? id;
  String? discountToPromoteEnt;
  String? discountRelevantAgency;
  String? facilityReceived;
  String? honorsReceived;
  int? userinfoId;
  DateTime? createdAt;
  DateTime? updatedAt;

  ExistingService({
    this.id,
    this.discountToPromoteEnt,
    this.discountRelevantAgency,
    this.facilityReceived,
    this.honorsReceived,
    this.userinfoId,
    this.createdAt,
    this.updatedAt,
  });

  factory ExistingService.fromJson(Map<String, dynamic> json) => ExistingService(
    id: json["id"],
    discountToPromoteEnt: json["discount_to_promote_ent"],
    discountRelevantAgency: json["discount_relevant_agency"],
    facilityReceived: json["facility_received"],
    honorsReceived: json["honors_received"],
    userinfoId: json["userinfo_id"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "discount_to_promote_ent": discountToPromoteEnt,
    "discount_relevant_agency": discountRelevantAgency,
    "facility_received": facilityReceived,
    "honors_received": honorsReceived,
    "userinfo_id": userinfoId,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
  };
}

class Quality {
  int? id;
  String? mainProductQuality;
  String? labelInformation;
  String? testingAndLicense;
  String? licenseFrom;
  String? toiletCondition;
  String? childLabor;
  String? lunch;
  int? userinfoId;
  DateTime? createdAt;
  DateTime? updatedAt;

  Quality({
    this.id,
    this.mainProductQuality,
    this.labelInformation,
    this.testingAndLicense,
    this.licenseFrom,
    this.toiletCondition,
    this.childLabor,
    this.lunch,
    this.userinfoId,
    this.createdAt,
    this.updatedAt,
  });

  factory Quality.fromJson(Map<String, dynamic> json) => Quality(
    id: json["id"],
    mainProductQuality: json["main_product_quality"],
    labelInformation: json["label_information"],
    testingAndLicense: json["testing_and_license"],
    licenseFrom: json["license_from"],
    toiletCondition: json["toilet_condition"],
    childLabor: json["child_labor"],
    lunch: json["lunch"],
    userinfoId: json["userinfo_id"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "main_product_quality": mainProductQuality,
    "label_information": labelInformation,
    "testing_and_license": testingAndLicense,
    "license_from": licenseFrom,
    "toilet_condition": toiletCondition,
    "child_labor": childLabor,
    "lunch": lunch,
    "userinfo_id": userinfoId,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
  };
}

class RawMaterial {
  int? id;
  String? mainMaterial;
  String? importFrom;
  String? totalFixedCapital;
  String? totalWorkingCapital;
  String? totalCapital;
  String? businessPlan;
  String? businessRecord;
  String? audit;
  String? mainMachinery;
  String? toolsImportsFrom;
  int? userinfoId;
  DateTime? createdAt;
  DateTime? updatedAt;

  RawMaterial({
    this.id,
    this.mainMaterial,
    this.importFrom,
    this.totalFixedCapital,
    this.totalWorkingCapital,
    this.totalCapital,
    this.businessPlan,
    this.businessRecord,
    this.audit,
    this.mainMachinery,
    this.toolsImportsFrom,
    this.userinfoId,
    this.createdAt,
    this.updatedAt,
  });

  factory RawMaterial.fromJson(Map<String, dynamic> json) => RawMaterial(
    id: json["id"],
    mainMaterial: json["main_material"],
    importFrom: json["import_from"],
    totalFixedCapital: json["total_fixed_capital"],
    totalWorkingCapital: json["total_working_capital"],
    totalCapital: json["total_capital"],
    businessPlan: json["business_plan"],
    businessRecord: json["business_record"],
    audit: json["audit"],
    mainMachinery: json["main_machinery"],
    toolsImportsFrom: json["tools_imports_from"],
    userinfoId: json["userinfo_id"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "main_material": mainMaterial,
    "import_from": importFrom,
    "total_fixed_capital": totalFixedCapital,
    "total_working_capital": totalWorkingCapital,
    "total_capital": totalCapital,
    "business_plan": businessPlan,
    "business_record": businessRecord,
    "audit": audit,
    "main_machinery": mainMachinery,
    "tools_imports_from": toolsImportsFrom,
    "userinfo_id": userinfoId,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
  };
}

class RelatedIndustry {
  int? id;
  dynamic organizationalAffiliation;
  String? contribution;
  String? familySupport;
  int? userinfoId;
  DateTime? createdAt;
  DateTime? updatedAt;

  RelatedIndustry({
    this.id,
    this.organizationalAffiliation,
    this.contribution,
    this.familySupport,
    this.userinfoId,
    this.createdAt,
    this.updatedAt,
  });

  factory RelatedIndustry.fromJson(Map<String, dynamic> json) => RelatedIndustry(
    id: json["id"],
    organizationalAffiliation: json["organizational_affiliation"],
    contribution: json["contribution"],
    familySupport: json["family_support"],
    userinfoId: json["userinfo_id"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "organizational_affiliation": organizationalAffiliation,
    "contribution": contribution,
    "family_support": familySupport,
    "userinfo_id": userinfoId,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
  };
}

class Userinfo {
  int? id;
  String? firstName;
  String? middleName;
  String? lastName;
  String? age;
  String? mobileNumber;
  String? phoneNumber;
  String? email;
  bool? userinfoStatus;
  DateTime? createdAt;
  DateTime? updatedAt;

  Userinfo({
    this.id,
    this.firstName,
    this.middleName,
    this.lastName,
    this.age,
    this.mobileNumber,
    this.phoneNumber,
    this.email,
    this.userinfoStatus,
    this.createdAt,
    this.updatedAt,
  });

  factory Userinfo.fromJson(Map<String, dynamic> json) => Userinfo(
    id: json["id"],
    firstName: json["first_name"],
    middleName: json["middle_name"],
    lastName: json["last_name"],
    age: json["age"],
    mobileNumber: json["mobile_number"],
    phoneNumber: json["phone_number"],
    email: json["email"],
    userinfoStatus: json["userinfo_status"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_name": firstName,
    "middle_name": middleName,
    "last_name": lastName,
    "age": age,
    "mobile_number": mobileNumber,
    "phone_number": phoneNumber,
    "email": email,
    "userinfo_status": userinfoStatus,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
  };
}

class Userinfosecondary {
  int? id;
  String? entTole;
  String? entWardNo;
  String? entPalika;
  String? entEconomicalStatus;
  String? entEducationalStatus;
  String? entMaritalStatus;
  String? entCastDescription;
  int? userinfoId;
  DateTime? createdAt;
  DateTime? updatedAt;

  Userinfosecondary({
    this.id,
    this.entTole,
    this.entWardNo,
    this.entPalika,
    this.entEconomicalStatus,
    this.entEducationalStatus,
    this.entMaritalStatus,
    this.entCastDescription,
    this.userinfoId,
    this.createdAt,
    this.updatedAt,
  });

  factory Userinfosecondary.fromJson(Map<String, dynamic> json) => Userinfosecondary(
    id: json["id"],
    entTole: json["ent_tole"],
    entWardNo: json["ent_ward_no"],
    entPalika: json["ent_palika"],
    entEconomicalStatus: json["ent_economical_status"],
    entEducationalStatus: json["ent_educational_status"],
    entMaritalStatus: json["ent_marital_status"],
    entCastDescription: json["ent_cast_description"],
    userinfoId: json["userinfo_id"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "ent_tole": entTole,
    "ent_ward_no": entWardNo,
    "ent_palika": entPalika,
    "ent_economical_status": entEconomicalStatus,
    "ent_educational_status": entEducationalStatus,
    "ent_marital_status": entMaritalStatus,
    "ent_cast_description": entCastDescription,
    "userinfo_id": userinfoId,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
  };
}
