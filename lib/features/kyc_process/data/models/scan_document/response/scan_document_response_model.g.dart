// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scan_document_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScanDocumentResponseModelImpl _$$ScanDocumentResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ScanDocumentResponseModelImpl(
      header: json['h'] == null
          ? null
          : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
      body: json['b'] == null
          ? null
          : ScanDocumentResponseData.fromJson(
              json['b'] as Map<String, dynamic>),
      status: json['s'] == null
          ? null
          : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ScanDocumentResponseModelImplToJson(
        _$ScanDocumentResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$ScanDocumentResponseDataImpl _$$ScanDocumentResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ScanDocumentResponseDataImpl(
      responseBody: json['rb'] == null
          ? null
          : ScanDocumentResponseBody.fromJson(
              json['rb'] as Map<String, dynamic>),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$ScanDocumentResponseDataImplToJson(
        _$ScanDocumentResponseDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };

_$ScanDocumentResponseBodyImpl _$$ScanDocumentResponseBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$ScanDocumentResponseBodyImpl(
      fileName: json['fileName'] as String?,
      ocrResponse: json['ocrResponse'] == null
          ? null
          : OcrResponse.fromJson(json['ocrResponse'] as Map<String, dynamic>),
      uploadedDocumentId: json['uploadedDocumentId'] as int?,
      currentDateTime: json['currentDateTime'] as String?,
    );

Map<String, dynamic> _$$ScanDocumentResponseBodyImplToJson(
        _$ScanDocumentResponseBodyImpl instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'ocrResponse': instance.ocrResponse,
      'uploadedDocumentId': instance.uploadedDocumentId,
      'currentDateTime': instance.currentDateTime,
    };

_$OcrResponseImpl _$$OcrResponseImplFromJson(Map<String, dynamic> json) =>
    _$OcrResponseImpl(
      code: json['code'] as int?,
      documentdata: json['documentdata'] == null
          ? null
          : Documentdata.fromJson(json['documentdata'] as Map<String, dynamic>),
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$$OcrResponseImplToJson(_$OcrResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'documentdata': instance.documentdata,
      'msg': instance.msg,
    };

_$DocumentdataImpl _$$DocumentdataImplFromJson(Map<String, dynamic> json) =>
    _$DocumentdataImpl(
      kycStatus: json['kyc_status'] as String?,
      kycStatusMsg: json['kyc_status_msg'] as String?,
      isFirstNameAvailable: json['isFirstNameAvailable'] as bool?,
      isLastNameAvailable: json['isLastNameAvailable'] as bool?,
      isIdNumberAvailable: json['isIdNumberAvailable'] as bool?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      idNumber: json['id_number'] as String?,
      billDate: json['billDate'] as String?,
      issueDate: json['issueDate'] as String?,
      isRegistrationMarkAvailable: json['isRegistrationMarkAvailable'] as bool?,
      registrationMark: json['registrationMark'],
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$DocumentdataImplToJson(_$DocumentdataImpl instance) =>
    <String, dynamic>{
      'kyc_status': instance.kycStatus,
      'kyc_status_msg': instance.kycStatusMsg,
      'isFirstNameAvailable': instance.isFirstNameAvailable,
      'isLastNameAvailable': instance.isLastNameAvailable,
      'isIdNumberAvailable': instance.isIdNumberAvailable,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'id_number': instance.idNumber,
      'billDate': instance.billDate,
      'issueDate': instance.issueDate,
      'isRegistrationMarkAvailable': instance.isRegistrationMarkAvailable,
      'registrationMark': instance.registrationMark,
      'address': instance.address,
    };
