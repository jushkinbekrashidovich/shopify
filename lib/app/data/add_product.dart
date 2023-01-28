class AddProducts {
  String? title;
  String? priceAfter;
  String? priceBefore;
  String? userToken;
  String? company_name;
  String? description;

  AddProducts({
    this.title,
    this.priceAfter,
    this.priceBefore,
    this.userToken,
    this.company_name,
    this.description,
  });

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['priceAfter'] = priceAfter;
    data['priceBefore'] = priceBefore;
    data['userToken'] = userToken;
    data['company'] = company_name;
    data['description'] = description;
    
    return data;
  }
}
