import 'package:flutter_riverpod/flutter_riverpod.dart';

final cameraScreenSubtitle = StateProvider<String>((ref) => "");
final cameraScreenAppBarTitle = StateProvider<String>((ref) => "");

final capturedFilePathProvider = StateProvider<String?>((ref) => null);
final capturedFirstImageFilePathProvider = StateProvider<String?>((ref) => null);
