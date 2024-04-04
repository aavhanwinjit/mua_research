// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:ekyc/core/dependency/injection.dart' as _i59;
import 'package:ekyc/core/helpers/device_information_helper.dart' as _i6;
import 'package:ekyc/core/helpers/request_generator.dart' as _i7;
import 'package:ekyc/core/network/network_info.dart' as _i26;
import 'package:ekyc/core/network/services/api_service.dart' as _i10;
import 'package:ekyc/core/storage/storage_manager.dart' as _i8;
import 'package:ekyc/core/storage/storage_manager_impl.dart' as _i9;
import 'package:ekyc/features/dashboard/data/repositories/agent_applications_repository_impl.dart'
    as _i12;
import 'package:ekyc/features/dashboard/data/repositories/kyc_types_repository_impl.dart'
    as _i22;
import 'package:ekyc/features/dashboard/domain/repositories/agent_applications_repository.dart'
    as _i11;
import 'package:ekyc/features/dashboard/domain/repositories/kyc_types_repository.dart'
    as _i21;
import 'package:ekyc/features/dashboard/domain/usecases/get_agent_applications.dart'
    as _i48;
import 'package:ekyc/features/dashboard/domain/usecases/get_kyc_types.dart'
    as _i49;
import 'package:ekyc/features/kyc_process/data/repositories/add_customer_info_repository_impl.dart'
    as _i31;
import 'package:ekyc/features/kyc_process/data/repositories/master_data_repository_impl.dart'
    as _i14;
import 'package:ekyc/features/kyc_process/data/repositories/save_document_info_repository_impl.dart'
    as _i45;
import 'package:ekyc/features/kyc_process/domain/repositories/add_customer_info_repository.dart'
    as _i30;
import 'package:ekyc/features/kyc_process/domain/repositories/master_data_repository.dart'
    as _i13;
import 'package:ekyc/features/kyc_process/domain/repositories/save_document_info_repository.dart'
    as _i44;
import 'package:ekyc/features/kyc_process/domain/usecases/add_customer_information.dart'
    as _i54;
import 'package:ekyc/features/kyc_process/domain/usecases/get_address_document_types.dart'
    as _i52;
import 'package:ekyc/features/kyc_process/domain/usecases/get_document_category.dart'
    as _i50;
import 'package:ekyc/features/kyc_process/domain/usecases/get_identity_document_types.dart'
    as _i51;
import 'package:ekyc/features/kyc_process/domain/usecases/save_identity_details.dart'
    as _i53;
import 'package:ekyc/features/login_otp/data/repositories/auth_repository_impl.dart'
    as _i33;
import 'package:ekyc/features/login_otp/domain/repositories/auth_repository.dart'
    as _i32;
import 'package:ekyc/features/login_otp/domain/usecases/change_mpin.dart'
    as _i34;
import 'package:ekyc/features/login_otp/domain/usecases/resend_otp.dart'
    as _i35;
import 'package:ekyc/features/login_otp/domain/usecases/validate_otp.dart'
    as _i36;
import 'package:ekyc/features/login_otp/domain/usecases/verify_mobile_number.dart'
    as _i37;
import 'package:ekyc/features/mpin_face_id/data/repositories/mpin_repository_impl.dart'
    as _i18;
import 'package:ekyc/features/mpin_face_id/domain/repositories/mpin_repository.dart'
    as _i17;
import 'package:ekyc/features/mpin_face_id/domain/usecases/login_by_fp.dart'
    as _i38;
import 'package:ekyc/features/mpin_face_id/domain/usecases/login_by_mpin.dart'
    as _i39;
import 'package:ekyc/features/mpin_face_id/domain/usecases/set_agent_mpin.dart'
    as _i40;
import 'package:ekyc/features/mpin_face_id/domain/usecases/set_fingerprint.dart'
    as _i41;
import 'package:ekyc/features/mpin_face_id/domain/usecases/verify_mpin.dart'
    as _i42;
import 'package:ekyc/features/profile/data/repositories/profile_repository_impl.dart'
    as _i29;
import 'package:ekyc/features/profile/domain/repositories/profile_repository.dart'
    as _i28;
