import 'package:flutter/material.dart';
import 'package:marketplace_client_app/core/usecases/data_response.dart';
import 'package:marketplace_client_app/core/widgets/custom_text_field.dart';
import 'package:marketplace_client_app/core/widgets/loading_popup.dart';
import 'package:marketplace_client_app/core/widgets/popup_confirmation.dart';
import 'package:marketplace_client_app/core/widgets/two_actions_button.dart';
import 'package:marketplace_client_app/features/account/presentation/data_provider/profile_data_provider.dart';
import 'package:marketplace_client_app/features/container/presentation/data_provider/container_screen_provider.dart';
import 'package:marketplace_client_app/core/utils/extensions.dart';

import 'package:provider/provider.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  _UpdateProfileScreenState createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
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
    _observeApiResult();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: Theme.of(context).iconTheme,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                shrinkWrap: false,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 42, top: 80),
                    child: Text(
                      'Edit Profile',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Theme.of(context).iconTheme.color,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: CustomTextField(
                      value: profileDataProvider.state.user.firstName,
                      hint: 'First Name',
                      onEdit: profileDataProvider.updateFirstName,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: CustomTextField(
                        value: profileDataProvider.state.user.lastName,
                        hint: 'Last Name',
                        onEdit: profileDataProvider.updateLastName),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: CustomTextField(
                        value: profileDataProvider.state.user.phone,
                        hint: 'Phone Number',
                        onEdit: profileDataProvider.updatePhone),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: CustomTextField(
                        value: profileDataProvider.state.user.address,
                        hint: 'Adress',
                        onEdit: profileDataProvider.updateAdress),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: CustomTextField(
                        value: profileDataProvider.state.user.email,
                        hint: 'Email',
                        onEdit: profileDataProvider.updateEmail),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Align(
              alignment: Alignment.center,
              child: TwoActionsButton(
                secondaryButtonColor: Theme.of(context).iconTheme.color,
                primaryButtonColor: Theme.of(context).iconTheme.color,
                leftText: 'Cancel',
                rightText: 'Save',
                onLefTtap: () {
                  Navigator.pop(context);
                },
                onRightTap: () async {
                  FocusScope.of(context).unfocus();
                  PopupConfirmation(
                    title: 'Confirmation',
                    message: 'Some Text',
                    onPressed: () async {
                      Navigator.pop(context);
                      await profileDataProvider.verifyPassword(context);
                    },
                    onEdit: profileDataProvider.setPassword,
                  ).show(context);
                },
              ),
            )
          ],
        ));
  }

  _observeApiResult() {
    profileDataProvider.state.apiStream.stream.listen(
      (result) {
        // FocusScope.of(context).unfocus();
        switch (result.status) {
          case Status.loading:
            LoadingPopup(
              message: 'Updating Account...',
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
            provider.initState(result.data!);
            Navigator.pop(context);
            context.displaySuccessSnackbar(
              message: 'updating account sucess',
            );
            Navigator.pop(context);
            break;
          default:
            break;
        }
      },
    );
  }
}
