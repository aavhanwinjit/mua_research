import 'package:dio/dio.dart';
import 'package:ekyc/core/dependency/injection.config.dart';
import 'package:ekyc/core/helpers/device_information_helper.dart';
import 'package:ekyc/core/helpers/network_helper.dart';
import 'package:ekyc/core/helpers/request_header_generator.dart';
import 'package:ekyc/models/device_info/device_info_model.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();

@module
abstract class InterActiveEngineModule {
  // @singleton
  // AppConfig getAppConfig() {
  //   return AppConfig(
  //     appName: "Inter Active Application",
  //     baseUrl: 'http://20.197.24.53:6005/api/',

  //     // baseUrl: 'http://192.168.9.38:6003/api/',
  //   );
  // }

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

  @lazySingleton
  Future<DeviceInfoModel> getDeviceInfo() {
    return DeviceInformationHelper().generateDeviceInformation();
  }

  @lazySingleton
  RequestHeaderGenerator getRequestHeaderGenerator(DeviceInfoModel deviceInfoModel) {
    return RequestHeaderGenerator(deviceInfoModel: deviceInfoModel);
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
