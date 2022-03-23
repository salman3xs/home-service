import 'package:flutter/material.dart';

class SafetyMeasures extends StatelessWidget {
  const SafetyMeasures({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 75,
          color:Colors.black,
          child: const Center(child: Text('Best-in Class Safety Measures',style: TextStyle(color: Colors.white,fontSize: 20),)),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListTile(
            leading: Image.asset('assets/images/Ellipse 108.png',height: 79,width: 79,),
            title: const Text('Usage of masks gloves & Sanitisers',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dictumst nullam mauris malesuada in. Eget in condimentum porttitor nec tristique penatibus ipsum nunc. '),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListTile(
            leading: Image.asset('assets/images/keep-distance 1.png',height: 79,width: 79,),
            title: const Text('Low-contact Service Experince',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dictumst nullam mauris malesuada in. Eget in condimentum porttitor nec tristique penatibus ipsum nunc. '),
          ),
        )
      ],
    );
  }
}