import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marketplace_client_app/features/authentification/presentation/pages/login_option1_screen.dart';
import 'package:marketplace_client_app/features/authentification/presentation/pages/login_screen.dart';

class LoginOptionsScreen extends StatefulWidget {
  const LoginOptionsScreen({Key? key}) : super(key: key);

  @override
  State<LoginOptionsScreen> createState() => _LoginOptionsScreenState();
}

class _LoginOptionsScreenState extends State<LoginOptionsScreen> {
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
        title: Text("Sélection type du compte "),
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
                          "Veuillez sélectionner le compte que vous souhaitez créer",
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
                                    const LoginOption1Screen()));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Theme.of(context).iconTheme.color,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Compte utilisateur '),
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
                              Text('Compte Society '),
                              IconButton(
                                  onPressed: () {},
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
