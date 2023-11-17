// To parse this JSON data, do
//
//     final country = countryFromJson(jsonString);

import 'dart:convert';

List<Country> countryFromJson(String str) =>
    List<Country>.from(json.decode(str).map((x) => Country.fromJson(x)));

String countryToJson(List<Country> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Country {
  Flags flags;
  Name name;

  Country({
    required this.flags,
    required this.name,
  });

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        flags: Flags.fromJson(json["flags"]),
        name: Name.fromJson(json["name"]),
      );

  Map<String, dynamic> toJson() => {
        "flags": flags.toJson(),
        "name": name.toJson(),
      };
}

class Flags {
  String png;
  String svg;
  String alt;

  Flags({
    required this.png,
    required this.svg,
    required this.alt,
  });

  factory Flags.fromJson(Map<String, dynamic> json) => Flags(
        png: json["png"],
        svg: json["svg"],
        alt: json["alt"],
      );

  Map<String, dynamic> toJson() => {
        "png": png,
        "svg": svg,
        "alt": alt,
      };
}

class Name {
  String common;
  String official;
  Map<String, NativeName> nativeName;

  Name({
    required this.common,
    required this.official,
    required this.nativeName,
  });

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        common: json["common"],
        official: json["official"],
        nativeName: Map.from(json["nativeName"]).map(
            (k, v) => MapEntry<String, NativeName>(k, NativeName.fromJson(v)),),
      );

  Map<String, dynamic> toJson() => {
        "common": common,
        "official": official,
        "nativeName": Map.from(nativeName)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
      };
}

class NativeName {
  String official;
  String common;

  NativeName({
    required this.official,
    required this.common,
  });

  factory NativeName.fromJson(Map<String, dynamic> json) => NativeName(
        official: json["official"],
        common: json["common"],
      );

  Map<String, dynamic> toJson() => {
        "official": official,
        "common": common,
      };
}
