import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:home_service/Screens/Login/login_page.dart';
import 'package:home_service/Screens/Verify/verify_page.dart';

final TextEditingController phoneController = TextEditingController();

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 489,
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      height: 489,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/Frame.png',
                          ),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    color: const Color.fromRGBO(181, 217, 251, 1),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Your Home Service Expert',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Continue with Phone Number',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              height: 63,
              width:325,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: const Color.fromRGBO(242, 243, 247, 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CountryPickerDropdown(
                    initialValue: 'US',
                    itemBuilder: _buildDropdownItem,
                    sortComparator: (Country a, Country b) =>
                        a.isoCode.compareTo(b.isoCode),
                    onValuePicked: (Country country) {
                      print("${country.name}");
                    },
                  ),
                  SizedBox(
                      width: 150,
                      child: InputBar(
                          controller: phoneController,
                          hint: 'Enter Mobile Number')),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const VerifyPage()));
              },
              child: const Text(
                'SIGN UP',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(const Size(322, 63)),
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ))),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'VIEW OTHER OPTION',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'ALREADY HAVE AN ACCOUNT?',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const LogInPage()));
                    },
                    child: const Text(
                      'LOG IN',
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildDropdownItem(Country country) => Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Text("+${country.phoneCode}(${country.isoCode})"),
        ],
      );
}

class InputBar extends StatelessWidget {
  const InputBar({
    Key? key,
    required this.controller,
    required this.hint,
  }) : super(key: key);
  final String hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.phone,
      controller: controller,
      decoration: InputDecoration(
        hintStyle: const TextStyle(
            color: Color.fromRGBO(49, 55, 58, 1),
            fontWeight: FontWeight.w400,
            fontSize: 15),
        hintText: hint,
      ),
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Please Fill';
        }
        return null;
      },
    );
  }
}
