import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: CarouselSlider(
        items: const [
          CarouseItem(imgLink: 'assets/images/Group 53189.png'),
          CarouseItem(imgLink: 'assets/images/Group 53189.png'),
          CarouseItem(imgLink: 'assets/images/Group 53189.png')
        ],
        options: CarouselOptions(
          height: 200.0,
          autoPlay: true,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          enlargeCenterPage: false,
          aspectRatio: 1,
            viewportFraction:1
        ),
      ),
    );
  }
}


class CarouseItem extends StatelessWidget {
  const CarouseItem({
    Key? key,
    required this.imgLink,
  }) : super(key: key);

  final String imgLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(imgLink))),
    );
  }
}
