import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketplace_client_app/features/form/presentation/pages/form_results_screen.dart';
import 'package:provider/provider.dart';
import 'package:marketplace_client_app/core/constant/colors.dart';

import '../../features/form/data/models/form_model.dart';
import '../../features/form/presentation/data_provider/responses_form_data_provider.dart';
import 'circular_action.dart';

class ListFormItem extends StatefulWidget {
  final FormModel form;

  const ListFormItem({
    Key? key,
    required this.form,
  }) : super(key: key);

  @override
  State<ListFormItem> createState() => _ListFormItemState();
}

class _ListFormItemState extends State<ListFormItem> {
  late ResponsesFormDataProvider dataProvider;
  @override
  void initState() {
    super.initState();
    dataProvider = Provider.of<ResponsesFormDataProvider>(
      context,
      listen: false,
    );
    // dataProvider.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).primaryColor,
      ),
      width: MediaQuery.of(context).size.width * 0.7,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.form.title,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.form.description,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircularAction(
                        backgroundColor: blueColor.withOpacity(0.2),
                        icon: CupertinoIcons.eye,
                        iconColor: blueColor,
                        onPress: () {
                          dataProvider.setFormCode(widget.form.code);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const FromResultsScreen(),
                              ));
                        },
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      CircularAction(
                        backgroundColor:
                            orderNonDeliveredColor.withOpacity(0.2),
                        icon: CupertinoIcons.delete,
                        iconColor: orderNonDeliveredColor,
                        onPress: () {},
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
