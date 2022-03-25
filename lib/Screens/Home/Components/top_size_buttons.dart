import 'package:flutter/material.dart';

class TopSixButton extends StatelessWidget {
  final List buttonName = [
    'Renovation','Handyman','Home Shifting','Gardening','Declutter','Painting'
  ];
  final List buttonImg = [
    'assets/images/Renovation.png','assets/images/Vector.png','assets/images/Group.png','assets/images/Vector (1).png',
    'assets/images/Vector (2).png','assets/images/surface1.png'
  ];
  TopSixButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: GridView.builder(
          itemCount: 6,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 1,
            mainAxisExtent: 120,
          ),
          itemBuilder: (context, index) {
            return TopButton(
              name: buttonName[index],
              img: buttonImg[index],
            );
          }),
    );
  }
}

class TopButton extends StatelessWidget {
  final String name;
  final String img;
  const TopButton({
    Key? key, required this.name, required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 133,
      width: 125,
      child: Column(
        children: [
          Image.asset(
            img,
            height: 40,
            width: 40,
          ),
          Text(
            name,
            style: const TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}