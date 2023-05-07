import 'package:flutter/material.dart';
import 'package:marketplace_client_app/features/form/data/models/form_model.dart';
import 'package:marketplace_client_app/features/form/presentation/data_provider/detail_form_data_provider.dart';
import 'package:marketplace_client_app/features/form/presentation/data_provider/list_forms_data_provider.dart';
import 'package:marketplace_client_app/features/form/presentation/pages/form_details_screen.dart';
import 'package:marketplace_client_app/features/form/presentation/widgets/dummy_form.dart';
import 'package:provider/provider.dart';
import 'package:searchable_listview/searchable_listview.dart';
import 'package:collection/collection.dart';

import '../../../../core/widgets/empty_widget.dart';
import '../../../../core/widgets/list_forms_item.dart';
import '../../../../core/widgets/shimmer_loading.dart';
import '../data_provider/detail_form_state.dart';

class ListFormsScreen extends StatefulWidget {
  const ListFormsScreen({Key? key}) : super(key: key);
  @override
  _ListFormsScreenState createState() => _ListFormsScreenState();
}

class _ListFormsScreenState extends State<ListFormsScreen> {
  late ListFormsDataProvider dataProvider;
  @override
  void initState() {
    super.initState();
    dataProvider = Provider.of<ListFormsDataProvider>(
      context,
      listen: false,
    );
    dataProvider.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Consumer<ListFormsDataProvider>(
          builder: (context, dataProvider, child) {
            if (dataProvider.state.listIsLoading) {
              return const ShimmerLoading(
                child: DummyFormItem(),
              );
            } else {
              if (dataProvider.state.listForms.isEmpty) {
                return EmptyWidget(
                  message: '',
                );
              } else {
                return SearchableList<FormModel>.expansion(
                  expansionTitleBuilder: (p0) {
                    return Container(
                      color: Theme.of(context).primaryColor,
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 40,
                      child: Center(
                        child: Text(p0.toString()),
                      ),
                    );
                  },
                  filterExpansionData: (p0) {
                    var lowerCaseQuery = p0.toLowerCase();
                    final filteredMap = {
                      for (final entry
                          in dataProvider.state.mapListForms.entries)
                        entry.key:
                            (dataProvider.state.mapListForms[entry.key] ?? [])
                                .where((element) =>
                                    element.title
                                        .toLowerCase()
                                        .contains(lowerCaseQuery) ||
                                    element.categoryTitle!
                                        .toLowerCase()
                                        .contains(lowerCaseQuery))
                                .toList()
                    };
                    print(filteredMap);
                    filteredMap.removeWhere((key, value) => value.length == 0);
                    return filteredMap;
                  },
                  expansionListData: dataProvider.state.mapListForms,
                  inputDecoration: InputDecoration(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.8,
                    ),
                    filled: true,
                    fillColor: Theme.of(context).primaryColor,
                    hintText: "search",
                  ),
                  style: const TextStyle(fontSize: 25),
                  emptyWidget: EmptyWidget(message: "No Items Found"),
                  // asyncListCallback: () async {
                  //   await Future.delayed(
                  //     const Duration(
                  //       milliseconds: 100,
                  //     ),
                  //   );
                  //   return dataProvider.state.listForms;
                  // },
                  // asyncListFilter: (q, list) {
                  //   var lowerCaseQuery = q.toLowerCase();
                  //   return list
                  //       .where(
                  //         (element) =>
                  //             element.title
                  //                 .toLowerCase()
                  //                 .contains(lowerCaseQuery) ||
                  //             element.code
                  //                 .toLowerCase()
                  //                 .contains(lowerCaseQuery),
                  //       )
                  //       .toList();
                  // },
                  builder: (dynamic form) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      child: InkWell(
                        onTap: () {
                          _navigateToDetails(form);
                        },
                        child: ListFormItem(
                          form: form,
                        ),
                      ),
                    );
                  },

                  // onRefresh: () async {
                  //   dataProvider.launchLoading();
                  //   dataProvider.getListOrders();
                  // },
                );
              }
            }
          },
        )),
      ],
    );
  }

  _navigateToDetails(form) {
    Provider.of<DetailFormDataProvider>(context, listen: false).state =
        DetailFormState(
      form: form,
    );
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const FormDetailScreen(),
      ),
    );
  }
}
