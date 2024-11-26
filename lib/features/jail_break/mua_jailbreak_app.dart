import 'dart:io';

import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MUAJailbreakApp extends StatelessWidget {
  const MUAJailbreakApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 100),
                Image.asset(
                  ImageConstants.pngLogo,
                  width: 200,
                ),
                const SizedBox(height: 150),
                Text(
                  "${Strings.jailBreakDetected} ${Platform.isAndroid ? "Play Store" : "App Store"}",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Spacer(),
                MaterialButton(
                  elevation: 0,
                  height: 50,
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  color: primaryColor,
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                  child: const Text(
                    Strings.globalOkay,
                    style: TextStyle(
                      color: white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
