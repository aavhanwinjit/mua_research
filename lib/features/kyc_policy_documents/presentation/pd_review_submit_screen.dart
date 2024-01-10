import 'package:dotted_border/dotted_border.dart';
import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/kyc_policy_documents/provider/pd_review_submit_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class PDReviewSubmitScreen extends ConsumerStatefulWidget {
  const PDReviewSubmitScreen({super.key});

  @override
  ConsumerState<PDReviewSubmitScreen> createState() =>
      _ReviewSubmitScreenState();
}

class _ReviewSubmitScreenState extends ConsumerState<PDReviewSubmitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        forceMaterialTransparency: true,
        title: Text(
          "Review & Submit",
          style: TextStyle(
            color: black,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: BackButton(
          color: black,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              customerInfoBox(),
              policyDocumentsBox(),
              signatureInfoBox(),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    Checkbox(
                      checkColor: white,
                      fillColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (ref.watch(confirmationProvider)) {
                          return primaryBlueColor;
                        }
                        return white;
                      }),
                      value: ref.watch(confirmationProvider),
                      onChanged: (value) {
                        ref
                            .read(confirmationProvider.notifier)
                            .update((state) => value!);
                      },
                    ),
                    Expanded(
                      child: Text(
                          "I hereby affirm that I have thoroughly examined and verified all the documents."),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomOutlineButton(
                        label: 'Exit',
                        disable: false,
                        primary: true,
                        onTap: () {},
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 2,
                      child: CustomPrimaryButton(
                        onTap: () {
                          context.goNamed(AppRoutes.dashboardScreen);
                        },
                        label: 'Next',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customerInfoBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Container(
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
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Customer information",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextButton(
                    onPressed: () =>
                        context.pushNamed(AppRoutes.editCustomerInfoScreen),
                    child: Text(
                      "Edit",
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //information
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalInfo(
                  [
                    {
                      "heading": "Surname",
                      "value": "Sharma",
                    },
                    {"heading": "Contact No", "value": "+230 5 123 4567"},
                    {"heading": "Policy Number", "value": "1234567"},
                  ],
                ),
                Spacer(),
                verticalInfo(
                  [
                    {
                      "heading": "Other Name",
                      "value": "Devika",
                    },
                    {
                      "heading": "NIC Number",
                      "value": "S0808739500254",
                    }
                  ],
                ),
                Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget policyDocumentsBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Container(
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
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Policy Documents",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextButton(
                    onPressed: () => context.pushNamed(AppRoutes.editIDScreen),
                    child: Text(
                      "Edit",
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //NIC image
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                "Claim Document",
                style: TextStyle(color: textGrayColor2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Image.asset(
                ImageConstants.idImage,
                height: 250.h,
                width: 250.w,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget signatureInfoBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Container(
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
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15),
                  Text(
                    "Arjun Kumar",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Tue Jan 18 11:55:50 IST 2023",
                    style: TextStyle(
                      color: textGrayColor2,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 20),
                  DottedBorder(
                    color: borderColor,
                    radius: Radius.circular(7),
                    borderType: BorderType.RRect,
                    dashPattern: <double>[3, 1],
                    child: Center(
                      child: Image.asset(
                        ImageConstants.signatureImage,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget verticalInfo(List data) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          data.length,
          (index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data[index]["heading"],
                  style: TextStyle(
                    color: textGrayColor2,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  data[index]["value"],
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 20),
              ],
            );
          },
        ),
      ),
    );
  }
}
