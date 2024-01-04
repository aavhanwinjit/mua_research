import 'package:ekyc/core/constants/enums/marital_status_enums.dart';
import 'package:ekyc/core/constants/enums/nationality_type_enums.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final maritalStatusProvider = StateProvider<MaritalStatus?>((ref) => null);

final nationalityTypeProvider = StateProvider<NationalityType?>((ref) => null);
