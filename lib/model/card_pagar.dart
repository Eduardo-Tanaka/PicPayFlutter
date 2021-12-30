import 'dart:convert';

import 'package:flutter/material.dart';

class CardPagar {
  final IconData icon;
  final String texto;

  CardPagar({
    required this.icon,
    required this.texto,
  });

  CardPagar copyWith({
    IconData? icon,
    String? texto,
  }) {
    return CardPagar(
      icon: icon ?? this.icon,
      texto: texto ?? this.texto,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'icon': icon.codePoint,
      'texto': texto,
    };
  }

  factory CardPagar.fromMap(Map<String, dynamic> map) {
    return CardPagar(
      icon: IconData(map['icon'], fontFamily: 'MaterialIcons'),
      texto: map['texto'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CardPagar.fromJson(String source) =>
      CardPagar.fromMap(json.decode(source));

  @override
  String toString() => 'CardPagar(icon: $icon, texto: $texto)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CardPagar && other.icon == icon && other.texto == texto;
  }

  @override
  int get hashCode => icon.hashCode ^ texto.hashCode;
}
