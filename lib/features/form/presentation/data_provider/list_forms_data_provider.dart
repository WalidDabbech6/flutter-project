import 'package:flutter/cupertino.dart';
import 'package:marketplace_client_app/core/usecases/usecase.dart';
import 'package:marketplace_client_app/features/form/data/models/form_model.dart';
import 'package:marketplace_client_app/features/form/presentation/data_provider/list_forms_state.dart';
import 'package:collection/collection.dart';

import '../../../../core/usecases/data_response.dart';
import '../../domain/usecases/get_list_forms.dart';

class ListFormsDataProvider extends ChangeNotifier {
  GetlistForms getListFormsUseCase;

  ListFormsDataProvider({
    required this.getListFormsUseCase,
  });

  ListFormsState state = ListFormsState();

  initState() {
    state =
        ListFormsState(listIsLoading: true, listForms: [], mapListForms: {});
    getListOrders();
  }

  void launchLoading() {
    state = ListFormsState(
      listIsLoading: true,
    );
    notifyListeners();
  }

  Future<void> getListOrders() async {
    var result = await getListFormsUseCase.call(NoParams());
    switch (result.status) {
      case Status.completed:
        state = state.copyWith(
            listForms: result.data!.results,
            listIsLoading: false,
            mapListForms: result.data!.results
                .groupListsBy((e) => e.categoryTitle)
                .map((key, value) => MapEntry(key!, value)));
        notifyListeners();
        break;
      default:
        state = state.copyWith(
          listForms: [],
          listIsLoading: false,
        );
        notifyListeners();
        break;
    }
  }

  List<FormModel> updateFiltredList(String query) {
    var lowerCaseQuery = query.toLowerCase();
    return state.listForms
        .where(
          (element) =>
              element.title.toLowerCase().contains(lowerCaseQuery) ||
              element.code.toLowerCase().contains(lowerCaseQuery),
        )
        .toList();
  }
}
