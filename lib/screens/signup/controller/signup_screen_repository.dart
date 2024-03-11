import 'package:bazar_service_lib/bazar_service_lib.dart';

import '../../../util/environment/environment.dart';
import '../../../util/services/user_service/model/user.dart';
import '../../../util/services/user_service/user_service.dart';
import '../model/signup_request_dto.dart';

class SignupScreenRepository {
  final _apiService = Get.find<ApiService>();

  Future<User?> createAccount(SignupRequestDto request) => _apiService
          .request(
        path: '${Environment.config.userPath}/register',
        data: request.toJson(),
        method: HttpMethod.post,
        showLoader: true,
        showError: true,
      )
          .then((response) async {
        if (response?.isOk ?? false) {
          return await Get.find<UserService>().authUserFromResponse(response!);
        }
        return null;
      });
}
