import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/dashboard/data/models/get_kyc_types/response/get_kyc_types_response_model.dart';
import 'package:ekyc/features/dashboard/presentation/mixins/kyc_types_mixin.dart';
import 'package:ekyc/features/dashboard/presentation/providers/kyc_type_bottomsheet_providers.dart';
import 'package:ekyc/features/dashboard/presentation/providers/kyc_type_provider.dart';
import 'package:ekyc/features/dashboard/presentation/providers/kyc_types_notifier.dart';
import 'package:ekyc/features/dashboard/presentation/widgets/insurance_type_card.dart';
import 'package:ekyc/features/dashboard/presentation/widgets/kyc_type_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class KYCTypeBottomsheet extends ConsumerStatefulWidget {
  const KYCTypeBottomsheet({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FilterBottomsheetState();
}

class _FilterBottomsheetState extends ConsumerState<KYCTypeBottomsheet> with KycTypesMixin {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      getKycTypes(context: context, ref: ref);
    });
  }

  @override
  Widget build(BuildContext context) {
    final kycTypeNotifier = ref.watch(kycTypesNotifierProvider.notifier);
    ref.watch(kycTypesNotifierProvider);

    final kycTypeListLoading = ref.watch(kycTypeListLoadingProvider);
    // final kycTypeListError = ref.watch(kycTypeListErrorProvider);

    return Container(
      color: white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _titleWithCloseButton(),
          _headingWidget(),
          SizedBox(height: 30.h),
          kycTypeListLoading == true
              ? const KycTypeLoadingWidget()
              : kycTypeNotifier.haveApplications()
                  ? _kycTypesWidget()
                  : const SizedBox(),
          SizedBox(height: 20.h),
          _buttons(),
        ],
      ),
    );
  }

  Widget _kycTypesWidget() {
    final kycTypeNotifier = ref.watch(kycTypesNotifierProvider.notifier);
    ref.watch(kycTypesNotifierProvider);

    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 8.w),
      child: Row(
        children: kycTypeNotifier.kycTypes().map((KycTypesModel element) {
          return kycTypeNotifier.kycTypes().length < 3 ? _kycItem(element) : _kycItemExpanded(element);
        }).toList(),
      ),
    );
  }

  Widget _kycItem(KycTypesModel element) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      child: Padding(
        padding: EdgeInsets.only(right: 12.w),
        child: InsuranceTypeCard(
          kycType: element,
          iconWidth: element.kycTypeId == 2 ? 30.w : null,
          imagePath: element.kycTypeId == 1
              ? ImageConstants.lifeInsuranceImage
              : element.kycTypeId == 2
                  ? ImageConstants.motorInsuranceImage
                  : ImageConstants.nonMotorInsuranceImage,
        ),
      ),
    );
  }

  Widget _kycItemExpanded(KycTypesModel element) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      child: Padding(
        padding: EdgeInsets.only(right: 12.w),
        child: InsuranceTypeCard(
          kycType: element,
          iconWidth: element.kycTypeId == 2 ? 30.w : null,
          imagePath: element.kycTypeId == 1
              ? ImageConstants.lifeInsuranceImage
              : element.kycTypeId == 2
                  ? ImageConstants.motorInsuranceImage
                  : ImageConstants.nonMotorInsuranceImage,
        ),
      ),
    );
  }

  Widget _headingWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Text(
        Strings.kycBottomsheetDescription,
        style: TextStyle(
          fontSize: 14.sp,
          color: textGrayColor2,
        ),
      ),
    );
  }

  Widget _buttons() {
    final kycTypeListLoading = ref.watch(kycTypeListLoadingProvider);
    // final kycTypeListError = ref.watch(kycTypeListErrorProvider);

    return Padding(
      padding: EdgeInsets.all(20.w),
      child: CustomPrimaryButton(
        disable: (ref.watch(selectedKycTypeProvider) == null) || (kycTypeListLoading == true),
        onTap: () {
          context.pop();
          context.pushNamed(AppRoutes.customerInfoScreen);
        },
        label: Strings.next,
      ),
    );
  }

  Widget _titleWithCloseButton() {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, top: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            Strings.selectKYCType,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22.sp,
              color: black,
            ),
          ),
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(
              Icons.close,
              size: 20.sp,
            ),
          ),
        ],
      ),
    );
  }
}