import 'package:ekyc/features/profile/domain/usecases/de_register_fingerprint.dart'
    as _i56;
import 'package:ekyc/features/profile/domain/usecases/get_agent_details.dart'
    as _i57;
import 'package:ekyc/features/profile/domain/usecases/logout.dart' as _i58;
import 'package:ekyc/features/signature/data/repositories/save_file_repository_impl.dart'
    as _i25;
import 'package:ekyc/features/signature/data/repositories/save_signature_repository_impl.dart'
    as _i47;
import 'package:ekyc/features/signature/data/repositories/view_file_repository_impl.dart'
    as _i16;
import 'package:ekyc/features/signature/domain/repositories/save_file_repository.dart'
    as _i24;
import 'package:ekyc/features/signature/domain/repositories/save_signature_repository.dart'
    as _i46;
import 'package:ekyc/features/signature/domain/repositories/view_file_repository.dart'
    as _i15;
import 'package:ekyc/features/signature/domain/usecases/save_file.dart' as _i27;
import 'package:ekyc/features/signature/domain/usecases/save_signature.dart'
    as _i55;
import 'package:ekyc/features/signature/domain/usecases/view_file.dart' as _i23;
import 'package:ekyc/features/splash_screen/data/repositories/splash_screen_repository_impl.dart'
    as _i20;
import 'package:ekyc/features/splash_screen/domain/repositories/splash_screen_repository.dart'
    as _i19;
import 'package:ekyc/features/splash_screen/domain/usecases/launch_details.dart'
    as _i43;
