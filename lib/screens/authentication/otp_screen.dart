import 'package:bayam/not_wanted/selecting_user_screen.dart';
import 'package:bayam/screens/profile_creation_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void onVerify(){
    // final validator = _formKey.currentState!.validate();
    // if(validator){
    //
    // }
    // return;
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
      return const ProfileCreationScreen();
    },),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
      ),
      body: Stack(
        children: [
            ClipPath(
              clipper: DiagonalPathClipperOne(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: double.infinity,
                decoration: BoxDecoration(
                 color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                ),
              ),
            ),
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'enter_otp'.tr,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context)
                            .colorScheme
                            .secondary),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      'otp2'.tr,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),
                  Form(
                    key: _formKey,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        OtpField(),
                        OtpField(),
                        OtpField(),
                        OtpField(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  TextButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, child:  Text('change_no'.tr),),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 3,
                          alignment: Alignment.center,
                          backgroundColor: Theme.of(context)
                              .colorScheme
                              .onBackground),
                      onPressed: onVerify,
                      child: Text(
                        'verify'.tr,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .background,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OtpField extends StatelessWidget {
  const OtpField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      width: 65,
      child: TextFormField(
        validator: (value){
          if(value == null || value.trim().isEmpty){
            return '';
          }
          return null;
        },
        onChanged: (value){
          if(value.length == 1){
            FocusScope.of(context).nextFocus();
          }
        },
        textAlign: TextAlign.center,
        decoration:  InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),

          ),
        ),
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
          fontSize: 40,
          color: Theme.of(context).colorScheme.secondary,
        ),
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}

