import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_service/Screens/Login/login_page.dart';
import 'package:home_service/Screens/SIgnup/background.dart';
import 'package:home_service/Screens/Verify/verify_page.dart';

final TextEditingController phoneController = TextEditingController();

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 480,
            child: Stack(
              children: [
                const BackGround(),
                Center(
                  child: Image.asset(
                    'assets/images/Group 3.png',
                    height: 242,
                    width: 333,
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Your Home Service Expert',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Continue with Phone Number',
              style: TextStyle(fontSize: 22, color: Colors.grey),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
              color: const Color.fromRGBO(242, 243, 247, 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: CountryPickerDropdown(
                    initialValue: 'US',
                    itemBuilder: _buildDropdownItem,
                    sortComparator: (Country a, Country b) =>
                        a.isoCode.compareTo(b.isoCode),
                    onValuePicked: (Country country) {
                      print("${country.name}");
                    },
                  ),
                ),
                SizedBox(
                    width: 200,
                    child: InputBar(
                        controller: phoneController,
                        hint: 'Enter Mobile Number')),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const VerifyPage()));
            },
            child: const Text(
              'SIGN UP',
              style: TextStyle(color: Colors.white,fontSize: 18),
            ),
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(Size(322,63)),
                backgroundColor: MaterialStateProperty.all(Colors.black),
                shape :MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    )
                )
            ),
          ),
          TextButton(onPressed: (){}, child: Text('VIEW OTHER OPTION')),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('ALREADY HAVE AN ACCOUNT?',style: TextStyle(color: Colors.grey),),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const LogInPage()));
              }, child: Text('LOG IN')),
            ],
          )
        ],
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
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextFormField(
        keyboardType: TextInputType.phone,
        controller: controller,
        decoration: InputDecoration(
          hintStyle: const TextStyle(color: Colors.grey),
          hintText: hint,
        ),
        validator: (String? value) {
          if (value!.isEmpty) {
            return 'Please Fill';
          }
          return null;
        },
      ),
    );
  }
}
