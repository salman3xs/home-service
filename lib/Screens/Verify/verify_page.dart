import 'package:flutter/material.dart';
import 'package:home_service/Screens/AddNewAddress/add_new_address.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,backgroundColor: Colors.white,leading: IconButton(onPressed: (){Navigator.of(context).pop();},icon: const Icon(Icons.arrow_back,color: Colors.black,),),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/images/verify.png',height: 187,width: 166,),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'OTP Verification',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Enter the OTP sent to ',
                  style: TextStyle(fontSize: 15, color: Colors.grey,fontWeight: FontWeight.w300),
                ),
                Text(
                  '+19879879875',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
              ],
            ),
          ),
          OTPTextField(
            length: 4,
            width: MediaQuery.of(context).size.width,
            fieldWidth: 50,
            style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600
            ),
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldStyle: FieldStyle.underline,
            onCompleted: (pin) {
              print("Completed: " + pin);
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('OTP not received?',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w300, fontSize: 15),),
              TextButton(onPressed: (){}, child: const Text('RESEND OTP',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),)),
            ],
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const AddAddressPage()));
            },
            child: const Text(
              'VERIFY & PROCEED',
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
        ],
      ),
    );
  }
}
