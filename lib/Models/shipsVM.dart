// To parse this JSON data, do
//
//     final shipsVm = shipsVmFromJson(jsonString);

import 'dart:convert';

List<ShipsVm> shipsVmFromJson(String str) => List<ShipsVm>.from(json.decode(str).map((x) => ShipsVm.fromJson(x)));

String shipsVmToJson(List<ShipsVm> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ShipsVm {
  ShipsVm({
    this.lastAisUpdate,
    this.legacyId,
    this.model,
    this.type,
    this.roles,
    this.imo,
    this.mmsi,
    this.abs,
    this.shipsVmClass,
    this.massKg,
    this.massLbs,
    this.yearBuilt,
    this.homePort,
    this.status,
    this.speedKn,
    this.courseDeg,
    this.latitude,
    this.longitude,
    this.link,
    this.image,
    this.name,
    this.active,
    this.launches,
    this.id,
  });

  dynamic lastAisUpdate;
  String legacyId;
  String model;
  Type type;
  List<Role> roles;
  int imo;
  int mmsi;
  int abs;
  int shipsVmClass;
  int massKg;
  int massLbs;
  int yearBuilt;
  HomePort homePort;
  String status;
  dynamic speedKn;
  dynamic courseDeg;
  double latitude;
  double longitude;
  String link;
  String image;
  String name;
  bool active;
  List<String> launches;
  String id;

  factory ShipsVm.fromJson(Map<String, dynamic> json) => ShipsVm(
    lastAisUpdate: json["last_ais_update"],
    legacyId: json["legacy_id"] == null ? null : json["legacy_id"],
    model: json["model"] == null ? null : json["model"],
    type: typeValues.map[json["type"]],
    roles: List<Role>.from(json["roles"].map((x) => roleValues.map[x])),
    imo: json["imo"] == null ? null : json["imo"],
    mmsi: json["mmsi"] == null ? null : json["mmsi"],
    abs: json["abs"] == null ? null : json["abs"],
    shipsVmClass: json["class"] == null ? null : json["class"],
    massKg: json["mass_kg"] == null ? null : json["mass_kg"],
    massLbs: json["mass_lbs"] == null ? null : json["mass_lbs"],
    yearBuilt: json["year_built"] == null ? null : json["year_built"],
    homePort: homePortValues.map[json["home_port"]],
    status: json["status"] == null ? null : json["status"],
    speedKn: json["speed_kn"],
    courseDeg: json["course_deg"],
    latitude: json["latitude"] == null ? null : json["latitude"].toDouble(),
    longitude: json["longitude"] == null ? null : json["longitude"].toDouble(),
    link: json["link"] == null ? null : json["link"],
    image: json["image"] == null ? null : json["image"],
    name: json["name"],
    active: json["active"],
    launches: List<String>.from(json["launches"].map((x) => x)),
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "last_ais_update": lastAisUpdate,
    "legacy_id": legacyId == null ? null : legacyId,
    "model": model == null ? null : model,
    "type": typeValues.reverse[type],
    "roles": List<dynamic>.from(roles.map((x) => roleValues.reverse[x])),
    "imo": imo == null ? null : imo,
    "mmsi": mmsi == null ? null : mmsi,
    "abs": abs == null ? null : abs,
    "class": shipsVmClass == null ? null : shipsVmClass,
    "mass_kg": massKg == null ? null : massKg,
    "mass_lbs": massLbs == null ? null : massLbs,
    "year_built": yearBuilt == null ? null : yearBuilt,
    "home_port": homePortValues.reverse[homePort],
    "status": status == null ? null : status,
    "speed_kn": speedKn,
    "course_deg": courseDeg,
    "latitude": latitude == null ? null : latitude,
    "longitude": longitude == null ? null : longitude,
    "link": link == null ? null : link,
    "image": image == null ? null : image,
    "name": name,
    "active": active,
    "launches": List<dynamic>.from(launches.map((x) => x)),
    "id": id,
  };
}

enum HomePort { PORT_OF_LOS_ANGELES, PORT_CANAVERAL, FORT_LAUDERDALE }

final homePortValues = EnumValues({
  "Fort Lauderdale": HomePort.FORT_LAUDERDALE,
  "Port Canaveral": HomePort.PORT_CANAVERAL,
  "Port of Los Angeles": HomePort.PORT_OF_LOS_ANGELES
});

enum Role { SUPPORT_SHIP, BARGE_TUG, DRAGON_RECOVERY, ASDS_BARGE, ASDS_TUG, FAIRING_RECOVERY }

final roleValues = EnumValues({
  "ASDS barge": Role.ASDS_BARGE,
  "ASDS Tug": Role.ASDS_TUG,
  "Barge Tug": Role.BARGE_TUG,
  "Dragon Recovery": Role.DRAGON_RECOVERY,
  "Fairing Recovery": Role.FAIRING_RECOVERY,
  "Support Ship": Role.SUPPORT_SHIP
});

enum Type { TUG, CARGO, BARGE, HIGH_SPEED_CRAFT }

final typeValues = EnumValues({
  "Barge": Type.BARGE,
  "Cargo": Type.CARGO,
  "High Speed Craft": Type.HIGH_SPEED_CRAFT,
  "Tug": Type.TUG
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
