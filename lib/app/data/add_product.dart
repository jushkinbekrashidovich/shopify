class AddProducts {
  String? title;
  String? priceAfter;
  String? priceBefore;
  String? userToken;
  String? company_name;
  String? description;

  String? discount_time;
  String? image_url;

  AddProducts({
    this.title,
    this.priceAfter,
    this.priceBefore,
    this.userToken,
    this.company_name,
    this.description,
    this.discount_time,
    this.image_url,
  });

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['priceAfter'] = priceAfter;
    data['priceBefore'] = priceBefore;
    data['userToken'] = userToken;
    data['company'] = company_name;
    data['description'] = description;
    data['image_url'] = image_url;
    data['discount_time'] = discount_time;
    
    
    return data;
  }
}
