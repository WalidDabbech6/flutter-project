import 'package:get_it/get_it.dart';
import 'package:marketplace_client_app/core/injector/api_adapter.dart';
import 'package:marketplace_client_app/features/account/data/repositories/update_account_reposiotry_impl.dart';
import 'package:marketplace_client_app/features/account/domain/repositories/update_account_repository.dart';
import 'package:marketplace_client_app/features/account/domain/usecases/update_account.dart';
import 'package:marketplace_client_app/features/authentification/data/repositories/authenticate_user_repository_impl.dart';
import 'package:marketplace_client_app/features/authentification/domain/repositories/authenticate_user_repository.dart';
import 'package:marketplace_client_app/features/authentification/domain/usecases/authenticate_user.dart';
import 'package:marketplace_client_app/features/form/data/repositories/crate_form_repository_impl.dart';
import 'package:marketplace_client_app/features/form/data/repositories/crate_question_repository_impl.dart';
import 'package:marketplace_client_app/features/form/domain/repositories/create_choice_repository.dart';
import 'package:marketplace_client_app/features/form/domain/repositories/create_form_repository.dart';
import 'package:marketplace_client_app/features/form/domain/repositories/create_question_repository.dart';
import 'package:marketplace_client_app/features/form/domain/usecases/create_choice.dart';
import 'package:marketplace_client_app/features/form/domain/usecases/create_form.dart';
import 'package:marketplace_client_app/features/form/domain/usecases/create_question.dart';
import 'package:marketplace_client_app/features/form/domain/usecases/delete_choice.dart';
import 'package:marketplace_client_app/features/form/domain/usecases/delete_question.dart';
import 'package:marketplace_client_app/features/form/domain/usecases/get_form_questions.dart';
import 'package:marketplace_client_app/features/form/domain/usecases/get_list_forms.dart';
import 'package:marketplace_client_app/features/form/domain/usecases/get_question_details.dart';

import '../../features/form/data/repositories/create_choice_repository_impl.dart';

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

  injector.registerSingleton<CreateFormRepository>(
    CreateFormRepositoryImpl(
      apiAdapter: injector(),
    ),
  );

  injector.registerSingleton<CreateQuestionRepository>(
    CreateQuestionRepositoryImpl(
      apiAdapter: injector(),
    ),
  );

  injector.registerSingleton<CreateChoiceRepository>(
    CreateChoiceRepositoryImpl(
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

  injector.registerSingleton<CreateForm>(
    CreateForm(
      repository: injector(),
    ),
  );

  injector.registerSingleton<GetlistForms>(
    GetlistForms(
      repository: injector(),
    ),
  );

  injector.registerSingleton<GetFormsQuestions>(
    GetFormsQuestions(
      repository: injector(),
    ),
  );
  injector.registerSingleton<DeleteQuestion>(
    DeleteQuestion(
      repository: injector(),
    ),
  );

  injector.registerSingleton<DeleteChoice>(
    DeleteChoice(
      repository: injector(),
    ),
  );

  injector.registerSingleton<CreateQuestion>(
      CreateQuestion(repository: injector()));

  injector.registerSingleton<GetQuestionDetails>(
      GetQuestionDetails(repository: injector()));

  injector
      .registerSingleton<CreateChoice>(CreateChoice(repository: injector()));
}
