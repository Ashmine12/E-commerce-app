class Products {
  int? id;
  String? title;
  dynamic? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  Products(
      {this.id,
        this.title,
        this.price,
        this.description,
        this.category,
        this.image,
        this.rating
      });

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    category = json['category'];
    image = json['image'];
   rating =
    json['rating'] != null ? Rating.fromJson(json['rating']) : null;
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['id'] = id;
  //   data['title'] = title;
  //   data['price'] = price;
  //   data['description'] = this.description;
  //   data['category'] = category;
  //   data['image'] = image;
  //   // if (rating != null) {
  //   //   data['rating'] = rating!.toJson();
  //   // }
  //   return data;
  // }
}

class Rating {
  dynamic? rate;
  dynamic? count;

  Rating({this.rate, this.count});

  Rating.fromJson(Map<String, dynamic> json) {
    rate = json['rate'];
    count = json['count'];
  }

/*  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['rate'] = rate;
    data['count'] = count;
    return data;
  }*/
}