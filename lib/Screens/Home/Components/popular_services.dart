import 'package:flutter/material.dart';

class PopularServices extends StatelessWidget {
  const PopularServices({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Align(alignment: Alignment.topLeft,child: Text('Popular Services',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),)),
          SizedBox(
            height: 171,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Service(name: 'Kitchen Cleaning',img: 'assets/images/Rectangle 37.png',),
                Service(name: 'Sofa Cleaning',img: 'assets/images/Rectangle 37.png',),
                Service(name: 'Full House Cleaning',img: 'assets/images/Rectangle 37.png',)
              ],
            ),
          ),
          SizedBox(
            height: 171,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Service(name: 'Kitchen Cleaning',img: 'assets/images/Rectangle 41.png',),
                Service(name: 'Sofa Cleaning',img: 'assets/images/Rectangle 42.png',),
                Service(name: 'Full House Cleaning',img: 'assets/images/Rectangle 43.png',)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Service extends StatelessWidget {
  final String name;
  final String img;
  const Service({
    Key? key, required this.name, required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10,right: 30,bottom: 10,left: 10),
      child: Column(
        children: [
          Image.asset(img,height: 134,width: 83,),
          Text(name),
        ],
      ),
    );
  }
}