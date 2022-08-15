import 'package:flutter_app/domains/entities/product_entity.dart';

import 'category_entity.dart';

class LugarEntity{

  String name;
  String urlPlacePhoto;
  String urlProduct;
  CategoryEntity categoryEntity;
  List<ProductEntity>? productEntity;
  bool? whatsapp;
  bool? instagram;
  bool? site;
  bool? localMap;


  LugarEntity({required this.name,required this.urlPlacePhoto,required this.urlProduct,required this.categoryEntity,this.productEntity});
}