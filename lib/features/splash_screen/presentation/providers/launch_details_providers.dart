import 'package:ekyc/features/splash_screen/data/models/launch_details/response/launch_details_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final launchDetailsResponseProvider = StateProvider<LaunchDetailsResponse?>((ref) => null);

final isFPLoginProvider = StateProvider<bool>((ref) => false);
