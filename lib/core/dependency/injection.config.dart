// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:ekyc/core/dependency/injection.dart' as _i915;
import 'package:ekyc/core/helpers/device_information_helper.dart' as _i680;
import 'package:ekyc/core/helpers/request_generator.dart' as _i988;
import 'package:ekyc/core/network/network_info.dart' as _i279;
import 'package:ekyc/core/network/services/api_service.dart' as _i436;
import 'package:ekyc/core/storage/storage_manager.dart' as _i447;
import 'package:ekyc/core/storage/storage_manager_impl.dart' as _i1065;
import 'package:ekyc/features/dashboard/data/repositories/agent_applications_repository_impl.dart'
    as _i782;
import 'package:ekyc/features/dashboard/data/repositories/kyc_types_repository_impl.dart'
    as _i297;
import 'package:ekyc/features/dashboard/domain/repositories/agent_applications_repository.dart'
    as _i134;
import 'package:ekyc/features/dashboard/domain/repositories/kyc_types_repository.dart'
    as _i269;
import 'package:ekyc/features/dashboard/domain/usecases/get_agent_applications.dart'
    as _i137;
import 'package:ekyc/features/dashboard/domain/usecases/get_kyc_types.dart'
    as _i930;
import 'package:ekyc/features/kyc_process/data/repositories/add_customer_info_repository_impl.dart'
    as _i919;
import 'package:ekyc/features/kyc_process/data/repositories/generate_pdf_repository_impl.dart'
    as _i645;
import 'package:ekyc/features/kyc_process/data/repositories/master_data_repository_impl.dart'
    as _i189;
import 'package:ekyc/features/kyc_process/data/repositories/ocr_api_repository_impl.dart'
    as _i102;
import 'package:ekyc/features/kyc_process/data/repositories/save_document_info_repository_impl.dart'
    as _i198;
import 'package:ekyc/features/kyc_process/domain/repositories/add_customer_info_repository.dart'
    as _i444;
import 'package:ekyc/features/kyc_process/domain/repositories/generate_pdf_repository.dart'
    as _i384;
import 'package:ekyc/features/kyc_process/domain/repositories/master_data_repository.dart'
    as _i343;
import 'package:ekyc/features/kyc_process/domain/repositories/ocr_api_repository.dart'
    as _i19;
import 'package:ekyc/features/kyc_process/domain/repositories/save_document_info_repository.dart'
    as _i721;
import 'package:ekyc/features/kyc_process/domain/usecases/add_customer_information.dart'
    as _i727;
import 'package:ekyc/features/kyc_process/domain/usecases/generate_pdf.dart'
    as _i181;
import 'package:ekyc/features/kyc_process/domain/usecases/get_additional_document_types.dart'
    as _i825;
import 'package:ekyc/features/kyc_process/domain/usecases/get_address_document_types.dart'
    as _i375;
import 'package:ekyc/features/kyc_process/domain/usecases/get_document_category.dart'
    as _i154;
import 'package:ekyc/features/kyc_process/domain/usecases/get_identity_document_types.dart'
    as _i412;
import 'package:ekyc/features/kyc_process/domain/usecases/get_motor_insurance_document_types.dart'
    as _i492;
import 'package:ekyc/features/kyc_process/domain/usecases/get_non_motor_insurance_document_types.dart'
    as _i265;
import 'package:ekyc/features/kyc_process/domain/usecases/get_policy_document_types.dart'
    as _i895;
import 'package:ekyc/features/kyc_process/domain/usecases/get_por_document_types.dart'
    as _i413;
import 'package:ekyc/features/kyc_process/domain/usecases/save_additional_documents.dart'
    as _i952;
import 'package:ekyc/features/kyc_process/domain/usecases/save_address_details.dart'
    as _i64;
import 'package:ekyc/features/kyc_process/domain/usecases/save_identity_details.dart'
    as _i392;
import 'package:ekyc/features/kyc_process/domain/usecases/save_motor_insurance_documents.dart'
    as _i841;
import 'package:ekyc/features/kyc_process/domain/usecases/save_non_motor_insurance_documents.dart'
    as _i307;
import 'package:ekyc/features/kyc_process/domain/usecases/save_policy_documents.dart'
    as _i258;
import 'package:ekyc/features/kyc_process/domain/usecases/save_por_documents.dart'
    as _i772;
