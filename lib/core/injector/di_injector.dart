import 'package:get_it/get_it.dart';
import 'package:marketplace_client_app/core/injector/api_adapter.dart';
import 'package:marketplace_client_app/features/account/data/repositories/update_account_reposiotry_impl.dart';
import 'package:marketplace_client_app/features/account/domain/repositories/update_account_repository.dart';
import 'package:marketplace_client_app/features/account/domain/usecases/update_account.dart';
import 'package:marketplace_client_app/features/authentification/data/repositories/authenticate_user_repository_impl.dart';
import 'package:marketplace_client_app/features/authentification/domain/repositories/authenticate_user_repository.dart';
import 'package:marketplace_client_app/features/authentification/domain/usecases/authenticate_user.dart';

GetIt injector = GetIt.instance;

initializeInjector() {
  injector.registerSingleton<ApiAdapter>(ApiAdapter());

  ///REPOSITOIES

  injector.registerSingleton<AuthenticateUserRepository>(
    AuthenticateUserRepositoryImpl(
      apiAdapter: injector(),
    ),
  );
  injector.registerSingleton<UpdateAccountRepository>(
    UpdateAccountRepositoryImpl(
      apiAdapter: injector(),
    ),
  );

  ///USE CASES

  injector.registerSingleton<AuthenticateUser>(
    AuthenticateUser(
      repository: injector(),
    ),
  );

  injector.registerSingleton<UpdateAccount>(
    UpdateAccount(
      repository: injector(),
    ),
  );
}
