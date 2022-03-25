import 'package:flutter/material.dart';
import 'package:home_service/Screens/Home/homepage.dart';

class AddAddressPage extends StatelessWidget {
  const AddAddressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,backgroundColor: Colors.white,leading: IconButton(onPressed: (){Navigator.of(context).pop();},icon: const Icon(Icons.arrow_back,color: Colors.black,),),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Group 52627.png',height: 260,width: 310,),
            const SizedBox(height: 75,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const HomePage()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.my_location,color: Colors.white,size: 19,),
                    Text(
                      'Your Current Location',
                      style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w500),
                    ),
                  ],
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const HomePage()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.search,color: Colors.grey,size: 19,),
                    Text(
                      'Some other Location',
                      style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w500),
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
                    ),
                  side: MaterialStateProperty.all(const BorderSide(color: Colors.grey))
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