import 'package:ekyc/features/kyc_process/domain/usecases/scan_document.dart'
    as _i459;
import 'package:ekyc/features/login_otp/data/repositories/auth_repository_impl.dart'
    as _i901;
import 'package:ekyc/features/login_otp/domain/repositories/auth_repository.dart'
    as _i757;
import 'package:ekyc/features/login_otp/domain/usecases/change_mpin.dart'
    as _i719;
import 'package:ekyc/features/login_otp/domain/usecases/register_device.dart'
    as _i704;
import 'package:ekyc/features/login_otp/domain/usecases/resend_otp.dart'
    as _i432;
import 'package:ekyc/features/login_otp/domain/usecases/validate_otp.dart'
    as _i615;
import 'package:ekyc/features/login_otp/domain/usecases/verify_mobile_number.dart'
    as _i335;
import 'package:ekyc/features/mpin_face_id/data/repositories/mpin_repository_impl.dart'
    as _i661;
import 'package:ekyc/features/mpin_face_id/domain/repositories/mpin_repository.dart'
    as _i471;
import 'package:ekyc/features/mpin_face_id/domain/usecases/login_by_fp.dart'
    as _i97;
import 'package:ekyc/features/mpin_face_id/domain/usecases/login_by_mpin.dart'
    as _i187;
import 'package:ekyc/features/mpin_face_id/domain/usecases/set_agent_mpin.dart'
    as _i887;
import 'package:ekyc/features/mpin_face_id/domain/usecases/set_fingerprint.dart'
    as _i748;
import 'package:ekyc/features/mpin_face_id/domain/usecases/verify_mpin.dart'
    as _i258;
import 'package:ekyc/features/profile/data/repositories/profile_repository_impl.dart'
    as _i72;
import 'package:ekyc/features/profile/domain/repositories/profile_repository.dart'
    as _i64;
import 'package:ekyc/features/profile/domain/usecases/de_register_fingerprint.dart'
    as _i653;
import 'package:ekyc/features/profile/domain/usecases/get_agent_details.dart'
    as _i647;
import 'package:ekyc/features/profile/domain/usecases/logout.dart' as _i131;
import 'package:ekyc/features/signature/data/repositories/save_file_repository_impl.dart'
    as _i994;
import 'package:ekyc/features/signature/data/repositories/save_signature_repository_impl.dart'
    as _i227;
import 'package:ekyc/features/signature/data/repositories/view_file_repository_impl.dart'
    as _i164;
import 'package:ekyc/features/signature/domain/repositories/save_file_repository.dart'
    as _i583;
import 'package:ekyc/features/signature/domain/repositories/save_signature_repository.dart'
    as _i563;
import 'package:ekyc/features/signature/domain/repositories/view_file_repository.dart'
    as _i730;
import 'package:ekyc/features/signature/domain/usecases/save_file.dart'
    as _i714;
import 'package:ekyc/features/signature/domain/usecases/save_signature.dart'
    as _i71;
import 'package:ekyc/features/signature/domain/usecases/view_file.dart' as _i1;
import 'package:ekyc/features/splash_screen/data/repositories/splash_screen_repository_impl.dart'
    as _i1071;
import 'package:ekyc/features/splash_screen/domain/repositories/splash_screen_repository.dart'
    as _i96;
import 'package:ekyc/features/splash_screen/domain/usecases/launch_details.dart'
    as _i501;
