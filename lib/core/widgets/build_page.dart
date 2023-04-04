import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget buildPage({
  required Color color,
  required String urlImage,
  required String title,
  required String subtitle,
  required BuildContext context,
}) =>
    Container(
      color: color,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SvgPicture.asset(
            urlImage,
            fit: BoxFit.contain,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        const SizedBox(
          height: 64,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Text(
            subtitle,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
          ),
        ),
      ]),
    );
