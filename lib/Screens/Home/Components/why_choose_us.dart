import 'package:flutter/material.dart';

class WhyChooseUs extends StatelessWidget {
  const WhyChooseUs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        child:Column(
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.black,
                    child: Icon(Icons.security,size: 12,),
                  ),
                ),
                Text(
                  'Why Choose Us',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 33),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(

                shape: Border.all(color: Color.fromRGBO(244, 244, 244, 1),width: 3),
                title: const Text('Quality Assured',style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: const Text('Your satisfaction is guaranteed'),
                leading: Image.asset('assets/images/Group 52754.png',height: 53,width: 44,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                shape: Border.all(color: Color.fromRGBO(244, 244, 244, 1),width: 3),
                title: const Text('Fixed Prices',style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: const Text('No hidden costs, all the proces are known and fixed before booking'),
                leading: Image.asset('assets/images/Group (1).png',height: 53,width: 44,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                shape: Border.all(color: Color.fromRGBO(244, 244, 244, 1),width: 3),
                title: const Text('Hassel Free',style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: const Text('convenient, time saving and secure'),
                leading: Image.asset('assets/images/Group 52756.png',height: 53,width: 44,),
              ),
            )
          ],
        )
    );
  }
}