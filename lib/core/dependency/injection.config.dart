// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:ekyc/core/dependency/injection.dart' as _i45;
import 'package:ekyc/core/helpers/device_information_helper.dart' as _i6;
import 'package:ekyc/core/helpers/request_generator.dart' as _i7;
import 'package:ekyc/core/network/network_info.dart' as _i22;
import 'package:ekyc/core/network/services/api_service.dart' as _i10;
import 'package:ekyc/core/storage/storage_manager.dart' as _i8;
import 'package:ekyc/core/storage/storage_manager_impl.dart' as _i9;
import 'package:ekyc/features/dashboard/data/repositories/agent_applications_repository_impl.dart'
    as _i12;
import 'package:ekyc/features/dashboard/domain/repositories/agent_applications_repository.dart'
    as _i11;
import 'package:ekyc/features/dashboard/domain/usecases/get_agent_applications.dart'
    as _i40;
import 'package:ekyc/features/login_otp/data/repositories/auth_repository_impl.dart'
    as _i27;
import 'package:ekyc/features/login_otp/domain/repositories/auth_repository.dart'
    as _i26;
import 'package:ekyc/features/login_otp/domain/usecases/change_mpin.dart'
    as _i28;
import 'package:ekyc/features/login_otp/domain/usecases/resend_otp.dart'
    as _i29;
import 'package:ekyc/features/login_otp/domain/usecases/validate_otp.dart'
    as _i30;
import 'package:ekyc/features/login_otp/domain/usecases/verify_mobile_number.dart'
    as _i31;
import 'package:ekyc/features/mpin_face_id/data/repositories/mpin_repository_impl.dart'
    as _i16;
import 'package:ekyc/features/mpin_face_id/domain/repositories/mpin_repository.dart'
    as _i15;
import 'package:ekyc/features/mpin_face_id/domain/usecases/login_by_fp.dart'
    as _i32;
import 'package:ekyc/features/mpin_face_id/domain/usecases/login_by_mpin.dart'
    as _i33;
import 'package:ekyc/features/mpin_face_id/domain/usecases/set_agent_mpin.dart'
    as _i34;
import 'package:ekyc/features/mpin_face_id/domain/usecases/set_fingerprint.dart'
    as _i35;
import 'package:ekyc/features/mpin_face_id/domain/usecases/verify_mpin.dart'
    as _i36;
import 'package:ekyc/features/profile/data/repositories/profile_repository_impl.dart'
    as _i25;
import 'package:ekyc/features/profile/domain/repositories/profile_repository.dart'
    as _i24;
import 'package:ekyc/features/profile/domain/usecases/de_register_fingerprint.dart'
    as _i42;
import 'package:ekyc/features/profile/domain/usecases/get_agent_details.dart'
    as _i43;
import 'package:ekyc/features/profile/domain/usecases/logout.dart' as _i44;
import 'package:ekyc/features/signature/data/repositories/save_file_repository_impl.dart'
    as _i21;
import 'package:ekyc/features/signature/data/repositories/save_signature_repository_impl.dart'
    as _i39;
import 'package:ekyc/features/signature/data/repositories/view_file_repository_impl.dart'
    as _i14;
import 'package:ekyc/features/signature/domain/repositories/save_file_repository.dart'
    as _i20;
import 'package:ekyc/features/signature/domain/repositories/save_signature_repository.dart'
    as _i38;
import 'package:ekyc/features/signature/domain/repositories/view_file_repository.dart'
    as _i13;
import 'package:ekyc/features/signature/domain/usecases/save_file.dart' as _i23;
import 'package:ekyc/features/signature/domain/usecases/save_signature.dart'
    as _i41;
import 'package:ekyc/features/signature/domain/usecases/view_file.dart' as _i19;
import 'package:ekyc/features/splash_screen/data/repositories/splash_screen_repository_impl.dart'
    as _i18;
import 'package:ekyc/features/splash_screen/domain/repositories/splash_screen_repository.dart'
    as _i17;
