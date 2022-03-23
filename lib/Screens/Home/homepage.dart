import 'package:flutter/material.dart';
import 'package:home_service/Screens/Home/Components/Carousel.dart';
import 'Components/popular_services.dart';
import 'Components/qualities.dart';
import 'Components/safety_measures.dart';
import 'Components/top_size_buttons.dart';
import 'Components/why_choose_us.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String batch = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        title: Column(
          children: [
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  size: 14,
                  color: Colors.black,
                ),
                DropdownButton<String>(
                  value: batch,
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  iconSize: 15,
                  elevation: 10,
                  style: const TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold),
                  onChanged: (String? newValue) {
                    setState(() {
                      batch = newValue!;
                    });
                  },
                  items: <String>['Home', 'Office']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )
              ],
            ),
            const Text(
              'Inner Circle,Connaught Place,New Delhi,Delhi',
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.black,
            size: 30,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Carousel(),
            TopSixButton(),
            const Divider(
              color: Color.fromRGBO(240, 240, 240, 1),
              thickness: 12,
            ),
            const PopularServices(),
            const Divider(
              color: Color.fromRGBO(240, 240, 240, 1),
              thickness: 12,
            ),
            const Qualities(),
            const Divider(
              color: Color.fromRGBO(240, 240, 240, 1),
              thickness: 12,
            ),
            const WhyChooseUs(),
            const SafetyMeasures()
          ],
        ),
      ),
    );
  }
}








