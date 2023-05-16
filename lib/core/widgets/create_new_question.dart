import 'package:flutter/material.dart';
import 'package:marketplace_client_app/core/usecases/data_response.dart';
import 'package:marketplace_client_app/core/utils/extensions.dart';
import 'package:marketplace_client_app/core/widgets/custom_text_field.dart';
import 'package:marketplace_client_app/core/widgets/loading_popup.dart';
import 'package:marketplace_client_app/features/form/presentation/data_provider/detail_form_data_provider.dart';
import 'package:provider/provider.dart';

import 'category_drop_down.dart';

class CreateNewQuestion extends StatefulWidget {
  const CreateNewQuestion({
    Key? key,
    required this.message,
    required this.title,
    this.dismiss = true,
    required this.onPressed,
    required this.onEdit,
  }) : super(key: key);

  final String message;
  final String title;
  final bool dismiss;
  final Function() onPressed;

  final Function(String) onEdit;

  @override
  State<CreateNewQuestion> createState() => _CreateNewQuestionState();
  show(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: this.dismiss,
      builder: (context) => AlertDialog(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        content: this,
      ),
    );
  }
}

class _CreateNewQuestionState extends State<CreateNewQuestion> {
  late DetailFormDataProvider provider;
  @override
  void initState() {
    super.initState();
    provider = Provider.of<DetailFormDataProvider>(
      context,
      listen: false,
    );
    provider.initState();
    _observeApiResult();
    _observeSubmitFormApiResult();
  }

  var _checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(widget.title, style: Theme.of(context).textTheme.headline6!),
            const SizedBox(
              height: 23,
            ),
            Text(
              widget.message,
              style: const TextStyle(fontSize: 12),
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'title',
              onEdit: widget.onEdit,
            ),
            Row(
              children: [
                Text('isRequired'),
                Checkbox(value: _checkBoxValue, onChanged: callback),
              ],
            ),
            const SizedBox(
              height: 23,
            ),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).iconTheme.color),
                child: Text('Confirm'),
                onPressed: widget.onPressed,
              ),
            )
          ],
        ),
      ),
    );
  }

  void callback(bool? value) {
    setState(() {
      _checkBoxValue = !_checkBoxValue;
    });
    provider.setIsmanadatory(value);
  }

  _observeApiResult() {
    provider.questionState.apiStream.stream.listen(
      (result) {
        // FocusScope.of(context).unfocus();
        switch (result.status) {
          case Status.loading:
            LoadingPopup(
              message: 'Creating Question...',
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
            provider.getForm(result.data!);
            provider.getListQuestionForm();
            Navigator.pop(context);
            Navigator.pop(context);

            context.displaySuccessSnackbar(
              message: 'question created sucessfully',
            );
            break;
          default:
            break;
        }
      },
    );
  }

  _observeSubmitFormApiResult() {
    provider.submitFormState.apiStream.stream.listen(
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
            provider.getForm(result.data!);
            provider.getListQuestionForm();
            Navigator.pop(context);
            context.displaySuccessSnackbar(
              message: provider.state.form.confirmation_message,
            );
            break;
          default:
            break;
        }
      },
    );
  }
}
