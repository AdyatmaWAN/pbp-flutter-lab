import 'dart:convert';
// import 'dart:ffi';

//List<watchList> watchListFromJson(String str) => List<watchList>.from(json.decode(str).map((x) => watchList.fromJson(x)));

//String watchListToJson(List<watchList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class WatchList {
  WatchList({
    required this.id,
    required this.title,
    required this.rating,
    required this.date,
    required this.review,
    required this.watched,
});

  int id;
  String title;
  int rating;
  String date;
  String review;
  bool watched;

  factory WatchList.fromJson(Map<String, dynamic> json) => WatchList(
    id: json["pk"],
    title: json["fields"]["title"],
    rating: json["fields"]["rating"],
    date: json["fields"]["release_date"],
    review: json["fields"]["review"],
    watched: json["fields"]["watched"],
  );

  Map<String, dynamic> toJson() => {
    "pk": id,
    "title": title,
    "rating": rating,
    "release_date": date,
    "review": review,
    "watched": watched,
  };
}