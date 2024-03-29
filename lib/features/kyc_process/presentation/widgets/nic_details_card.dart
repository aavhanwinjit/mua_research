import 'dart:io';

import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/providers/id_details_screen_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:ekyc/widgets/info_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class NICDetailsCard extends ConsumerWidget {
  const NICDetailsCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
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
          Padding(
            padding: EdgeInsets.only(left: 16.w, top: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Strings.nicCard,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextButton(
                  onPressed: () => context.pushNamed(AppRoutes.editIDScreen),
                  child: Text(
                    Strings.edit,
                    style: TextStyle(
                      fontSize: 14.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //information
          _infoWidget(),
          SizedBox(height: 24.h),
          //NIC image
          _imageRow(ref),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }

  Widget _infoWidget() {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 20),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InfoTile(
                  title: Strings.surname,
                  value: "Sharma",
                ),
                SizedBox(height: 24),
                InfoTile(
                  title: Strings.nicNumber,
                  value: "S0808739500254",
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InfoTile(
                  title: Strings.otherName,
                  value: "Devika",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _imageRow(WidgetRef ref) {
    final selectedApplication = ref.watch(selectedApplicationProvider);

    final nicCardFrontSide = ref.watch(nicCardFrontFilePathProvider);
    final nicCardBackSide = ref.watch(nicCardBackFilePathProvider);

    final passportFrontSide = ref.watch(passportFrontFilePathProvider);
    final passportBackSide = ref.watch(passportBackFilePathProvider);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            Strings.nicCard,
            style: TextStyle(color: textGrayColor2),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _imageWidget((selectedApplication?.nationality == NationalityType.MAURITIAN.toString().split('.').last)
                  ? nicCardFrontSide
                  : passportFrontSide),
              SizedBox(width: 16.w),
              _imageWidget((selectedApplication?.nationality == NationalityType.MAURITIAN.toString().split('.').last)
                  ? nicCardBackSide
                  : passportBackSide),
            ],
          ),
        ],
      ),
    );
  }

  Widget _imageWidget(String? filePath) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.file(
          File(filePath ?? ""),
          height: 100.h,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
