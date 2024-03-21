import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';

import 'core/app_export.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();
  await getIt.allReady();
  await GetStorage.init();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ScreenUtilInit(
          // designSize: Size(constraints.maxWidth, constraints.maxHeight),
          designSize: const Size(360, 844),
          // minTextAdapt: constraints.maxWidth.isDesktop() ? true : false, // enable only for web
          // fontSizeResolver: (fontSize, instance) {
          //   // Adjust the font size based on screenWidth or any other criteria
          //   if (instance.screenWidth.isDesktop() || instance.scaleWidth.isTablet()) {
          //     return fontSize * 1; // keep the original font size for larger screens
          //   } else {
          //     return fontSize * 0.8; // decrease font size for smaller screens
          //   }
          // },
          builder: (_, child) {
            return MaterialApp.router(
              title: 'MUA KYC',
              debugShowCheckedModeBanner: false,
              localizationsDelegates: const [
                AppLocalizationDelegate(),
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              theme: AppTheme.lightTheme,
              supportedLocales: const [
                Locale(
                  'en',
                  '',
                ),
              ],
              routeInformationParser: router.routeInformationParser,
              routerDelegate: router.routerDelegate,
              routeInformationProvider: router.routeInformationProvider,
            );
          },
        );
      },
    );
  }
}
