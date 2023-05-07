import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketplace_client_app/features/form/data/models/question_model.dart';
import 'package:provider/provider.dart';
import 'package:marketplace_client_app/core/constant/colors.dart';

import 'circular_action.dart';

class ListQuestionsItem extends StatelessWidget {
  final QuestionModel question;

  const ListQuestionsItem({
    Key? key,
    required this.question,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).primaryColor,
      ),
      width: MediaQuery.of(context).size.width * 0.6,
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
                    question.title,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    question.Score.toString(),
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
                        onPress: () {},
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
