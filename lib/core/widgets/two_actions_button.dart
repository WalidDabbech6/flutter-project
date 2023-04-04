import 'package:flutter/material.dart';

class TwoActionsButton extends StatelessWidget {
  final String leftText;
  final String rightText;
  final Function() onLefTtap;
  final Function() onRightTap;

  final Color? secondaryButtonColor;
  final Color? secondayButtonTextColor;
  final Color? primaryButtonColor;
  final Color? primaryButtonTextColor;

  const TwoActionsButton({
    Key? key,
    required this.leftText,
    required this.rightText,
    required this.onLefTtap,
    required this.onRightTap,
    this.secondaryButtonColor,
    this.secondayButtonTextColor,
    this.primaryButtonColor,
    this.primaryButtonTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: InkWell(
                onTap: onLefTtap,
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    color:
                        secondaryButtonColor ?? Theme.of(context).primaryColor,
                  ),
                  child: Center(
                    child: Text(
                      leftText,
                      style: TextStyle(
                        color: secondayButtonTextColor ??
                            Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const VerticalDivider(
              width: 1,
              color: Colors.white,
            ),
            Expanded(
              child: InkWell(
                onTap: onRightTap,
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    color: primaryButtonColor ?? Theme.of(context).primaryColor,
                  ),
                  child: Center(
                    child: Text(
                      rightText,
                      style: TextStyle(
                        color: primaryButtonTextColor ??
                            Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
