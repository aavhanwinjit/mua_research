// import 'package:ekyc/core/app_export.dart';
// import 'package:ekyc/core/helpers/appbar_helper.dart';
// import 'package:ekyc/core/helpers/keyboard_helper.dart';
// import 'package:ekyc/features/kyc_process/data/models/get_address_document_types/response/get_address_document_types_response_model.dart';
// import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
// import 'package:ekyc/features/kyc_process/presentation/address_details/providers/address_details_providers.dart';
// import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
// import 'package:ekyc/features/kyc_process/presentation/widgets/disabled_fields_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:go_router/go_router.dart';

// class EditInsuredDetailsScreen extends ConsumerStatefulWidget {
//   const EditInsuredDetailsScreen({super.key});

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _EditInsuredDetailsScreenState();
// }

// class _EditInsuredDetailsScreenState extends ConsumerState<EditInsuredDetailsScreen> {
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();

//   String? surname;

//   @override
//   void initState() {
//     super.initState();

//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       setData();
//     });
//   }

//   void setData() {
//     final String? addressSurname = ref.watch(addressSurnameProvider);

//     surname = addressSurname;

//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     String? addressSurname = ref.watch(addressSurnameProvider);

//     ScanDocumentResponseBody? ocrResponse = ref.watch(addressDocOCRApiResponse);

//     final AddressDocumentTypeModel? selectedAddressDocType = ref.watch(selectedAddressDocTypeProvider);

//     return Scaffold(
//       appBar: AppBarHelper.showCustomAppbar(
//         context: context,
//         title: Strings.editIDDetailsScreenTitle,
//       ),
//       body: SafeArea(
//         child: GestureDetector(
//           onTap: () {
//             KeyboardHelper.onScreenTap(context);
//           },
//           child: SingleChildScrollView(
//             child: Form(
//               key: formKey,
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.w),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       Strings.enterFollowingDetailsEditScreen,
//                       style: TextStyle(
//                         fontSize: 12.sp,
//                         color: textGrayColor2,
//                       ),
//                     ),
//                     SizedBox(height: 24.h),
//                     CustomTextFormField(
//                       initialValue: addressSurname,
//                       label: Strings.surname,
//                       onChanged: (value) {
//                         surname = value.trim();
//                         setState(() {});
//                       },
//                       validator: (value) {
//                         if (value!.trim().isEmpty) {
//                           return Strings.surnameValidationString;
//                         }
//                         return null;
//                       },
//                     ),
//                     SizedBox(height: 4.h),
//                     Text(
//                       Strings.enterNameAsPerDoc,
//                       style: TextStyle(
//                         fontSize: 12.sp,
//                         color: textGrayColor,
//                       ),
//                     ),
//                     SizedBox(height: 24.h),
//                     CustomTextFormField(
//                       initialValue: addressOtherName,
//                       label: Strings.otherName,
//                       onChanged: (value) {
//                         otherName = value.trim();
//                         setState(() {});
//                       },
//                       validator: (value) {
//                         if (value!.trim().isEmpty) {
//                           return Strings.otherNameValidationString;
//                         }
//                         return null;
//                       },
//                     ),
//                     SizedBox(height: 4.h),
//                     Text(
//                       Strings.enterNameAsPerDoc,
//                       style: TextStyle(
//                         fontSize: 12.sp,
//                         color: textGrayColor,
//                       ),
//                     ),
//                     SizedBox(height: 24.h),
//                     CustomTextFormField(
//                       initialValue: addressText,
//                       label: Strings.address,
//                       onChanged: (value) {
//                         addressData = value.trim();
//                         setState(() {});
//                       },
//                       validator: (value) {
//                         if (value!.trim().isEmpty) {
//                           return Strings.addressValidationString;
//                         }
//                         return null;
//                       },
//                     ),
//                     if (selectedAddressDocType?.documentCode ==  DocumentCodes.UTB.toString().split('.').last) ...[
//                       SizedBox(height: 24.h),
//                       CustomTextFormField(
//                         initialValue: ocrResponse?.ocrResponse?.documentdata?.billDate,
//                         label: Strings.billDate,
//                         enabled: false,
//                       ),
//                     ],
//                     SizedBox(height: 24.h),
//                     const DisabledFieldsWidget(),
//                     SizedBox(height: 50.h),
//                     CustomPrimaryButton(
//                       label: Strings.update,
//                       onTap: _updateData,
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _disabledAddressFields() {
//     final selectedApplication = ref.watch(selectedApplicationProvider);

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         CustomTextFormField(
//           initialValue: selectedApplication?.mobileNumber,
//           enabled: false,
//           maxLength: 8,
//           onChanged: (value) {},
//           keyboardType: TextInputType.phone,
//           hint: Strings.mobileNo,
//           label: Strings.mobileNo,
//           floatingLabelBehavior: FloatingLabelBehavior.always,
//           prefixIcon: _prefix(context),
//         ),
//         SizedBox(height: 24.h),
//         if (selectedApplication?.emailId != null) ...[
//           CustomTextFormField(
//             initialValue: selectedApplication?.emailId,
//             enabled: false,
//             label: Strings.emailOptional,
//             onChanged: (value) {},
//           ),
//           SizedBox(height: 24.h),
//         ],
//         Text(
//           Strings.maritalStatus,
//           style: TextStyle(
//             fontSize: 14.sp,
//             fontWeight: FontWeight.bold,
//             color: black,
//           ),
//         ),
//         SizedBox(height: 16.h),
//         _maritalStatusRadioButtons(ref),
//         SizedBox(height: 24.h),
//         Text(
//           Strings.whatIsNationality,
//           style: TextStyle(
//             fontSize: 14.sp,
//             fontWeight: FontWeight.bold,
//             color: black,
//           ),
//         ),
//         SizedBox(height: 16.h),
//         _nationalityRadioButtons(ref),
//         if (selectedApplication?.quoteNumber != null) ...[
//           SizedBox(height: 24.h),
//           CustomTextFormField(
//             enabled: false,
//             initialValue: selectedApplication?.quoteNumber,
//             label: Strings.quoteNumber,
//             onChanged: (value) {},
//           ),
//         ],
//         if (selectedApplication?.policyNumber != null) ...[
//           SizedBox(height: 24.h),
//           CustomTextFormField(
//             enabled: false,
//             initialValue: selectedApplication?.policyNumber,
//             label: Strings.policyNoOptional,
//             onChanged: (value) {},
//           ),
//         ],
//       ],
//     );
//   }

//   void _updateData() {
//     KeyboardHelper.hideKeyboard(context);

//     if (!formKey.currentState!.validate()) {
//       return;
//     }

//     ref.watch(addressOtherNameProvider.notifier).update((state) => otherName);
//     ref.watch(addressSurnameProvider.notifier).update((state) => surname);
//     ref.watch(addressTextProvider.notifier).update((state) => addressData);

//     context.pop();
//   }
// }
