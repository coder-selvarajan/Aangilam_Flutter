// To parse this JSON data, do
//
//     final owlbotElement = owlbotElementFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

OwlbotElement owlbotElementFromJson(String str) =>
    OwlbotElement.fromJson(json.decode(str));

String owlbotElementToJson(OwlbotElement data) => json.encode(data.toJson());

class OwlbotElement {
  OwlbotElement({
    required this.word,
    required this.pronunciation,
    required this.definitions,
  });

  String word;
  String pronunciation;
  List<Definition> definitions;

  factory OwlbotElement.fromJson(Map<String, dynamic> json) => OwlbotElement(
        word: json["word"] == null ? null : json["word"],
        pronunciation:
            json["pronunciation"] == null ? null : json["pronunciation"],
        definitions: List<Definition>.from(
            json["definitions"].map((x) => Definition.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "word": word == null ? null : word,
        "pronunciation": pronunciation == null ? null : pronunciation,
        "definitions": definitions == null
            ? null
            : List<dynamic>.from(definitions.map((x) => x.toJson())),
      };
}

class Definition {
  Definition({
    required this.type,
    required this.definition,
    required this.example,
    required this.imageUrl,
    required this.emoji,
  });

  String type;
  String definition;
  String example;
  String imageUrl;
  String emoji;

  factory Definition.fromJson(Map<String, dynamic> json) => Definition(
        type: json["type"] == null ? null : json["type"],
        definition: json["definition"] == null ? null : json["definition"],
        example: json["example"] == null ? null : json["example"],
        imageUrl: json["image_url"] == null ? null : json["image_url"],
        emoji: json["emoji"] == null ? null : json["emoji"],
      );

  Map<String, dynamic> toJson() => {
        "type": type == null ? null : type,
        "definition": definition == null ? null : definition,
        "example": example == null ? null : example,
        "image_url": imageUrl == null ? null : imageUrl,
        "emoji": emoji == null ? null : emoji,
      };
}
