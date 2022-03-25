import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final TextEditingController phoneController = TextEditingController();

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,backgroundColor: Colors.white,leading: IconButton(onPressed: (){Navigator.of(context).pop();},icon: const Icon(Icons.arrow_back,color: Colors.black,),),),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Welcome Back!',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28),
              ),
            ),
            const SizedBox(height: 61,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    FaIcon(FontAwesomeIcons.facebook,size: 30,),
                    Text(
                      'CONTINUE WITH FACEBOOK',
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                  ],
                ),
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(const Size(322,63)),
                    backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(117, 131, 202, 1)),
                    shape :MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        )
                    )
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    FaIcon(FontAwesomeIcons.google,size: 30,color: Colors.blue,),
                    Text(
                      'CONTINUE WITH GOOGLE',
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                  ],
                ),
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(const Size(322,63)),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape :MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        )
                    )
                ),
              ),
            ),
            const SizedBox(height: 62,),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'OR CONTINUE WITH PHONE NUMBER',
                style: TextStyle(fontSize: 14, color: Colors.grey,fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
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
            ),
            const SizedBox(height: 20,),
            TextButton(
              onPressed: () {},
              child: const Text(
                'LOG IN',
                style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w500),
              ),
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(const Size(322,63)),
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  shape :MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      )
                  )
              ),
            ),
            const SizedBox(height: 20,),
            TextButton(onPressed: (){}, child: const Text('Forgot Password?',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600, fontSize: 14),)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('DONT HAVE AN ACCOUNT?',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500, fontSize: 14),),
                TextButton(onPressed: (){}, child: const Text('SIGN UP',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),)),
              ],
            ),
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
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextFormField(
        keyboardType: TextInputType.phone,
        controller: controller,
        decoration: InputDecoration(
          hintStyle: const TextStyle(color: Colors.grey,fontWeight: FontWeight.w400, fontSize: 15),
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
