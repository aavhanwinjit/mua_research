import 'package:flutter_riverpod/flutter_riverpod.dart';

final policyDocsReviewConfirmationProvider = StateProvider<bool>((ref) => false);

final savePolicyDocumentLoadingProvider = StateProvider<bool>((ref) => false);
