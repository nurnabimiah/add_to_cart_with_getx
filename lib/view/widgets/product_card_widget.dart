



import 'package:add_to_cart_getx/controller/product_controller/product_controller.dart';
import 'package:card_banner/card_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const_file/app_colors.dart';
import '../../const_file/font_style.dart';

class ProductCardWidget extends StatelessWidget {
  ProductCardWidget({
    Key? key, required this.index,
    required this.productCardImage,
    required this.productName,
    required this.productPrice,
    required this.productDiscountPrice,
    required this.productDisCountPercentage
  }) : super(key: key);


  final int index;
  String productCardImage;
  String productName;
  String productPrice;
  String productDiscountPrice;
  int productDisCountPercentage;

  final productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      decoration: BoxDecoration(
        color: AppColors.blackCardColor,
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
      ),

      child: Stack(
        children: [

          productDisCountPercentage > 0? CardBanner(

              text: '  ${productDisCountPercentage} %',
              color: Colors.redAccent,
              edgeColor:Colors.red,
              child:SizedBox(
                  height: 145.h,
                  child: Padding(
                    padding:  EdgeInsets.only(left: 8.0.w),
                    child: Image.asset(productCardImage,fit: BoxFit.cover,),
                  ))
          ):SizedBox(
              height: 145.h,
              child: Image.asset(productCardImage,fit: BoxFit.cover,)),

          Positioned(
            right: 3.w,
            top: 5.h,
            child: Obx(()=>IconButton(
              onPressed: () {
                productController.toggleFavorite(index);
              },
              icon: productController.isFavorite(index)?Icon(Icons.favorite, color: AppColors.greenColor,):
              Icon(Icons.favorite_border, color: AppColors.greenColor,),
            )),
          ),

          Positioned(
              bottom: 5.h,
              top: 145.h,
              left: 10.w,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(productName,style: myStyleInter(14.sp, AppColors.whiteCardColor,FontWeight.w600),overflow: TextOverflow.ellipsis,),
                  Row(
                    children: [
                      Text(productPrice,style: myStyleInter(14.sp, AppColors.greenColor,FontWeight.w600),overflow: TextOverflow.ellipsis,),
                      SizedBox(width: 10.w,),
                      Text(productDiscountPrice,style: GoogleFonts.roboto(fontSize: 14.sp,color: Colors.grey,
                        decoration: TextDecoration.lineThrough, fontWeight: FontWeight.w600,decorationColor: Colors.grey, ),),



                    ],
                  ),
                  SizedBox(height: 4.h,),
                  Row(
                    children: [
                      Icon(Icons.star,color: Colors.yellow,size: 16.sp,),
                      SizedBox(width: 5.w,),
                      Text('4.5 ',style: myStyleInter(12.sp, AppColors.whiteCardColor,FontWeight.w600),overflow: TextOverflow.ellipsis,),
                      SizedBox(width: 15.w,),
                      TextButton(onPressed: (){},
                          child: Text('Add',style: myStyleInter(12.sp, Colors.green,FontWeight.w600),overflow: TextOverflow.ellipsis,),
                      )



                    ],
                  ),




                ],))

        ],
      ),
    );
  }
}

