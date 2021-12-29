import 'dart:convert';

class StoreCard {
  final String image;
  final String title;
  final String subtitle;
  final String? cashback;

  StoreCard({
    required this.image,
    required this.title,
    required this.subtitle,
    this.cashback,
  });

  StoreCard copyWith({
    String? image,
    String? title,
    String? subtitle,
    String? cashback,
  }) {
    return StoreCard(
      image: image ?? this.image,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      cashback: cashback ?? this.cashback,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'title': title,
      'subtitle': subtitle,
      'cashback': cashback,
    };
  }

  factory StoreCard.fromMap(Map<String, dynamic> map) {
    return StoreCard(
      image: map['image'] ?? '',
      title: map['title'] ?? '',
      subtitle: map['subtitle'] ?? '',
      cashback: map['cashback'],
    );
  }

  String toJson() => json.encode(toMap());

  factory StoreCard.fromJson(String source) =>
      StoreCard.fromMap(json.decode(source));

  @override
  String toString() {
    return 'StoreCard(image: $image, title: $title, subtitle: $subtitle, cashback: $cashback)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StoreCard &&
        other.image == image &&
        other.title == title &&
        other.subtitle == subtitle &&
        other.cashback == cashback;
  }

  @override
  int get hashCode {
    return image.hashCode ^
        title.hashCode ^
        subtitle.hashCode ^
        cashback.hashCode;
  }
}
