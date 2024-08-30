import 'dart:convert';

import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/enums/document_codes.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/mixins/get_address_proof_doc_mixin.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/insured_review_submit_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddressProofImageWidget extends ConsumerStatefulWidget {
  const AddressProofImageWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => SignatureWidgetState();
}

class SignatureWidgetState extends ConsumerState<AddressProofImageWidget> with GetAddressProofDocMixin {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final selectedApplication = ref.read(selectedApplicationProvider);
      debugPrint("!selectedApplication!.addressDocImagePath!: ${selectedApplication!.addressDocImagePath!}");

      if (selectedApplication.addressDocumentTypes?.documentCode != DocumentCodes.LAA.toString().split('.').last) {
        debugPrint("inside get address proof");
        getAddressProofImage(context: context, ref: ref);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final addressProofBase64 = ref.watch(addressProofBase64Provider);
    final selectedApplication = ref.watch(selectedApplicationProvider);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            selectedApplication?.addressDocumentTypes?.addressDocType ?? "-",
            style: const TextStyle(color: textGrayColor2),
          ),
          const SizedBox(height: 5),
          addressProofBase64 == null
              ? SizedBox(
                  height: 150.h,
                )
              : selectedApplication?.addressDocumentTypes?.documentCode == DocumentCodes.LAA.toString().split('.').last
                  ? _pdfWidget()
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.memory(
                        base64Decode(addressProofBase64),
                        height: 150.h,
                        width: 150.h,
                        fit: BoxFit.cover,
                      ),
                    ),
        ],
      ),
    );
  }

  Widget _pdfWidget() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        height: 80.h,
        width: 80.h,
        child: Center(
          child: Image.asset(
            ImageConstants.pdfIcon2,
          ),
        ),
      ),
    );
  }
}
