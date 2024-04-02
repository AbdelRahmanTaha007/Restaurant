class ProductModel {
  int? id;
  String? productCategoryId;
  String? productCategoryName;
  String? restaurantId;
  String? restaurantName;
  String? name;
  String? quantity;
  String? price;
  String? discount;
  String? image;

  ProductModel(
      {this.id,
      this.productCategoryId,
      this.productCategoryName,
      this.restaurantId,
      this.restaurantName,
      this.name,
      this.quantity,
      this.price,
      this.discount,
      this.image});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productCategoryId = json['product_category_id'];
    productCategoryName = json['product_category_name'];
    restaurantId = json['restaurant_id'];
    restaurantName = json['restaurant_name'];
    name = json['name'];
    quantity = json['quantity'];
    price = json['price'];
    discount = json['discount'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['product_category_id'] = this.productCategoryId;
    data['product_category_name'] = this.productCategoryName;
    data['restaurant_id'] = this.restaurantId;
    data['restaurant_name'] = this.restaurantName;
    data['name'] = this.name;
    data['quantity'] = this.quantity;
    data['price'] = this.price;
    data['discount'] = this.discount;
    data['image'] = this.image;
    return data;
  }
}
