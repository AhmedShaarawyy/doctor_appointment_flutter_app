import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vezeeta_app/core/routing/app_router.dart';
import 'package:vezeeta_app/core/routing/routes.dart';
import 'package:vezeeta_app/core/theming/colors.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
     child: MaterialApp(
       debugShowCheckedModeBanner: false,
       onGenerateRoute: appRouter.generteRoute,
        theme: ThemeData(
          primaryColor: ColorManager.mainBlue,
          scaffoldBackgroundColor: Colors.white
        ),
        initialRoute: Routes.onBoardingScreen,
     ) ,
    );
  }
}
