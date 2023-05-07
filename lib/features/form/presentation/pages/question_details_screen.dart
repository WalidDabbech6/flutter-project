import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:marketplace_client_app/core/usecases/data_response.dart';
import 'package:marketplace_client_app/core/utils/extensions.dart';
import 'package:marketplace_client_app/core/widgets/circular_action.dart';
import 'package:marketplace_client_app/core/widgets/create_new_choice.dart';
import 'package:marketplace_client_app/core/widgets/list_choice_item.dart';
import 'package:marketplace_client_app/features/form/data/models/choice_model.dart';
import 'package:marketplace_client_app/features/form/data/models/question_model.dart';

import 'package:marketplace_client_app/features/form/presentation/data_provider/detail_form_data_provider.dart';
import 'package:marketplace_client_app/features/form/presentation/data_provider/detail_question_data_provider.dart';
import 'package:provider/provider.dart';
import 'package:searchable_listview/searchable_listview.dart';

import '../../../../core/constant/colors.dart';
import '../../../../core/widgets/app_background.dart';
import '../../../../core/widgets/app_bar.dart';
import '../../../../core/widgets/empty_widget.dart';
import '../../../../core/widgets/list_questions_item.dart';
import '../../../../core/widgets/loading_popup.dart';
import '../../../../core/widgets/shimmer_loading.dart';
import '../widgets/dummy_form.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class QuestionDetailsScreen extends StatefulWidget {
  const QuestionDetailsScreen({Key? key}) : super(key: key);

  @override
  State<QuestionDetailsScreen> createState() => _QuestionDetailsScreenState();
}

class _QuestionDetailsScreenState extends State<QuestionDetailsScreen> {
  late DetailQuestionDataProvider dataProvider;
  late DetailFormDataProvider provider;

  @override
  void initState() {
    super.initState();
    dataProvider = Provider.of<DetailQuestionDataProvider>(
      context,
      listen: false,
    );
    provider = Provider.of<DetailFormDataProvider>(context, listen: false);
    provider.initState();
    dataProvider.initState();
    _observeApiResult();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
        child: IconButton(
            onPressed: () async {
              FocusScope.of(context).unfocus();
              CreateNewChoice(
                title: 'Add New Choice',
                message: 'Title',
                onPressed: () async {
                  Navigator.pop(context);
                  await dataProvider.getTitle(context);
                },
                onEdit: dataProvider.setQuestionTitle,
              ).show(context);
            },
            icon: Icon(
              CupertinoIcons.plus,
              color: Theme.of(context).iconTheme.color,
            )),
        onPressed: null,
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(110),
        child: CustomAppBar(
          title: 'Question Details',
          withReturnButton: true,
        ),
      ),
      body: Column(
        children: [
          Expanded(child: Consumer<DetailQuestionDataProvider>(
            builder: (context, dataProvider, child) {
              if (dataProvider.state.listIsLoading) {
                return const ShimmerLoading(
                  child: DummyFormItem(),
                );
              } else {
                if (dataProvider.state.question.toJson().isEmpty) {
                  return EmptyWidget(
                    message: '',
                  );
                } else {
                  return SearchableList<ChoiceModel>(
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
                    asyncListCallback: () async {
                      await Future.delayed(
                        const Duration(
                          milliseconds: 100,
                        ),
                      );
                      return dataProvider.state.listChoices;
                    },
                    asyncListFilter: (q, list) {
                      var lowerCaseQuery = q.toLowerCase();
                      return list
                          .where(
                            (element) =>
                                element.choice
                                    .toLowerCase()
                                    .contains(lowerCaseQuery) ||
                                element.is_answer
                                    .toString()
                                    .toLowerCase()
                                    .contains(lowerCaseQuery),
                          )
                          .toList();
                    },
                    builder: (dynamic choice) {
                      return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          child: InkWell(
                            onTap: () {
                              //_navigateToDetails(form);
                            },
                            child: ListChoiceItem(
                              choice: choice,
                              onDelete: () {
                                dataProvider.deleteSelectedChoice(choice.id);
                                dataProvider.getListQuestionForm();
                                provider.getListQuestionForm();
                                Navigator.pop(context);
                              },
                            ),
                          ));
                    },
                    onRefresh: () async {
                      dataProvider.launchLoading();
                    },
                  );
                }
              }
            },
          )),
        ],
      ),
    );
  }

  _observeApiResult() {
    dataProvider.choiceState.apiStream.stream.listen(
      (result) {
        // FocusScope.of(context).unfocus();
        switch (result.status) {
          case Status.loading:
            LoadingPopup(
              message: 'Updating Account...',
              dismiss: false,
            ).show(context);
            break;
          case Status.offline:
            context.displayOfflineSnackbar();
            break;
          case Status.error:
            Navigator.pop(context);
            context.displayErrorSnackbar(
              message: 'error',
            );
            break;
          case Status.completed:
            dataProvider.getQuestion(result.data!);
            provider.getListQuestionForm();
            dataProvider.getListQuestionForm();
            Navigator.pop(context);
            Navigator.pop(context);
            context.displaySuccessSnackbar(
              message: 'updating account sucess',
            );

            break;
          default:
            break;
        }
      },
    );
  }
}
