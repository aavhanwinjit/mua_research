// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ApiService implements ApiService {
  _ApiService(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<LaunchDetailsResponse> launchDetails(
      LaunchDetailsRequest request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<LaunchDetailsResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/AppStarts/LaunchDetails',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = LaunchDetailsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<VerifyMobileNumberResponseModel> verifyMobileNumber(
      VerifyMobileNumberRequestModel request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<VerifyMobileNumberResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Registration/VerifyMobileNumber',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = VerifyMobileNumberResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ValidateOtpResponseModel> validateOTP(
      ValidateOtpRequestModel request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ValidateOtpResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Registration/ValidateAgentRegOTP',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ValidateOtpResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ResendOtpResponseModel> resendOTP(
      ResendOtpRequestModel request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResendOtpResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Login/ResendOTP',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ResendOtpResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<RegisterDeviceResponseModel> registerDevice(
      RegisterDeviceRequestModel request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<RegisterDeviceResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Registration/RegisterDevice',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = RegisterDeviceResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SaveFileResponseModel> saveFile(SaveFileRequestModel request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SaveFileResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Default/SaveFile',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = SaveFileResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SaveFileResponseModel> saveSignature(
      SaveSignatureRequestModel request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SaveFileResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Agent/SaveSignature',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = SaveFileResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ViewFileResponseModel> viewFile(ViewFileRequestModel request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ViewFileResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Default/ViewFile',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ViewFileResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SetAgentMpinResponseModel> setAgentMPIN(
      SetAgentMpinRequestModel request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SetAgentMpinResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Registration/SetAgentMPIN',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = SetAgentMpinResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SetFingerprintResponseModel> setFingerPrint() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SetFingerprintResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Login/SetFingerPrint',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = SetFingerprintResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DeRegisterFingerprintResponseModel> deRegisterFingerprint() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DeRegisterFingerprintResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Login/DeRegisterFingerPrint',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = DeRegisterFingerprintResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<LoginbyMpinResponseModel> loginByMpin(
      LoginbyMpinRequestModel request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<LoginbyMpinResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Login/LoginByMPIN',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = LoginbyMpinResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<LoginByFpResponseModel> loginByFP(
      LoginByFpRequestModel request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<LoginByFpResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Login/LoginByFP',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = LoginByFpResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<LogoutResponseModel> logout() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<LogoutResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Login/Logout',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = LogoutResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetAgentDetailsResponseModel> getAgentDetails() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetAgentDetailsResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Agent/GetAgentDetails',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = GetAgentDetailsResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<VerifyMPINResponseModel> verifyMPIN(
      VerifyMPINRequestModel request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<VerifyMPINResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Registration/ValidateMPIN',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = VerifyMPINResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ChangeMPINResponseModel> changeMPIN(
      ChangeMPINRequestModel request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ChangeMPINResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Registration/ChangeMPIN',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ChangeMPINResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetAgentApplicationsResponseModel> getAgentApplications(
      GetAgentApplicationsRequestModel request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetAgentApplicationsResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Agent/GetAgentApplications',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = GetAgentApplicationsResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetKycTypesResponseModel> getKycTypes(
      GetKycTypesRequestModel request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetKycTypesResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Data/GetKYCTypes',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = GetKycTypesResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AddCustomerInformationResponseModel> addCustomerInformation(
      AddCustomerInformationRequestModel request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AddCustomerInformationResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Agent/AddCustomerInformation',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = AddCustomerInformationResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SaveIdentityDetailsResponseModel> saveIdentityDetails(
      SaveIdentityDetailsRequestModel request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SaveIdentityDetailsResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Agent/SaveIdentityDetails',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = SaveIdentityDetailsResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetIdentityDocumentTypesResponseModel>
      getIdentityDocumentTypes() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetIdentityDocumentTypesResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Data/GetIdentityDocumentTypes',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = GetIdentityDocumentTypesResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetDocumentCategoryResponseModel> getDocumentCategory(
      GetDocumentCategoryRequestModel request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetDocumentCategoryResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Data/GetDocumentCategories',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = GetDocumentCategoryResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetAddressDocumentTypesResponseModel> getAddressDocumentTypes() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetAddressDocumentTypesResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Data/GetAddressDocumentTypes',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = GetAddressDocumentTypesResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ScanDocumentResponseModel> scanDocument(
      ScanDocumentRequestModel request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ScanDocumentResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/DocumentOCR/ScanDocument',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ScanDocumentResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SaveAddressDetailsResponseModel> saveAddressDetails(
      SaveAddressDetailsRequestModel request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SaveAddressDetailsResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Agent/SaveAddressDetails',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = SaveAddressDetailsResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetPorDocumentTypesResponseModel> getPORDocumentTypes() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetPorDocumentTypesResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Data/GetPORDocumentTypes',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = GetPorDocumentTypesResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetMotorInsuranceDocumentTypesResponseModel>
      getMotorInsuranceDocumentTypes() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetMotorInsuranceDocumentTypesResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Data/GetMotorInsuranceDocumentTypes',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value =
        GetMotorInsuranceDocumentTypesResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SaveMotorInsuranceDocumentsResponseModel> saveMotorInsuranceDocuments(
      SaveMotorInsuranceDocumentsRequestModel request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SaveMotorInsuranceDocumentsResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Agent/SaveMotorInsuranceDocuments',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value =
        SaveMotorInsuranceDocumentsResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetNonMotorInsuranceDocumentTypesResponseModel>
      getNonMotorInsuranceDocumentTypes() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetNonMotorInsuranceDocumentTypesResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Data/GetNonMotorInsuranceDocumentTypes',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value =
        GetNonMotorInsuranceDocumentTypesResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SaveNonMotorInsuranceDocumentsResponseModel>
      saveNonMotorInsuranceDocuments(
          SaveNonMotorInsuranceDocumentsRequestModel request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SaveNonMotorInsuranceDocumentsResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Agent/SaveNonMotorInsuranceDocuments',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value =
        SaveNonMotorInsuranceDocumentsResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SavePorDocumentsResponseModel> savePORDocuments(
      SavePorDocumentsRequestModel request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SavePorDocumentsResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Agent/SavePORDocuments',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = SavePorDocumentsResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetPolicyDocumentTypesResponseModel> getPolicyDocumentTypes() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetPolicyDocumentTypesResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Data/GetPolicyDocumentTypes',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = GetPolicyDocumentTypesResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SavePolicyDocumentsResponseModel> savePolicyDocuments(
      SavePolicyDocumentsRequestModel request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SavePolicyDocumentsResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Agent/SavePolicyDocuments',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = SavePolicyDocumentsResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetAdditionalDocumentTypesResponseModel>
      getAdditionalDocTypes() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetAdditionalDocumentTypesResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Data/GetAdditionalDocumentTypes',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value =
        GetAdditionalDocumentTypesResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SaveAdditionalDocumentsResponseModel> saveAdditionalDocuments(
      SaveAdditionalDocumentsRequestModel request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SaveAdditionalDocumentsResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Agent/SaveAdditionalDocuments',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = SaveAdditionalDocumentsResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GeneratePdfResponseModel> generatePdf(
      GeneratePdfRequestModel request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': true};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GeneratePdfResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/AgentAPI/Agent/GeneratePDF',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = GeneratePdfResponseModel.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
