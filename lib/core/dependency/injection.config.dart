// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:ekyc/core/dependency/injection.dart' as _i6;
import 'package:ekyc/core/helpers/request_header_generator.dart' as _i5;
import 'package:ekyc/models/device_info/device_info_model.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

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
    final interActiveEngineModule = _$InterActiveEngineModule();
    gh.lazySingletonAsync<_i3.DeviceInfoModel>(
        () => interActiveEngineModule.getDeviceInfo());
    gh.lazySingleton<_i4.Dio>(() => interActiveEngineModule.getNetworkClient());
    gh.lazySingletonAsync<_i5.RequestHeaderGenerator>(() async =>
        interActiveEngineModule
            .getRequestHeaderGenerator(await getAsync<_i3.DeviceInfoModel>()));
    return this;
  }
}

class _$InterActiveEngineModule extends _i6.InterActiveEngineModule {}
