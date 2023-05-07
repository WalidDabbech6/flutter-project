import 'package:flutter/material.dart';
import 'package:marketplace_client_app/features/account/presentation/data_provider/profile_data_provider.dart';
import 'package:marketplace_client_app/features/account/presentation/pages/update_profile_screen.dart';
import 'package:marketplace_client_app/features/authentification/presentation/pages/login_screen.dart';
import 'package:marketplace_client_app/features/container/presentation/data_provider/container_screen_provider.dart';
import 'package:provider/provider.dart';

extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool edit = false;
  late ContainerScreenProvider provider;
  late ProfileDataProvider profileDataProvider;

  @override
  void initState() {
    super.initState();
    provider = Provider.of<ContainerScreenProvider>(
      context,
      listen: false,
    );
    profileDataProvider = Provider.of<ProfileDataProvider>(
      context,
      listen: false,
    );
    profileDataProvider.initState(provider.state.connectedUser!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          Container(
            width: 125,
            height: 125,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'http://192.168.1.14:8000/users/2/profile_photo.ico'),
              backgroundColor: Theme.of(context).primaryColor,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                provider.state.connectedUser?.profile.first_name
                        .toCapitalized() ??
                    "",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                provider.state.connectedUser?.profile.last_name
                        .toCapitalized() ??
                    "",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ]),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: Container(
                color: Theme.of(context).primaryColor,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.00,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Container(
                          color: Theme.of(context).primaryColor,
                          child: ListTile(
                            title: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                "Your Profile",
                                style: TextStyle(
                                    color: Theme.of(context).iconTheme.color,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: IconButton(
                                  color: Theme.of(context).iconTheme.color,
                                  icon: Icon(
                                    Icons.edit,
                                    size: 24,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const UpdateProfileScreen()),
                                    ).then((value) => setState(() {}));
                                  }),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      color: Theme.of(context).cardColor,
                      thickness: 1.2,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: SizedBox(
                        height: 280,
                        child: ListView(
                          shrinkWrap: true,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              child: Container(
                                width: 275,
                                height: 65,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                                child: ListTile(
                                  title: Text(
                                    "First Name",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  subtitle: Text(
                                      provider.state.connectedUser?.profile
                                              .first_name
                                              .toCapitalized() ??
                                          '',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              child: Container(
                                width: 275,
                                height: 65,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                                child: ListTile(
                                  title: Text(
                                    "Last Name",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  subtitle: Text(
                                      provider.state.connectedUser?.profile
                                              .last_name
                                              .toCapitalized() ??
                                          '',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              child: Container(
                                width: 275,
                                height: 65,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                                child: ListTile(
                                  title: Text(
                                    "Email",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  subtitle: Text(
                                      provider.state.connectedUser?.email ?? '',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              child: Container(
                                width: 275,
                                height: 65,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                                child: ListTile(
                                  title: Text(
                                    "Job",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  subtitle: Text(
                                      provider.state.connectedUser?.profile
                                              .job ??
                                          '',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              child: Container(
                                width: 275,
                                height: 65,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                                child: ListTile(
                                  title: Text(
                                    "Ville",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  subtitle: Text(
                                      provider.state.connectedUser?.profile
                                              .ville ??
                                          '',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.center,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                      width: 1.5,
                      color: Theme.of(context)
                          .colorScheme
                          .onBackground
                          .withOpacity(0.5)),
                ),
                onPressed: _displayConfirmation,
                child: Text("Logout",
                    style: TextStyle(
                        color: Theme.of(context).iconTheme.color,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _displayConfirmation() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Logout'),
        content: Text('You sure wanna logout ?'),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Cancel',
                style: TextStyle(color: Theme.of(context).primaryColor),
              )),
          TextButton(
            onPressed: () {
              profileDataProvider.logout().whenComplete(() {
                Navigator.pop(context);
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              });
            },
            child: Text(
              'Logout',
              style: TextStyle(color: Theme.of(context).iconTheme.color),
            ),
          ),
        ],
      ),
    );
  }
}
