import 'package:foodsrestaurant/utils/common_imports.dart';
import 'ui/SplashScreen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            title: 'Food Resturant',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.amber,
              scaffoldBackgroundColor: bgColor,
              appBarTheme:
                  const AppBarTheme(backgroundColor: appColor, elevation: 0),
              fontFamily: "Poppins",
            ),
            home: SplashScreen(),
          );
        });
  }
}
