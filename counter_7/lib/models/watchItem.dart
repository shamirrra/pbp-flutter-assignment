import 'dart:ffi';

class watchItem {
  late String watched;
  late String title;
  late int rating;
  // ignore: non_constant_identifier_names
  late String release_date;
  late String review;

  watchItem(
      {required this.watched,
      required this.title,
      required this.rating,
      required this.release_date,
      required this.review});

  watchItem.fromJson(Map<String, dynamic> json) {
    watched = json['watched'];
    title = json['title'];
    rating = json['rating'];
    release_date = json['release_date'];
    review = json['review'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['watched'] = watched;
    data['title'] = title;
    data['rating'] = rating;
    data['release_date'] = release_date;
    data['review'] = review;
    return data;
  }
}
