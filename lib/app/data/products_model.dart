class Products {
  String? id;
  String? title;
  String? description;

  String? priceBefore;
  String? priceAfter;

  String? company;

  
 

  Products(
      {
       
      this.title,
      this.description,
      this.priceAfter,
      this.priceBefore,
      this.company,
      
      
      });

  Products.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    priceAfter = json['priceAfter'];
    priceBefore = json['priceBefore'];
    company = json['company'];
   
    }

 
}
