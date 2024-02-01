import 'package:dio/dio.dart';
import 'package:ekyc/core/dependency/injection.config.dart';
import 'package:ekyc/core/helpers/network_helper.dart';
import 'package:ekyc/core/network/services/api_service.dart';
import 'package:ekyc/models/app_config/app_config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();

@module
abstract class MAUEngineModule {
  @singleton
  AppConfig getAppConfig() {
    return const AppConfig(
      appName: "MAU",
      baseUrl: "http://192.168.0.134:9890",
    );
  }

  // @preResolve
  // Future<SharedPreferences> getSharedPreferences() {
  //   return SharedPreferences.getInstance();
  // }

  // @lazySingleton
  // IStorageManager getStorageManager() {
  //   return LocalStorageManager();
  // }

  @lazySingleton
  Dio getNetworkClient() {
    return NetworkHelper.getDioClient();
  }

  // @lazySingleton
  // Future<DeviceInfoModel> getDeviceInfo() {
  //   return DeviceInformationHelper().generateDeviceInformation();
  // }

  // @lazySingleton
  // RequestHeaderGenerator getRequestHeaderGenerator(DeviceInfoModel deviceInformationHelper) {
  //   return RequestHeaderGenerator(deviceInformationHelper: deviceInformationHelper);
  // }

  @lazySingleton
  ApiService getApiService(
    Dio dio,
    AppConfig appConfig,
  ) {
    return ApiService(dio, baseUrl: appConfig.baseUrl);
  }

  @lazySingleton
  InternetConnection getInternetConnection() {
    return InternetConnection();
  }

  // @lazySingleton
  // AuthenticationServices getAuthenticationServices(
  //   Dio dio,
  //   AppConfig appConfig,
  // ) {
  //   return AuthenticationServices(dio, baseUrl: appConfig.baseUrl);
  // }

  // @lazySingleton
  // SqfliteManager getLocalDatabaseManager() {
  //   return LocalDatabaseManager();
  // }

  // @lazySingleton
  // DeviceManager getDeviceData() {
  //   return DeviceInfo();
  // }

  // @lazySingleton
  // AppRouter appRouter() {
  //   return AppRouter();
  // }
}
