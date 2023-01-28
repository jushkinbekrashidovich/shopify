class FavoriteProducts {
  String? title;
  String? priceAfter;
  String? priceBefore;
  String? userToken;

  FavoriteProducts({
    this.title,
    this.priceAfter,
    this.priceBefore,
    this.userToken,
  });

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['priceAfter'] = priceAfter;
    data['priceBefore'] = priceBefore;
    data['userToken'] = userToken;
    return data;
  }
}
