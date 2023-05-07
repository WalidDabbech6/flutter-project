import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marketplace_client_app/features/container/presentation/data_provider/container_screen_provider.dart';
import 'package:provider/provider.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({Key? key}) : super(key: key);

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

var _dropDownValue;

class _CustomDropDownState extends State<CustomDropDown> {
  late ContainerScreenProvider provider;
  @override
  void initState() {
    super.initState();
    provider = Provider.of<ContainerScreenProvider>(
      context,
      listen: false,
    );
    provider.initState(provider.state.connectedUser!.profile);
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: [
        DropdownMenuItem(child: Text('Sport'), value: 1),
        DropdownMenuItem(child: Text('Politique'), value: 2)
      ],
      isExpanded: true,
      value: _dropDownValue,
      onChanged: dropdownCallback,
    );
  }

  void dropdownCallback(Object? selectedValue) {
    if (selectedValue is int) {
      print(selectedValue);
      setState(() {
        _dropDownValue = selectedValue;
      });
      provider.setFormCategory(_dropDownValue);
    }
  }
}
