import 'package:flutter/material.dart';

class Qualities extends StatelessWidget {
  const Qualities({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Qua(name: 'On Demand/ \n Scheduled',img: 'assets/images/Group 52873.png',),
        Qua(name: 'Verified \n Partners',img: 'assets/images/Group 52874.png',),
        Qua(name: 'Satisfaction \n Guarantee',img: 'assets/images/Group 52872.png',),
        Qua(name: 'Upfront \n Pricing',img: 'assets/images/Group 52871.png',),
        Qua(name: 'Highly Trained \n Professionals',img: 'assets/images/Group 52873.png',)
      ],
    );
  }
}

class Qua extends StatelessWidget {
  final String name;
  final String img;
  const Qua({
    Key? key, required this.name, required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(img,height: 45,width: 45,),
        Text(name,style: TextStyle(fontSize: 12),)
      ],
    );
  }
}