import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marketplace_client_app/features/authentification/presentation/pages/login_screen.dart';
import 'package:marketplace_client_app/features/authentification/presentation/pages/registration_screen.dart';

class LoginOption1Screen extends StatefulWidget {
  const LoginOption1Screen({Key? key}) : super(key: key);

  @override
  State<LoginOption1Screen> createState() => _LoginOption1ScreenState();
}

class _LoginOption1ScreenState extends State<LoginOption1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Choose"),
        actions: [
          Icon(Icons.question_mark_rounded),
        ],
        iconTheme: Theme.of(context).iconTheme,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              child: Container(
                  child: Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 283,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 60),
                        child: Text(
                          "Please select the account you wish to access.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'INTER'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: SizedBox(
                        width: 310,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const RegistrationScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Theme.of(context).iconTheme.color,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('creer compte '),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_circle_right))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 25,
                      ),
                      child: SizedBox(
                        width: 310,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Theme.of(context).iconTheme.color,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('connecter'),
                              IconButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginScreen()));
                                  },
                                  icon: Icon(Icons.arrow_circle_right))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
