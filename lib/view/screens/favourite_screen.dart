
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../const_file/app_colors.dart';
import '../../const_file/font_style.dart';
import '../../controller/product_controller/product_controller.dart';
import '../../model/popular_product_model.dart';
import '../widgets/home_appbar_widget.dart';
import '../widgets/product_card_widget.dart';



// class FavouriteScreen extends StatelessWidget {
//    static const String routeName = '/favourite';
//    FavouriteScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         backgroundColor: Colors.teal,
//         title: Text('Favourite',style: myStyleInter(16.sp, AppColors.whiteCardColor,FontWeight.w800),),
//         actions: [
//           CartWidgetHomePage(isHomeScreen: false,)
//         ],
//         leading: IconButton(
//           onPressed: () {
//             Get.back();
//           },
//           icon: Icon(Icons.arrow_back_ios,color: AppColors.whiteCardColor,size: 20.sp,),) ,),
//
//       body:Padding(
//         padding:  EdgeInsets.only(top: 8.0.h,bottom: 8.h),
//         child: GridView.builder(
//           shrinkWrap: true,
//           physics: ScrollPhysics(),
//           padding: EdgeInsets.symmetric(horizontal: 10.w),
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             mainAxisSpacing: 8.0.h,
//             crossAxisSpacing: 10.w,
//             childAspectRatio: 0.70,
//           ),
//           itemCount:popularProductList.length, // use the filtered product list
//
//           itemBuilder: (context, index) {
//             final popularProduct = popularProductList[index];
//             return ProductCardWidget(
//               index: index,
//               productCardImage: popularProduct.productImage,
//               productName: popularProduct.productName,
//               productPrice: popularProduct.productPrice.toString(),
//               productDiscountPrice: popularProduct.productDiscountPrice.toString(),
//               productDisCountPercentage: popularProduct.productDiscountPercentage,
//             );
//           },
//         ),
//       )
//
//
//     );
//   }
// }


class FavouriteScreen extends StatelessWidget {
  static const String routeName = '/favourite';
  FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    ProductController productController = Get.find();
    List<PopularProductModel> favoriteProducts = productController.getFavoriteProducts(popularProductList);

    return Scaffold(
      appBar: AppBar(
        // ... (your existing code for the app bar)
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 8.0.h, bottom: 8.h),
        child: GridView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8.0.h,
            crossAxisSpacing: 10.w,
            childAspectRatio: 0.70,
          ),
          itemCount: favoriteProducts.length,

          itemBuilder: (context, index) {
            final popularProduct = favoriteProducts[index];
            return ProductCardWidget(
              index: index,
              productCardImage: popularProduct.productImage,
              productName: popularProduct.productName,
              productPrice: popularProduct.productPrice.toString(),
              productDiscountPrice: popularProduct.productDiscountPrice.toString(),
              productDisCountPercentage: popularProduct.productDiscountPercentage,
            );
          },
        ),
      ),
    );
  }
}

