// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i7;
import 'package:ekyc/core/dependency/injection.dart' as _i20;
import 'package:ekyc/core/helpers/device_information_helper.dart' as _i6;
import 'package:ekyc/core/helpers/request_generator.dart' as _i10;
import 'package:ekyc/core/network/network_info.dart' as _i9;
import 'package:ekyc/core/network/services/api_service.dart' as _i11;
import 'package:ekyc/core/storage/storage_manager.dart' as _i4;
import 'package:ekyc/core/storage/storage_manager_impl.dart' as _i5;
import 'package:ekyc/features/login_otp/data/repositories/auth_repository_impl.dart'
    as _i13;
import 'package:ekyc/features/login_otp/domain/repositories/auth_repository.dart'
    as _i12;
import 'package:ekyc/features/login_otp/domain/usecases/resend_otp.dart'
    as _i14;
import 'package:ekyc/features/login_otp/domain/usecases/validate_otp.dart'
    as _i17;
import 'package:ekyc/features/login_otp/domain/usecases/verify_mobile_number.dart'
    as _i18;
import 'package:ekyc/features/splash_screen/data/repositories/splash_screen_repository_impl.dart'
    as _i16;
import 'package:ekyc/features/splash_screen/domain/repositories/splash_screen_repository.dart'
    as _i15;
import 'package:ekyc/features/splash_screen/domain/usecases/launch_details.dart'
    as _i19;
import 'package:ekyc/models/app_config/app_config.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i8;

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
    gh.singleton<_i3.AppConfig>(mAUEngineModule.getAppConfig());
    gh.lazySingleton<_i4.AppStorageManager>(() => _i5.StorageManagerImpl());
    gh.lazySingleton<_i6.DeviceInformationHelper>(
        () => _i6.DeviceInformationHelper());
    gh.lazySingleton<_i7.Dio>(() => mAUEngineModule.getNetworkClient());
    gh.lazySingleton<_i8.InternetConnection>(
        () => mAUEngineModule.getInternetConnection());
    gh.lazySingleton<_i9.NetworkInfo>(
        () => _i9.NetworkInfoImpl(gh<_i8.InternetConnection>()));
    gh.lazySingleton<_i10.RequestGenerator>(() => _i10.RequestGenerator(
        deviceInformationHelper: gh<_i6.DeviceInformationHelper>()));
    gh.lazySingleton<_i11.ApiService>(() => mAUEngineModule.getApiService(
          gh<_i7.Dio>(),
          gh<_i3.AppConfig>(),
        ));
    gh.lazySingleton<_i12.AuthRepository>(
        () => _i13.AuthRepositoryImpl(apiService: gh<_i11.ApiService>()));
    gh.lazySingleton<_i14.ResendOTP>(
        () => _i14.ResendOTP(gh<_i12.AuthRepository>()));
    gh.lazySingleton<_i15.SplashScreenRepository>(() =>
        _i16.SplashScreenRepositoryImpl(apiService: gh<_i11.ApiService>()));
    gh.lazySingleton<_i17.ValidateOTP>(
        () => _i17.ValidateOTP(gh<_i12.AuthRepository>()));
    gh.lazySingleton<_i18.VerifyMobileNumber>(
        () => _i18.VerifyMobileNumber(gh<_i12.AuthRepository>()));
    gh.lazySingleton<_i19.LaunchDetails>(
        () => _i19.LaunchDetails(gh<_i15.SplashScreenRepository>()));
    return this;
  }
}

class _$MAUEngineModule extends _i20.MAUEngineModule {}
