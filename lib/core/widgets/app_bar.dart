import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketplace_client_app/core/utils/extensions.dart';
import 'package:marketplace_client_app/features/container/presentation/data_provider/container_screen_provider.dart';
import 'package:provider/provider.dart';

import '../constant/colors.dart';
import '../usecases/data_response.dart';

class CustomAppBar extends StatefulWidget {
  final bool withReturnButton;
  final String title;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.withReturnButton = false,
  }) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            widget.withReturnButton
                ? Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            CupertinoIcons.back,
                            size: 15,
                          ),
                        ),
                        Text(
                          widget.title,
                          style: Theme.of(context).textTheme.headline6,
                        )
                      ],
                    ),
                  )
                : Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Assets.logos.logoTorkInApp.image(
                        //   width: 70,
                        // ),
                        Text(
                          widget.title,
                          style: Theme.of(context).textTheme.headline6,
                        )
                      ],
                    ),
                  ),
            Consumer<ContainerScreenProvider>(
              builder: (context, dataProvider, child) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                );
              },
            )
          ],
        ),
      ),
      color: Theme.of(context).primaryColor,
    );
  }
}
