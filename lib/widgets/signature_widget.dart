import 'dart:convert';

import 'package:dotted_border/dotted_border.dart';
import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/date_time_formatter.dart';
import 'package:ekyc/features/profile/data/models/get_agent_details/response/get_agent_details_response_model.dart';
import 'package:ekyc/features/profile/presentation/providers/get_agent_details_provider.dart';
import 'package:ekyc/features/signature/presentation/mixins/signature_mixin.dart';
import 'package:ekyc/features/signature/presentation/providers/signature_base64_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignatureWidget extends ConsumerStatefulWidget {
  final String dateTime;

  const SignatureWidget({
    required this.dateTime,
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignatureWidgetState();
}

class _SignatureWidgetState extends ConsumerState<SignatureWidget> with SignatureMixin {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      getSignature(context: context, ref: ref);
    });
  }

  @override
  Widget build(BuildContext context) {
    final GetAgentDetailsResponseModel? getAgentDetailsResponse = ref.watch(agentDetailsResponseProvider);
    final GetAgentDetailsResponseBody? agentDetails = getAgentDetailsResponse?.body?.responseBody;
    final signatureBase64 = ref.watch(signatureBase64Provider);

    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //info box heading
          Text(
            agentDetails?.agentName ?? "-",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            DateTimeFormatter.formatSignatureDate(DateTime.parse(widget.dateTime)),
            // DateTimeFormatter.formatSignatureDate(DateTime.now()) ?? "",
            // DateTimeFormatter.formatSignatureDate(agentDetails?.signatureUploadDate) ?? "",
            // agentDetails?.signatureUploadDate.toString() ?? "",
            // "Tue Jan 18 11:55:50 IST 2023",
            style: TextStyle(
              color: textGrayColor2,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 20),
          DottedBorder(
            color: borderColor,
            radius: const Radius.circular(7),
            borderType: BorderType.RRect,
            dashPattern: const <double>[8, 4],
            child: Center(
              child: signatureBase64 == null
                  ? SizedBox(
                      height: 100.h,
                    )
                  : Image.memory(
                      base64Decode(signatureBase64),
                      height: 100.h,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
