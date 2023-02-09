import 'package:adamur_oboarding/helpers/colors.dart';
import 'package:adamur_oboarding/screens/main_screen.dart';
import 'package:adamur_oboarding/state/state.dart';
import 'package:adamur_oboarding/state/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'helpers/constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarBrightness: Brightness.light,
    // systemNavigationBarColor: green, // navigation bar color
    statusBarColor: black, // status bar color
  ));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: black,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowIndicator();
        return true;
      },
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ThemeProvider()),
          ChangeNotifierProvider(create: (context) => MainProvider()),
        ],
        child: ScreenUtilInit(
            designSize: designSize,
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, child) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Space App',
                theme: ThemeData(
                    scaffoldBackgroundColor: black,
                    primaryColor: greenText,
                    primarySwatch: Colors.green,
                    appBarTheme: AppBarTheme(backgroundColor: black)
                    //     systemOverlayStyle: SystemUiOverlayStyle(
                    //       // statusBarBrightness: Brightness.dark,
                    //       statusBarIconBrightness:
                    //           Brightness.dark,
                    //       // systemStatusBarContrastEnforced: true,
                    //       statusBarColor: green,
                    //     ),
                    //   ),
                    ),
                home: child,
                // onGenerateRoute: RouteManager.generateroute,
              );
            },
            child: MainScreen()),
      ),
    );
  }
}
