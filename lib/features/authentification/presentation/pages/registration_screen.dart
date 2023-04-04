import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marketplace_client_app/core/utils/Gender.dart';
import 'package:marketplace_client_app/core/widgets/custom_radio.dart';
import 'package:marketplace_client_app/core/widgets/custom_text_field.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  int currentStep = 0;
  List<Gender> genders = [];
  TextEditingController dateinput = TextEditingController();
  final TextEditingController mobile = new TextEditingController();
  final TextEditingController email = new TextEditingController();
  final TextEditingController username = new TextEditingController();
  final TextEditingController firstName = new TextEditingController();
  final TextEditingController lastName = new TextEditingController();
  final TextEditingController job = new TextEditingController();
  final TextEditingController ville = new TextEditingController();
  String _imagepath = '';
  final ImagePicker imgpicker = ImagePicker();
  Future getImage() async {
    try {
      var pickedFile = await imgpicker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        setState(() {
          _imagepath = pickedFile.path;
        });
      } else {
        print("No image is selected.");
      }
    } catch (e) {
      print("error while picking image.");
    }
  }

  @override
  void initState() {
    dateinput.text = "";
    super.initState();
    genders.add(new Gender("Male", MdiIcons.genderMale, false));
    genders.add(new Gender("Female", MdiIcons.genderFemale, false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          title: Text(
        'Registration',
        textAlign: TextAlign.center,
      )),
      body: Theme(
        data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(primary: Color(0xffC782E4))),
        child: Stepper(
          steps: getSteps(),
          type: StepperType.vertical,
          currentStep: currentStep,
          onStepContinue: () {
            final isLastStep = currentStep == getSteps().length - 1;
            if (isLastStep) {
              print('Completed!');
            } else {
              setState(() => currentStep += 1);
            }
          },
          onStepCancel:
              currentStep == 0 ? null : () => setState(() => currentStep -= 1),
          controlsBuilder: (context, details) {
            final isLastStep = currentStep == getSteps().length - 1;
            return Container(
              margin: EdgeInsets.only(top: 50),
              child: Row(
                children: [
                  if (currentStep != 0)
                    Expanded(
                        child: ElevatedButton(
                      child: Text('Back'),
                      onPressed: details.onStepCancel,
                    )),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                      child: ElevatedButton(
                    child: Text(!isLastStep ? 'Next' : 'Confirm'),
                    onPressed: details.onStepContinue,
                  ))
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  List<Step> getSteps() => [
        Step(
            state: currentStep > 0 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 0,
            title: Text('contact'),
            content: Container(
              child: Column(children: [
                SizedBox(
                  width: 282,
                  child: Text(
                    'Please enter your mobile phone & email',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "We'll use your mobile phone and e-mail to send you the activation code for this application",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  hint: 'mobile',
                  controller: mobile,
                  onEdit: (String v) {},
                  error: 'there must be an error',
                  // displayError: provider.state.emailError,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  hint: 'email',
                  controller: email,
                  onEdit: (String v) {},
                  error: 'there must be an error',
                  // displayError: provider.state.emailError,
                ),
              ]),
            )),
        Step(
            state: currentStep > 1 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 1,
            title: Text('Personal Information'),
            content: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 70,
                        backgroundImage: FileImage(File(_imagepath)),
                        backgroundColor: Theme.of(context).iconTheme.color,
                      ),
                      Positioned(
                          bottom: 0,
                          left: 70,
                          child: RawMaterialButton(
                            onPressed: getImage,
                            elevation: 2.0,
                            fillColor: Color(0xFFF5F6F9),
                            child: Icon(
                              Icons.camera_alt_outlined,
                              color: Theme.of(context).iconTheme.color,
                            ),
                            padding: EdgeInsets.all(15.0),
                            shape: CircleBorder(),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hint: 'username',
                    onEdit: (String v) {},
                    error: 'there must be an error',
                    controller: username,
                    // displayError: provider.state.emailError,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hint: 'first name',
                    onEdit: (String v) {},
                    error: 'there must be an error',
                    controller: firstName,
                    // displayError: provider.state.emailError,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hint: 'last name',
                    onEdit: (String v) {},
                    error: 'there must be an error',
                    controller: lastName,
                    // displayError: provider.state.emailError,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: genders.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    genders.forEach(
                                        (gender) => gender.isSelected = false);
                                    genders[index].isSelected = true;
                                  });
                                },
                                child: CustomRadio(genders[index]),
                              );
                            }),
                      )
                    ],
                  )
                ],
              ),
            )),
        Step(
            state: currentStep > 2 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 2,
            title: Text('Complete'),
            content: Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 275,
                    height: 60,
                    child: TextField(
                      controller:
                          dateinput, //editing controller of this TextField
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.calendar_today,
                          color: Theme.of(context).iconTheme.color,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        labelText: 'BirthDate',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).iconTheme.color as Color,
                            width: 3.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      readOnly:
                          true, //set it true, so that user will not able to edit text
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            builder: (context, child) {
                              return Theme(
                                data: ThemeData.light().copyWith(
                                    colorScheme: const ColorScheme.light(
                                        onPrimary:
                                            Colors.white, // selected text color
                                        onSurface: Color(
                                            0xffC782E4), // default text color
                                        primary:
                                            Color(0xffC782E4) // circle color
                                        ),
                                    dialogBackgroundColor: Colors.white,
                                    textButtonTheme: TextButtonThemeData(
                                        style: TextButton.styleFrom(
                                            textStyle: const TextStyle(
                                                color: Color(0xffC782E4),
                                                fontWeight: FontWeight.normal,
                                                fontSize: 12,
                                                fontFamily: 'Quicksand'),
                                            primary: Color(
                                                0xffC782E4), // color of button's letters
                                            backgroundColor: Colors
                                                .white, // Background color
                                            shape: RoundedRectangleBorder(
                                                side: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1,
                                                    style: BorderStyle.solid),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        50))))),
                                child: child!,
                              );
                            },
                            initialDate: DateTime.now(),
                            firstDate: DateTime(
                                1900), //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime.now());

                        if (pickedDate != null) {
                          print(
                              pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                          String formattedDate =
                              DateFormat('yyyy-MM-dd').format(pickedDate);
                          print(
                              formattedDate); //formatted date output using intl package =>  2021-03-16
                          //you can implement different kind of Date Format here according to your requirement

                          setState(() {
                            dateinput.text =
                                formattedDate; //set output date to TextField value.
                          });
                        } else {
                          print("Date is not selected");
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hint: 'Job',
                    onEdit: (String v) {},
                    controller: job,
                    error: 'there must be an error',
                    // displayError: provider.state.emailError,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hint: 'Ville',
                    onEdit: (String v) {},
                    controller: ville,
                    error: 'there must be an error',
                    // displayError: provider.state.emailError,
                  ),
                ],
              ),
            )),
      ];
}
