// import 'package:flutter/cupertino.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import '../model/product_mpdel.dart';
//
// class ProductProvider with ChangeNotifier{
//
//   List<ProductModel> herbsProductList= [];
//   late ProductModel productModel;
//   fetchdosaProductData() async {
//  QuerySnapshot value = await FirebaseFirestore.instance.collection("food_product").get();
//
//  value.docs.forEach(
//      (element) {
//        print(element.data());
//      }
//  );
//   }
// }
