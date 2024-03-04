import 'package:ekyc/core/app_export.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherHelper {
  static void launchMail() {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: Strings.helpEmail,
    );

    launchUrl(emailLaunchUri);
  }

  static void launchPhone() {
    final Uri phoneLaunchUri = Uri(
      scheme: 'tel',
      host: Strings.helpContact,
    );

    launchUrl(phoneLaunchUri);
  }
}
