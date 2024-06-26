import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app_color.dart';
import 'merchandiser_app/view/OFFERS/offers_screen.dart';
import 'page_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MyPageController());
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) => GetMaterialApp(
        title: 'Tawsel Orders Delivery App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme:
              ColorScheme.fromSeed(seedColor: AppColor.mainColor).copyWith(
            background: AppColor.backgroundColor,
          ),
        ),
        // home: const HomeOrderScreen(),
        //         merchandiser_app
        // home: const RtvSectionScreen(),
        // home: const InventoryScreen(),
        home: const OffersScreen(),
        // home: const ConfirmOffersScreen(),
      ),
    );
  }
}
