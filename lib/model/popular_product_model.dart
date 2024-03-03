



import 'package:add_to_cart_getx/const_file/app_images.dart';


class PopularProductModel{

  String productId;
  String productName;
  dynamic productPrice;
  dynamic productDiscountPrice;
  int productDiscountPercentage;
  String productImage;

  PopularProductModel(
      {
        required this.productId,
        required this.productName,
        required this.productPrice,
        required this.productDiscountPrice,
        required this.productDiscountPercentage,
        required this.productImage
      });
}



List<PopularProductModel> popularProductList = [

 PopularProductModel(
    productId: '1',
    productName: 'Shoes',
    productPrice: 1500,
    productDiscountPrice: 1600,
    productDiscountPercentage: 16,
    productImage: AppImages.shoes,
  ),


  PopularProductModel(
    productId: '2',
    productName: 'Local Bag',
    productPrice: 1400,
    productDiscountPrice: 0,
    productDiscountPercentage:0,
    productImage: AppImages.bag,
  ),


  PopularProductModel(
    productId: '3',
    productName: 'Local Cucumber',
    productPrice: 5,
    productDiscountPrice: 8,
    productDiscountPercentage:3,
    productImage: AppImages.cucumber,
  ),


  PopularProductModel(
    productId: '4',
    productName: 'Onion',
    productPrice: 6,
    productDiscountPrice: 8,
    productDiscountPercentage:20,
    productImage: AppImages.onion,
  ),


  PopularProductModel(
    productId: '5',
    productName: 'Pulsar',
    productPrice: 2000,
    productDiscountPrice: 2020,
    productDiscountPercentage:20,
    productImage: AppImages.pulsar,
  ),




  PopularProductModel(
    productId: '6',
    productName: 'Radish',
    productPrice: 20,
    productDiscountPrice: 25,
    productDiscountPercentage:25,
    productImage: AppImages.radish,
  ),



  PopularProductModel(
    productId: '7',
    productName: 'Tang',
    productPrice: 35,
    productDiscountPrice: 38,
    productDiscountPercentage:3,
    productImage: AppImages.tang,
  ),











];