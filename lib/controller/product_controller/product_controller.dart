



import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';


import 'package:get/get.dart';

import '../../model/popular_product_model.dart';
//
// class ProductController extends GetxController {
//
//   RxList<int> favoritesList = <int>[].obs; // RxList to make it reactive
//
//   void toggleFavorite(int index) {
//     if (favoritesList.contains(index)) {
//       favoritesList.remove(index);
//     } else {
//       favoritesList.add(index);
//       print('>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>favouriteList length: ${favoritesList.length} ');
//     }
//   }
//
//   bool isFavorite(int index) {
//     return favoritesList.contains(index);
//   }
//
// }

class ProductController extends GetxController {
  RxList<int> favoritesList = <int>[].obs; // RxList to make it reactive

  void toggleFavorite(int index) {
    if (favoritesList.contains(index)) {
      favoritesList.remove(index);
    } else {
      favoritesList.add(index);
      print('>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>favouriteList length: ${favoritesList.length} ');
    }
  }

  bool isFavorite(int index) {
    return favoritesList.contains(index);
  }

  List<PopularProductModel> getFavoriteProducts(List<PopularProductModel> allProducts) {
    return allProducts.where((product) => isFavorite(allProducts.indexOf(product))).toList();
  }

}