import 'package:ekyc/models/app_config/app_config.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final mAUEngineModule = _$MAUEngineModule();
    gh.singleton<_i3.AppConfig>(() => mAUEngineModule.getAppConfig());
    gh.lazySingleton<_i4.Dio>(() => mAUEngineModule.getNetworkClient());
    gh.lazySingleton<_i5.InternetConnection>(
        () => mAUEngineModule.getInternetConnection());
    gh.lazySingleton<_i6.DeviceInformationHelper>(
        () => _i6.DeviceInformationHelper());
    gh.lazySingleton<_i7.RequestGenerator>(() => _i7.RequestGenerator(
        deviceInformationHelper: gh<_i6.DeviceInformationHelper>()));
    gh.lazySingleton<_i8.AppStorageManager>(() => _i9.StorageManagerImpl());
    gh.lazySingleton<_i10.ApiService>(() => mAUEngineModule.getApiService(
          gh<_i4.Dio>(),
          gh<_i3.AppConfig>(),
        ));
    gh.lazySingleton<_i11.AgentApplicationsRepository>(() =>
        _i12.AgentApplicationsRepositoryImpl(
            apiService: gh<_i10.ApiService>()));
    gh.lazySingleton<_i13.MasterDataRepository>(
        () => _i14.MasterDataRepositoryImpl(apiService: gh<_i10.ApiService>()));
    gh.lazySingleton<_i15.ViewFileRepository>(
        () => _i16.ViewFileRepositoryImpl(apiService: gh<_i10.ApiService>()));
    gh.lazySingleton<_i17.MPINRepository>(
        () => _i18.MPINRepositoryImpl(apiService: gh<_i10.ApiService>()));
    gh.lazySingleton<_i19.SplashScreenRepository>(() =>
        _i20.SplashScreenRepositoryImpl(apiService: gh<_i10.ApiService>()));
    gh.lazySingleton<_i21.KycTypesRepository>(
        () => _i22.KycTypesRepositoryImpl(apiService: gh<_i10.ApiService>()));
    gh.lazySingleton<_i23.ViewFile>(
        () => _i23.ViewFile(gh<_i15.ViewFileRepository>()));
    gh.lazySingleton<_i24.SaveFileRepository>(
        () => _i25.SaveFileRepositoryImpl(apiService: gh<_i10.ApiService>()));
    gh.lazySingleton<_i26.NetworkInfo>(
        () => _i26.NetworkInfoImpl(gh<_i5.InternetConnection>()));
    gh.lazySingleton<_i27.SaveFile>(
        () => _i27.SaveFile(gh<_i24.SaveFileRepository>()));
    gh.lazySingleton<_i28.ProfileRepository>(
        () => _i29.ProfileRepositoryImpl(apiService: gh<_i10.ApiService>()));
    gh.lazySingleton<_i30.AddCustomerInfoRepository>(
        () => _i31.KycTypesRepositoryImpl(apiService: gh<_i10.ApiService>()));
    gh.lazySingleton<_i32.AuthRepository>(
        () => _i33.AuthRepositoryImpl(apiService: gh<_i10.ApiService>()));
    gh.lazySingleton<_i34.ChangeMPIN>(
        () => _i34.ChangeMPIN(gh<_i32.AuthRepository>()));
    gh.lazySingleton<_i35.ResendOTP>(
        () => _i35.ResendOTP(gh<_i32.AuthRepository>()));
    gh.lazySingleton<_i36.ValidateOTP>(
        () => _i36.ValidateOTP(gh<_i32.AuthRepository>()));
    gh.lazySingleton<_i37.VerifyMobileNumber>(
        () => _i37.VerifyMobileNumber(gh<_i32.AuthRepository>()));
    gh.lazySingleton<_i38.LoginByFP>(
        () => _i38.LoginByFP(gh<_i17.MPINRepository>()));
    gh.lazySingleton<_i39.LoginByMpin>(
        () => _i39.LoginByMpin(gh<_i17.MPINRepository>()));
    gh.lazySingleton<_i40.SetAgentMPIN>(
        () => _i40.SetAgentMPIN(gh<_i17.MPINRepository>()));
    gh.lazySingleton<_i41.SetFingerPrint>(
        () => _i41.SetFingerPrint(gh<_i17.MPINRepository>()));
    gh.lazySingleton<_i42.VerifyMPIN>(
        () => _i42.VerifyMPIN(gh<_i17.MPINRepository>()));
    gh.lazySingleton<_i43.LaunchDetails>(
        () => _i43.LaunchDetails(gh<_i19.SplashScreenRepository>()));
    gh.lazySingleton<_i44.SaveDocumentInfoRepository>(() =>
        _i45.SaveDocumentInfoRepositoryImpl(apiService: gh<_i10.ApiService>()));
    gh.lazySingleton<_i46.SaveSignatureRepository>(() =>
        _i47.SaveSignatureRepositoryImpl(apiService: gh<_i10.ApiService>()));
    gh.lazySingleton<_i48.GetAgentApplications>(() =>
        _i48.GetAgentApplications(gh<_i11.AgentApplicationsRepository>()));
    gh.lazySingleton<_i49.GetKycTypes>(
        () => _i49.GetKycTypes(gh<_i21.KycTypesRepository>()));
    gh.lazySingleton<_i50.GetDocumentCategory>(
        () => _i50.GetDocumentCategory(gh<_i13.MasterDataRepository>()));
    gh.lazySingleton<_i51.GetIdentityDocumentTypes>(
        () => _i51.GetIdentityDocumentTypes(gh<_i13.MasterDataRepository>()));
    gh.lazySingleton<_i52.GetAddressDocumentTypes>(
        () => _i52.GetAddressDocumentTypes(gh<_i13.MasterDataRepository>()));
    gh.lazySingleton<_i53.SaveIdentityDetails>(
        () => _i53.SaveIdentityDetails(gh<_i44.SaveDocumentInfoRepository>()));
    gh.lazySingleton<_i54.AddCustomerInformation>(() =>
        _i54.AddCustomerInformation(gh<_i30.AddCustomerInfoRepository>()));
    gh.lazySingleton<_i55.SaveSignature>(
        () => _i55.SaveSignature(gh<_i46.SaveSignatureRepository>()));
    gh.lazySingleton<_i56.DeRegisterFingerprint>(
        () => _i56.DeRegisterFingerprint(gh<_i28.ProfileRepository>()));
    gh.lazySingleton<_i57.GetAgentDetails>(
        () => _i57.GetAgentDetails(gh<_i28.ProfileRepository>()));
    gh.lazySingleton<_i58.Logout>(
        () => _i58.Logout(gh<_i28.ProfileRepository>()));
    return this;
  }
}

class _$MAUEngineModule extends _i59.MAUEngineModule {}
