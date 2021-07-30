import 'dart:convert';

import 'package:flutter/foundation.dart';

class University {
  final List<String> domains;
  final List<String> web_pages;
  final String name;
  final String alpha_two_code;
  final String country;
  University({
    required this.domains,
    required this.web_pages,
    required this.name,
    required this.alpha_two_code,
    required this.country,
  });

  University copyWith({
    List<String>? domains,
    List<String>? web_pages,
    String? name,
    String? alpha_two_code,
    String? country,
  }) {
    return University(
      domains: domains ?? this.domains,
      web_pages: web_pages ?? this.web_pages,
      name: name ?? this.name,
      alpha_two_code: alpha_two_code ?? this.alpha_two_code,
      country: country ?? this.country,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'domains': domains,
      'web_pages': web_pages,
      'name': name,
      'alpha_two_code': alpha_two_code,
      'country': country,
    };
  }

  factory University.fromMap(Map<String, dynamic> map) {
    return University(
      domains: List<String>.from(map['domains']),
      web_pages: List<String>.from(map['web_pages']),
      name: map['name'],
      alpha_two_code: map['alpha_two_code'],
      country: map['country'],
    );
  }

  String toJson() => json.encode(toMap());

  factory University.fromJson(String source) =>
      University.fromMap(json.decode(source));

  @override
  String toString() {
    return 'University(domains: $domains, web_pages: $web_pages, name: $name, alpha_two_code: $alpha_two_code, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is University &&
        listEquals(other.domains, domains) &&
        listEquals(other.web_pages, web_pages) &&
        other.name == name &&
        other.alpha_two_code == alpha_two_code &&
        other.country == country;
  }

  @override
  int get hashCode {
    return domains.hashCode ^
        web_pages.hashCode ^
        name.hashCode ^
        alpha_two_code.hashCode ^
        country.hashCode;
  }
}
