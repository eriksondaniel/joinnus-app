class ActivityModel {
  int id;
  int brandId;
  dynamic scrapingActivityId;
  String title;
  String description;
  String information;
  String imagePath;
  String imageUrl;
  String category;
  String city;
  String country;
  String address;
  String addressRef;
  double addressLat;
  double addressLng;
  dynamic addressMethod;
  String currency;
  int price;
  int requirePayment;
  DateTime dateStart;
  DateTime dateEnd;
  int minUsers;
  int maxUsers;

  ActivityModel({
    this.id,
    this.brandId,
    this.scrapingActivityId,
    this.title,
    this.description,
    this.information,
    this.imagePath,
    this.imageUrl,
    this.category,
    this.city,
    this.country,
    this.address,
    this.addressRef,
    this.addressLat,
    this.addressLng,
    this.addressMethod,
    this.currency,
    this.price,
    this.requirePayment,
    this.dateStart,
    this.dateEnd,
    this.minUsers,
    this.maxUsers,
  });

  factory ActivityModel.fromJson(Map<String, dynamic> json) =>
      new ActivityModel(
        id: json["id"] == null ? null : json["id"],
        brandId: json["brandId"] == null ? null : json["brandId"],
        scrapingActivityId: json["scrapingActivityId"],
        title: json["title"] == null ? null : json["title"],
        description: json["description"] == null ? null : json["description"],
        information: json["information"] == null ? "" : json["information"],
        imagePath: json["imagePath"] == null ? null : json["imagePath"],
        imageUrl: json["imageUrl"] == null ? null : json["imageUrl"],
        category: json["category"] == null ? null : json["category"],
        city: json["city"] == null ? null : json["city"],
        country: json["country"] == null ? null : json["country"],
        address: json["address"] == null ? null : json["address"],
        addressRef: json["addressRef"] == null ? null : json["addressRef"],
        addressLat: json["addressLat"] == null ? null : json["addressLat"].toDouble(),
        addressLng: json["addressLng"] == null ? null : json["addressLng"].toDouble(),
        addressMethod: json["addressMethod"],
        currency: json["currency"] == null ? null : json["currency"],
        price: json["price"] == null ? null : json["price"],
        requirePayment: json["requirePayment"] == null ? null : json["requirePayment"],
        dateStart: json["dateStart"] == null ? null : DateTime.parse(json["dateStart"]),
        dateEnd: json["dateEnd"] == null ? null : DateTime.parse(json["dateEnd"]),
        minUsers: json["minUsers"] == null ? null : json["minUsers"],
        maxUsers: json["maxUsers"] == null ? null : json["maxUsers"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "brandId": brandId == null ? null : brandId,
        "scrapingActivityId": scrapingActivityId,
        "title": title == null ? null : title,
        "description": description == null ? null : description,
        "information": information == null ? "" : information,
        "imagePath": imagePath == null ? null : imagePath,
        "imageUrl": imageUrl == null ? null : imageUrl,
        "category": category == null ? null : category,
        "city": city == null ? null : city,
        "country": country == null ? null : country,
        "address": address == null ? null : address,
        "addressRef": addressRef == null ? null : addressRef,
        "addressLat": addressLat == null ? null : addressLat,
        "addressLng": addressLng == null ? null : addressLng,
        "addressMethod": addressMethod,
        "currency": currency == null ? null : currency,
        "price": price == null ? null : price,
        "requirePayment": requirePayment == null ? null : requirePayment,
        "dateStart": dateStart == null ? null : dateStart.toIso8601String(),
        "dateEnd": dateEnd == null ? null : dateEnd.toIso8601String(),
        "minUsers": minUsers == null ? null : minUsers,
        "maxUsers": maxUsers == null ? null : maxUsers,
      };
}
