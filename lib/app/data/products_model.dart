class Products {
  String? id;
  String? title;
  String? description;

  String? priceBefore;
  String? priceAfter;

  String? company;
  
  String? discount_time;
  String? image_url;

  
 

  Products(
      {
       
      this.title,
      this.description,
      this.priceAfter,
      this.priceBefore,
      this.company,
      this.discount_time,
      this.image_url,
      this.id
      
      
      });

  Products.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    priceAfter = json['priceAfter'];
    priceBefore = json['priceBefore'];
    discount_time = json['discount_time'];
    image_url = json['image_url'];
     company = json['company'];
   
    }

 
}
