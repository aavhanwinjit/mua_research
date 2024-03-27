import 'package:ekyc/core/constants/enums/marital_status_enums.dart';
import 'package:ekyc/core/constants/enums/nationality_type_enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final customerInfoFormKey = StateProvider<GlobalKey<FormState>>((ref) => GlobalKey<FormState>());

final customerInfoMobileNumberProvider = StateProvider<String?>((ref) => null);

final customerInfoEmailProvider = StateProvider<String?>((ref) => null);

final customerInfoMaritalStatusProvider = StateProvider<MaritalStatus>((ref) => MaritalStatus.SINGLE);

final customerInfoNationalityTypeProvider = StateProvider<NationalityType>((ref) => NationalityType.MAURITIAN);

final customerInfoQuoteNumberProvider = StateProvider<String?>((ref) => null);

final customerInfoPolicyNumberProvider = StateProvider<String?>((ref) => null);

final customerInfoLoadingProvider = StateProvider<bool>((ref) => false);

final customerInfoErrorProvider = StateProvider<bool>((ref) => false);
