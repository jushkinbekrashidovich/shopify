class FavoriteProducts {
  String? title;
  String? priceAfter;
  String? priceBefore;
  String? userToken;
  String? id;

  FavoriteProducts({
    this.title,
    this.priceAfter,
    this.priceBefore,
    this.userToken,
    this.id,
  });

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['priceAfter'] = priceAfter;
    data['priceBefore'] = priceBefore;
    data['userToken'] = userToken;
    
    return data;
  }

  FavoriteProducts.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    priceAfter = json['priceAfter'];
    priceBefore = json['priceBefore'];
    userToken = json['userToken'];
    id = json['id'];
    
   
    }
}
