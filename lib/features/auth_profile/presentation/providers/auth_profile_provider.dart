import 'package:ekyc/features/signature/data/models/save_file/response/save_file_response_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authProfileProvider = StateProvider<SaveFileResponseModel?>((ref) => null);

final authProfileScreenLoadingProvider = StateProvider<bool>((ref) => false);