import 'package:ekyc/models/app_config/app_config.dart' as _i391;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i161;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final mAUEngineModule = _$MAUEngineModule();
    gh.singleton<_i391.AppConfig>(() => mAUEngineModule.getAppConfig());
    gh.lazySingleton<_i361.Dio>(() => mAUEngineModule.getNetworkClient());
    gh.lazySingleton<_i161.InternetConnection>(
        () => mAUEngineModule.getInternetConnection());
    gh.lazySingleton<_i680.DeviceInformationHelper>(
        () => _i680.DeviceInformationHelper());
    gh.lazySingleton<_i988.RequestGenerator>(() => _i988.RequestGenerator(
        deviceInformationHelper: gh<_i680.DeviceInformationHelper>()));
    gh.lazySingleton<_i447.AppStorageManager>(
        () => _i1065.StorageManagerImpl());
    gh.lazySingleton<_i436.ApiService>(() => mAUEngineModule.getApiService(
          gh<_i361.Dio>(),
          gh<_i391.AppConfig>(),
        ));
    gh.lazySingleton<_i134.AgentApplicationsRepository>(() =>
        _i782.AgentApplicationsRepositoryImpl(
            apiService: gh<_i436.ApiService>()));
    gh.lazySingleton<_i19.OCRApiRepository>(
        () => _i102.OCRApiRepositoryImpl(apiService: gh<_i436.ApiService>()));
    gh.lazySingleton<_i343.MasterDataRepository>(() =>
        _i189.MasterDataRepositoryImpl(apiService: gh<_i436.ApiService>()));
    gh.lazySingleton<_i730.ViewFileRepository>(
        () => _i164.ViewFileRepositoryImpl(apiService: gh<_i436.ApiService>()));
    gh.lazySingleton<_i471.MPINRepository>(
        () => _i661.MPINRepositoryImpl(apiService: gh<_i436.ApiService>()));
    gh.lazySingleton<_i96.SplashScreenRepository>(() =>
        _i1071.SplashScreenRepositoryImpl(apiService: gh<_i436.ApiService>()));
    gh.lazySingleton<_i269.KycTypesRepository>(
        () => _i297.KycTypesRepositoryImpl(apiService: gh<_i436.ApiService>()));
    gh.lazySingleton<_i384.GeneratePdfRepository>(() =>
        _i645.GeneratePdfRepositoryImpl(apiService: gh<_i436.ApiService>()));
    gh.lazySingleton<_i1.ViewFile>(
        () => _i1.ViewFile(gh<_i730.ViewFileRepository>()));
    gh.lazySingleton<_i583.SaveFileRepository>(
        () => _i994.SaveFileRepositoryImpl(apiService: gh<_i436.ApiService>()));
    gh.lazySingleton<_i279.NetworkInfo>(
        () => _i279.NetworkInfoImpl(gh<_i161.InternetConnection>()));
    gh.lazySingleton<_i459.ScanDocument>(
        () => _i459.ScanDocument(gh<_i19.OCRApiRepository>()));
    gh.lazySingleton<_i714.SaveFile>(
        () => _i714.SaveFile(gh<_i583.SaveFileRepository>()));
    gh.lazySingleton<_i64.ProfileRepository>(
        () => _i72.ProfileRepositoryImpl(apiService: gh<_i436.ApiService>()));
    gh.lazySingleton<_i444.AddCustomerInfoRepository>(
        () => _i919.KycTypesRepositoryImpl(apiService: gh<_i436.ApiService>()));
    gh.lazySingleton<_i757.AuthRepository>(
        () => _i901.AuthRepositoryImpl(apiService: gh<_i436.ApiService>()));
    gh.lazySingleton<_i719.ChangeMPIN>(
        () => _i719.ChangeMPIN(gh<_i757.AuthRepository>()));
    gh.lazySingleton<_i704.RegisterDevice>(
        () => _i704.RegisterDevice(gh<_i757.AuthRepository>()));
    gh.lazySingleton<_i432.ResendOTP>(
        () => _i432.ResendOTP(gh<_i757.AuthRepository>()));
    gh.lazySingleton<_i615.ValidateOTP>(
        () => _i615.ValidateOTP(gh<_i757.AuthRepository>()));
    gh.lazySingleton<_i335.VerifyMobileNumber>(
        () => _i335.VerifyMobileNumber(gh<_i757.AuthRepository>()));
    gh.lazySingleton<_i181.GeneratePdf>(
        () => _i181.GeneratePdf(gh<_i384.GeneratePdfRepository>()));
    gh.lazySingleton<_i97.LoginByFP>(
        () => _i97.LoginByFP(gh<_i471.MPINRepository>()));
    gh.lazySingleton<_i187.LoginByMpin>(
        () => _i187.LoginByMpin(gh<_i471.MPINRepository>()));
    gh.lazySingleton<_i887.SetAgentMPIN>(
        () => _i887.SetAgentMPIN(gh<_i471.MPINRepository>()));
    gh.lazySingleton<_i748.SetFingerPrint>(
        () => _i748.SetFingerPrint(gh<_i471.MPINRepository>()));
    gh.lazySingleton<_i258.VerifyMPIN>(
        () => _i258.VerifyMPIN(gh<_i471.MPINRepository>()));
    gh.lazySingleton<_i501.LaunchDetails>(
        () => _i501.LaunchDetails(gh<_i96.SplashScreenRepository>()));
    gh.lazySingleton<_i721.SaveDocumentInfoRepository>(() =>
        _i198.SaveDocumentInfoRepositoryImpl(
            apiService: gh<_i436.ApiService>()));
    gh.lazySingleton<_i563.SaveSignatureRepository>(() =>
        _i227.SaveSignatureRepositoryImpl(apiService: gh<_i436.ApiService>()));
    gh.lazySingleton<_i137.GetAgentApplications>(() =>
        _i137.GetAgentApplications(gh<_i134.AgentApplicationsRepository>()));
    gh.lazySingleton<_i930.GetKycTypes>(
        () => _i930.GetKycTypes(gh<_i269.KycTypesRepository>()));
    gh.lazySingleton<_i825.GetAdditionalDocumentTypes>(() =>
        _i825.GetAdditionalDocumentTypes(gh<_i343.MasterDataRepository>()));
    gh.lazySingleton<_i375.GetAddressDocumentTypes>(
        () => _i375.GetAddressDocumentTypes(gh<_i343.MasterDataRepository>()));
    gh.lazySingleton<_i154.GetDocumentCategory>(
        () => _i154.GetDocumentCategory(gh<_i343.MasterDataRepository>()));
    gh.lazySingleton<_i412.GetIdentityDocumentTypes>(
        () => _i412.GetIdentityDocumentTypes(gh<_i343.MasterDataRepository>()));
    gh.lazySingleton<_i492.GetMotorInsuranceDocumentTypes>(() =>
        _i492.GetMotorInsuranceDocumentTypes(gh<_i343.MasterDataRepository>()));
    gh.lazySingleton<_i265.GetNonMotorInsuranceDocumentTypes>(() =>
        _i265.GetNonMotorInsuranceDocumentTypes(
            gh<_i343.MasterDataRepository>()));
    gh.lazySingleton<_i895.GetPolicyDocumentTypes>(
        () => _i895.GetPolicyDocumentTypes(gh<_i343.MasterDataRepository>()));
    gh.lazySingleton<_i413.GetPORDocumentTypes>(
        () => _i413.GetPORDocumentTypes(gh<_i343.MasterDataRepository>()));
    gh.lazySingleton<_i952.SaveAdditionalDocuments>(() =>
        _i952.SaveAdditionalDocuments(gh<_i721.SaveDocumentInfoRepository>()));
    gh.lazySingleton<_i64.SaveAddressDetails>(
        () => _i64.SaveAddressDetails(gh<_i721.SaveDocumentInfoRepository>()));
    gh.lazySingleton<_i392.SaveIdentityDetails>(() =>
        _i392.SaveIdentityDetails(gh<_i721.SaveDocumentInfoRepository>()));
    gh.lazySingleton<_i841.SaveMotorInsuranceDocuments>(() =>
        _i841.SaveMotorInsuranceDocuments(
            gh<_i721.SaveDocumentInfoRepository>()));
    gh.lazySingleton<_i307.SaveNonMotorInsuranceDocuments>(() =>
        _i307.SaveNonMotorInsuranceDocuments(
            gh<_i721.SaveDocumentInfoRepository>()));
    gh.lazySingleton<_i258.SavePolicyDocuments>(() =>
        _i258.SavePolicyDocuments(gh<_i721.SaveDocumentInfoRepository>()));
    gh.lazySingleton<_i772.SavePORDocuments>(
        () => _i772.SavePORDocuments(gh<_i721.SaveDocumentInfoRepository>()));
    gh.lazySingleton<_i727.AddCustomerInformation>(() =>
        _i727.AddCustomerInformation(gh<_i444.AddCustomerInfoRepository>()));
    gh.lazySingleton<_i71.SaveSignature>(
        () => _i71.SaveSignature(gh<_i563.SaveSignatureRepository>()));
    gh.lazySingleton<_i653.DeRegisterFingerprint>(
        () => _i653.DeRegisterFingerprint(gh<_i64.ProfileRepository>()));
    gh.lazySingleton<_i647.GetAgentDetails>(
        () => _i647.GetAgentDetails(gh<_i64.ProfileRepository>()));
    gh.lazySingleton<_i131.Logout>(
        () => _i131.Logout(gh<_i64.ProfileRepository>()));
    return this;
  }
}

class _$MAUEngineModule extends _i915.MAUEngineModule {}
