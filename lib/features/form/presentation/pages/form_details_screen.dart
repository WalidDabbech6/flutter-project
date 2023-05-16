import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:marketplace_client_app/core/usecases/data_response.dart';
import 'package:marketplace_client_app/core/utils/extensions.dart';
import 'package:marketplace_client_app/core/widgets/circular_action.dart';
import 'package:marketplace_client_app/core/widgets/create_new_question.dart';
import 'package:marketplace_client_app/features/form/data/models/question_model.dart';
import 'package:marketplace_client_app/features/form/domain/usecases/create_question.dart';

import 'package:marketplace_client_app/features/form/presentation/data_provider/detail_form_data_provider.dart';
import 'package:marketplace_client_app/features/form/presentation/data_provider/detail_question_data_provider.dart';
import 'package:marketplace_client_app/features/form/presentation/data_provider/detail_question_state.dart';
import 'package:marketplace_client_app/features/form/presentation/pages/question_details_screen.dart';
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

class FormDetailScreen extends StatefulWidget {
  const FormDetailScreen({Key? key}) : super(key: key);

  @override
  State<FormDetailScreen> createState() => _FormDetailScreenState();
}

class _FormDetailScreenState extends State<FormDetailScreen> {
  late DetailFormDataProvider dataProvider;
  @override
  void initState() {
    super.initState();
    dataProvider = Provider.of<DetailFormDataProvider>(
      context,
      listen: false,
    );
    dataProvider.initState();
    _observeSubmitFormApiResult();
  }

  final _formKey = GlobalKey<FormBuilderState>();
  void _onChanged(dynamic val) => debugPrint(val.toString());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Row(
        children: [
          Expanded(
              child: ElevatedButton(
                  onPressed: null,
                  child: TextButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        dataProvider.setForm(_formKey.currentState!.value);
                        await dataProvider.onSubmitForm();
                        FocusScope.of(context).unfocus();
                      }
                    },
                    child: Text("Submit"),
                  )))
        ],
      ),
      floatingActionButton: ElevatedButton(
        child: IconButton(
            onPressed: () async {
              FocusScope.of(context).unfocus();
              CreateNewQuestion(
                title: 'Add New Choice',
                message: 'Title',
                onPressed: () async {
                  dataProvider.onSubmitPressed();
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
      backgroundColor:
          Color(int.parse(dataProvider.state.form.background_color)),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(110),
        child: CustomAppBar(
          title: 'Form Details',
          withReturnButton: true,
        ),
      ),
      body: Column(children: [
        Align(
            alignment: Alignment.center,
            child: Text(
              dataProvider.state.form.title,
              style: TextStyle(
                  color: Color(int.parse(dataProvider.state.form.text_color)),
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            )),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                dataProvider.state.form.description,
                style: TextStyle(
                    color: Color(int.parse(dataProvider.state.form.text_color)),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              )),
        ),
        Expanded(child: Consumer<DetailFormDataProvider>(
          builder: (context, dataProvider, child) {
            if (dataProvider.state.listIsLoading) {
              return const ShimmerLoading(
                child: DummyFormItem(),
              );
            } else {
              if (dataProvider.state.listQuestion.isEmpty) {
                return EmptyWidget(
                  message: '',
                );
              } else {
                return SingleChildScrollView(
                    child: Column(children: <Widget>[
                  FormBuilder(
                      key: _formKey,
                      // enabled: false,
                      onChanged: () {
                        _formKey.currentState!.save();
                        debugPrint(_formKey.currentState!.value.toString());
                      },
                      autovalidateMode: AutovalidateMode.disabled,
                      skipDisabled: true,
                      child: Column(children: <Widget>[
                        const SizedBox(height: 15),
                        Column(
                          children: dataProvider.state.listQuestion
                              .map((q) => q.type.contains('multiple choice')
                                  ? Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.8,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 4),
                                            child: FormBuilderCheckboxGroup<
                                                String>(
                                              autovalidateMode: AutovalidateMode
                                                  .onUserInteraction,
                                              decoration: InputDecoration(
                                                  labelText: q.title),
                                              name: q.id_question.toString(),
                                              // initialValue: const ['Dart'],
                                              options: q.choices
                                                  .map(
                                                    (e) =>
                                                        FormBuilderFieldOption(
                                                            child:
                                                                Text(e.choice),
                                                            value: e.choice
                                                                .toString()),
                                                  )
                                                  .toList(),
                                              onChanged: _onChanged,
                                              separator: const VerticalDivider(
                                                width: 10,
                                                thickness: 5,
                                                color: Colors.red,
                                              ),
                                              validator: FormBuilderValidators
                                                  .compose([
                                                FormBuilderValidators.minLength(
                                                    1)
                                              ]),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            CircularAction(
                                              backgroundColor:
                                                  blueColor.withOpacity(0.2),
                                              icon: CupertinoIcons.pen,
                                              iconColor: blueColor,
                                              onPress: () {
                                                _navigateToDetails(q);
                                              },
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            CircularAction(
                                              backgroundColor:
                                                  orderNonDeliveredColor
                                                      .withOpacity(0.2),
                                              icon: CupertinoIcons.delete,
                                              iconColor: orderNonDeliveredColor,
                                              onPress: () {
                                                dataProvider
                                                    .deleteSelectedQuestion(
                                                        q.id_question);
                                              },
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  : q.type.contains("simple question")
                                      ? Row(
                                          children: [
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.8,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 4),
                                                child: FormBuilderTextField(
                                                  name:
                                                      q.id_question.toString(),
                                                  decoration: InputDecoration(
                                                      label: Text(q.title)),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                CircularAction(
                                                  backgroundColor: blueColor
                                                      .withOpacity(0.2),
                                                  icon: CupertinoIcons.pen,
                                                  iconColor: blueColor,
                                                  onPress: () {},
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                CircularAction(
                                                  backgroundColor:
                                                      orderNonDeliveredColor
                                                          .withOpacity(0.2),
                                                  icon: CupertinoIcons.delete,
                                                  iconColor:
                                                      orderNonDeliveredColor,
                                                  onPress: () {},
                                                )
                                              ],
                                            )
                                          ],
                                        )
                                      : Text("Hello"))
                              .toList(),
                        ),
                      ]))
                ]));
              }
            }
          },
        ))
      ]),
    );
  }

  _navigateToDetails(question) {
    Provider.of<DetailQuestionDataProvider>(context, listen: false).state =
        DetailQuestionState(
      question: question,
    );
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const QuestionDetailsScreen(),
      ),
    );
  }

  _observeSubmitFormApiResult() {
    dataProvider.submitFormState.apiStream.stream.listen(
      (result) {
        switch (result.status) {
          case Status.loading:
            LoadingPopup(
              message: 'Submitting Form...',
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
            dataProvider.getForm(result.data!);
            dataProvider.getListQuestionForm();
            Navigator.pop(context);
            Navigator.pop(context);
            context.displaySuccessSnackbar(
              message: dataProvider.state.form.confirmation_message,
            );

            break;
          default:
            break;
        }
      },
    );
  }
}
