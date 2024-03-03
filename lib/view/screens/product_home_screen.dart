


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../const_file/app_colors.dart';
import '../../const_file/font_style.dart';
import '../../model/popular_product_model.dart';
import '../widgets/home_appbar_widget.dart';
import '../widgets/product_card_widget.dart';

class ProductHomeScreen extends StatelessWidget {

   static const String routeName = '/home';
   ProductHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Product Home',style: myStyleInter(16.sp, AppColors.whiteCardColor,FontWeight.w800),),
        actions: [
          CartWidgetHomePage(isHomeScreen: true,)

        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ///.....................popular...................................
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular ',style: myStyleInter(14.sp, AppColors.blackCardColor,FontWeight.w600),overflow: TextOverflow.ellipsis,),
                  TextButton(onPressed: (){}, child:
                  Text('View All ',style: myStyleInter(14.sp, Colors.teal,FontWeight.w800),overflow: TextOverflow.ellipsis,),)
                ],
              ),
              SizedBox(
                height: 250.h,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context,index)=>SizedBox(width: 10.w,),
                    itemCount: popularProductList.length,
                    itemBuilder: (context,index){
                      final popularProduct = popularProductList[index];
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
          

              ///...................new arrival.................................
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('New Arrival ',style: myStyleInter(14.sp, AppColors.blackCardColor,FontWeight.w600),overflow: TextOverflow.ellipsis,),
                  TextButton(onPressed: (){}, child:
                  Text('View All',style: myStyleInter(14.sp, Colors.teal,FontWeight.w800),overflow: TextOverflow.ellipsis,),)
                ],
              ),
              SizedBox(
                height: 250.h,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context,index)=>SizedBox(width: 10.w,),
                  itemCount: popularProductList.length,
                  itemBuilder: (context,index){
                    final popularProduct = popularProductList[index];
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
          
          
              ///...................top selling products.................................
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Top Selling Products ',style: myStyleInter(14.sp, AppColors.blackCardColor,FontWeight.w600),overflow: TextOverflow.ellipsis,),
                  TextButton(onPressed: (){}, child:
                  Text('View All',style: myStyleInter(14.sp, Colors.teal,FontWeight.w800),overflow: TextOverflow.ellipsis,),)
                ],
              ),
              SizedBox(
                height: 250.h,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context,index)=>SizedBox(width: 10.w,),
                  itemCount: popularProductList.length,
                  itemBuilder: (context,index){
                    final popularProduct = popularProductList[index];
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
          
          
          
          
          
          
          
          
          
          
          
          
          
            ],
          ),
        ),
      ),
    );
  }
}