import 'package:ekyc/features/splash_screen/domain/usecases/launch_details.dart'
    as _i37;
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
    gh.lazySingleton<_i13.ViewFileRepository>(
        () => _i14.ViewFileRepositoryImpl(apiService: gh<_i10.ApiService>()));
    gh.lazySingleton<_i15.MPINRepository>(
        () => _i16.MPINRepositoryImpl(apiService: gh<_i10.ApiService>()));
    gh.lazySingleton<_i17.SplashScreenRepository>(() =>
        _i18.SplashScreenRepositoryImpl(apiService: gh<_i10.ApiService>()));
    gh.lazySingleton<_i19.ViewFile>(
        () => _i19.ViewFile(gh<_i13.ViewFileRepository>()));
    gh.lazySingleton<_i20.SaveFileRepository>(
        () => _i21.SaveFileRepositoryImpl(apiService: gh<_i10.ApiService>()));
    gh.lazySingleton<_i22.NetworkInfo>(
        () => _i22.NetworkInfoImpl(gh<_i5.InternetConnection>()));
    gh.lazySingleton<_i23.SaveFile>(
        () => _i23.SaveFile(gh<_i20.SaveFileRepository>()));
    gh.lazySingleton<_i24.ProfileRepository>(
        () => _i25.ProfileRepositoryImpl(apiService: gh<_i10.ApiService>()));
    gh.lazySingleton<_i26.AuthRepository>(
        () => _i27.AuthRepositoryImpl(apiService: gh<_i10.ApiService>()));
    gh.lazySingleton<_i28.ChangeMPIN>(
        () => _i28.ChangeMPIN(gh<_i26.AuthRepository>()));
    gh.lazySingleton<_i29.ResendOTP>(
        () => _i29.ResendOTP(gh<_i26.AuthRepository>()));
    gh.lazySingleton<_i30.ValidateOTP>(
        () => _i30.ValidateOTP(gh<_i26.AuthRepository>()));
    gh.lazySingleton<_i31.VerifyMobileNumber>(
        () => _i31.VerifyMobileNumber(gh<_i26.AuthRepository>()));
    gh.lazySingleton<_i32.LoginByFP>(
        () => _i32.LoginByFP(gh<_i15.MPINRepository>()));
    gh.lazySingleton<_i33.LoginByMpin>(
        () => _i33.LoginByMpin(gh<_i15.MPINRepository>()));
    gh.lazySingleton<_i34.SetAgentMPIN>(
        () => _i34.SetAgentMPIN(gh<_i15.MPINRepository>()));
    gh.lazySingleton<_i35.SetFingerPrint>(
        () => _i35.SetFingerPrint(gh<_i15.MPINRepository>()));
    gh.lazySingleton<_i36.VerifyMPIN>(
        () => _i36.VerifyMPIN(gh<_i15.MPINRepository>()));
    gh.lazySingleton<_i37.LaunchDetails>(
        () => _i37.LaunchDetails(gh<_i17.SplashScreenRepository>()));
    gh.lazySingleton<_i38.SaveSignatureRepository>(() =>
        _i39.SaveSignatureRepositoryImpl(apiService: gh<_i10.ApiService>()));
    gh.lazySingleton<_i40.GetAgentApplications>(() =>
        _i40.GetAgentApplications(gh<_i11.AgentApplicationsRepository>()));
    gh.lazySingleton<_i41.SaveSignature>(
        () => _i41.SaveSignature(gh<_i38.SaveSignatureRepository>()));
    gh.lazySingleton<_i42.DeRegisterFingerprint>(
        () => _i42.DeRegisterFingerprint(gh<_i24.ProfileRepository>()));
    gh.lazySingleton<_i43.GetAgentDetails>(
        () => _i43.GetAgentDetails(gh<_i24.ProfileRepository>()));
    gh.lazySingleton<_i44.Logout>(
        () => _i44.Logout(gh<_i24.ProfileRepository>()));
    return this;
  }
}

class _$MAUEngineModule extends _i45.MAUEngineModule {}
