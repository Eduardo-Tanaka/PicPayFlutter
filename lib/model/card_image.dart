import 'dart:convert';

class CardImage {
  final String image;
  final String title;
  final String? subtitle;

  CardImage({
    required this.image,
    required this.title,
    this.subtitle,
  });

  CardImage copyWith({
    String? image,
    String? title,
    String? subtitle,
  }) {
    return CardImage(
      image: image ?? this.image,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'title': title,
      'subtitle': subtitle,
    };
  }

  factory CardImage.fromMap(Map<String, dynamic> map) {
    return CardImage(
      image: map['image'] ?? '',
      title: map['title'] ?? '',
      subtitle: map['subtitle'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CardImage.fromJson(String source) =>
      CardImage.fromMap(json.decode(source));

  @override
  String toString() =>
      'CardImage(image: $image, title: $title, subtitle: $subtitle)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CardImage &&
        other.image == image &&
        other.title == title &&
        other.subtitle == subtitle;
  }

  @override
  int get hashCode => image.hashCode ^ title.hashCode ^ subtitle.hashCode;
}
