import 'package:flutter/material.dart';
import 'package:marketplace_client_app/features/account/presentation/data_provider/profile_data_provider.dart';
import 'package:marketplace_client_app/features/account/presentation/pages/update_profile_screen.dart';
import 'package:marketplace_client_app/features/authentification/presentation/pages/login_screen.dart';
import 'package:marketplace_client_app/features/container/presentation/data_provider/container_screen_provider.dart';
import 'package:provider/provider.dart';

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
                  'https://scontent.ftun19-1.fna.fbcdn.net/v/t1.6435-9/43722103_906829279520108_4391705438568054784_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=tLRhDqjy-XcAX9QLK1-&_nc_ht=scontent.ftun19-1.fna&oh=00_AT-F8ZO2c13O7WN2-rFB7aWR3h1o6lmv_J_h4IaANooSPA&oe=62649338'),
              backgroundColor: Theme.of(context).primaryColor,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
              child: Text(
            provider.state.connectedUser?.fullName ?? '',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          )),
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
                        height: 320,
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
                                        fontWeight: FontWeight.w200),
                                  ),
                                  subtitle: Text(
                                      provider.state.connectedUser?.firstName ??
                                          '',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500)),
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
                                        fontWeight: FontWeight.w200),
                                  ),
                                  subtitle: Text(
                                      provider.state.connectedUser?.lastName ??
                                          '',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500)),
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
                                        fontWeight: FontWeight.w200),
                                  ),
                                  subtitle: Text(
                                      provider.state.connectedUser?.email ?? '',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500)),
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
                                    "Phone Number",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w200),
                                  ),
                                  subtitle: Text(
                                      provider.state.connectedUser?.phone ?? '',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500)),
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
                                    "Address",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w200),
                                  ),
                                  subtitle: Text(
                                      provider.state.connectedUser?.address ??
                                          '',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500)),
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
