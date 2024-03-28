import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/enums/kyc_type_enums.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:ekyc/widgets/info_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomerInfoCard extends ConsumerWidget {
  const CustomerInfoCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedApplication = ref.watch(selectedApplicationProvider);

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          //info box heading
          Padding(
            padding: EdgeInsets.only(left: 16.w, top: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Strings.customerInfo,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                // TextButton(
                //   onPressed: () => context.pushNamed(AppRoutes.editCustomerInfoScreen),
                //   child: Text(
                //     Strings.edit,
                //     style: TextStyle(
                //       fontSize: 14.sp,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          //information
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h, top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // InfoTile(
                      //   title: Strings.surname,
                      //   value: "Sharma",
                      // ),
                      // SizedBox(height: 24),
                      InfoTile(
                        title: Strings.mobileNo,
                        value: "+230 ${selectedApplication?.mobileNumber}",
                      ),
                      // SizedBox(height: 24),
                      // InfoTile(
                      //   title: Strings.policyNo,
                      //   value: "1234567",
                      // ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // InfoTile(
                      //   title: Strings.otherName,
                      //   value: "Devika",
                      // ),
                      // SizedBox(height: 24),
                      // InfoTile(
                      //   title: Strings.nicNumber,
                      //   value: "S0808739500254",
                      // ),
                      (selectedApplication?.kycTypeId == KYCType.MOTOR_INSURANCE ||
                              selectedApplication?.kycTypeId == KYCType.NON_MOTOR_INSURANCE)
                          ? InfoTile(
                              title: Strings.quoteNumber,
                              value: selectedApplication?.quoteNumber ?? "-",
                            )
                          : selectedApplication?.policyNumber != null && selectedApplication!.policyNumber!.isNotEmpty
                              ? InfoTile(
                                  title: Strings.policyNo,
                                  value: selectedApplication.policyNumber ?? "-",
                                )
                              : const SizedBox(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
