


import 'package:add_to_cart_getx/controller/product_controller/product_controller.dart';
import 'package:add_to_cart_getx/view/screens/favourite_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../const_file/app_colors.dart';
import '../../const_file/font_style.dart';

class CartWidgetHomePage extends StatelessWidget {

  CartWidgetHomePage({super.key,required this.isHomeScreen});
  bool isHomeScreen;
  final favoriteHomeController = Get.put(ProductController());


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: 8.0.w),
      child: isHomeScreen?Row(
        children: [

          ///......add to cart icon.............................................
          IconButton(
              onPressed: (){} ,
              icon:Stack(
                clipBehavior: Clip.none,
                children: [
                  Icon(Icons.add_shopping_cart,color: AppColors.whiteColor,size: 24.sp,),
                  Positioned(top: -4, right: -4,
                    child: CircleAvatar(radius: 7, backgroundColor: Colors.red,
                      child: Text('0',
                          style:myStyleInter(10.sp, AppColors.whiteColor
                          )),
                    ),
                  ),
                ],
              )
          ),


          ///......favourite icon...............................................
          Obx(()=>IconButton(
              onPressed: (){
                Get.toNamed(FavouriteScreen.routeName);
              } ,
              icon:Stack(
                clipBehavior: Clip.none,
                children: [
                  Icon(Icons.favorite,color: AppColors.whiteColor,size: 24.sp,),
                  Positioned(top: -4, right: -4,
                    child: CircleAvatar(radius: 7, backgroundColor: Colors.red,
                      child: Text('${favoriteHomeController.favoritesList.length}', style:myStyleInter(10.sp, AppColors.whiteColor)),),
                  ),
                ],
              )
          ),)



        ],
      ): IconButton(
          onPressed: (){} ,
          icon:Stack(
            clipBehavior: Clip.none,
            children: [
              Icon(Icons.add_shopping_cart,color: AppColors.whiteColor,size: 24.sp,),
              Positioned(top: -4, right: -4,
                child: CircleAvatar(radius: 7, backgroundColor: Colors.red,
                  child: Text('0',
                      style:myStyleInter(10.sp, AppColors.whiteColor
                      )),
                ),
              ),
            ],
          )
      ),
    );
  }
}