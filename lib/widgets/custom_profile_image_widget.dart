import 'package:cached_network_image/cached_network_image.dart';
import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomProfileImageWidget extends StatelessWidget {
  final String? profilePic;
  final String userName;
  final double size;
  final double? fontSize;
  final double? borderRadius;
  final bool? primary;

  const CustomProfileImageWidget({
    super.key,
    this.profilePic,
    required this.userName,
    required this.size,
    this.fontSize = 19.0,
    this.borderRadius = 100,
    this.primary = true,
  });

  @override
  Widget build(BuildContext context) {
    if (profilePic != null) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius!),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius!),
          child: CachedNetworkImage(
            imageUrl: profilePic ?? "",
            width: size,
            height: size,
            fit: BoxFit.cover,
            placeholder: (context, url) => Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(borderRadius!),
              ),
              child: Center(
                child: SpinKitChasingDots(
                  color: primaryColor,
                  size: 28,
                ),
              ),
            ),
            errorWidget: (context, url, error) => getDefaultProfilePic(),
          ),
        ),
      );
    } else {
      return getDefaultProfilePic();
    }
  }

  Widget getDefaultProfilePic() {
    String displayName = getDisplayText(userName);
    // var position = displayName.hashCode % _lightColorList.length;
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 100),
        color: primary == true ? primaryColor : lightPurple,
        // color: _lightColorList[position],
      ),
      child: Center(
        child: Text(
          displayName.toUpperCase(),
          style: TextStyle(
            color: white,
            // color: _colors[position],
            fontWeight: FontWeight.bold,
            fontFamily: Strings.isodoraFont,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }

  String getDisplayText(String text) {
    if (text.isNotEmpty) {
      var textArray = text.split(" ");
      if (textArray.length > 1) {
        String sortName = textArray[0].isNotEmpty ? textArray[0][0] : "";
        sortName += textArray[1].isNotEmpty ? textArray[1][0] : "";
        return sortName;
      } else if (textArray.isNotEmpty) {
        String sortName = textArray[0][0];
        sortName += textArray[0].length > 1 ? textArray[0][1] : "";
        return sortName;
      } else {
        return "";
      }
    }
    return "";
  }
}
