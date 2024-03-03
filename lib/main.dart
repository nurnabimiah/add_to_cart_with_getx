import 'package:add_to_cart_getx/view/screens/favourite_screen.dart';
import 'package:add_to_cart_getx/view/screens/product_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(

          debugShowCheckedModeBanner: false,
          title: 'Add to cart text app',
          home: ProductHomeScreen(),
          getPages: [
            GetPage(name: ProductHomeScreen.routeName, page:()=> ProductHomeScreen()),
            GetPage(name: FavouriteScreen.routeName, page:()=> FavouriteScreen()),

          ],


        );
      },
    );
  }
}
