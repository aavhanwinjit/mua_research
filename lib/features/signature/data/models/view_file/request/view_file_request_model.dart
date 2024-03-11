// To parse this JSON data, do
//
//     final viewFileRequestModel = viewFileRequestModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'view_file_request_model.freezed.dart';
part 'view_file_request_model.g.dart';

ViewFileRequestModel viewFileRequestModelFromJson(String str) => ViewFileRequestModel.fromJson(json.decode(str));

String viewFileRequestModelToJson(ViewFileRequestModel data) => json.encode(data.toJson());

@freezed
class ViewFileRequestModel with _$ViewFileRequestModel {
    const factory ViewFileRequestModel({
        @JsonKey(name: "fileName")
        String? fileName,
    }) = _ViewFileRequestModel;

    factory ViewFileRequestModel.fromJson(Map<String, dynamic> json) => _$ViewFileRequestModelFromJson(json);
}
