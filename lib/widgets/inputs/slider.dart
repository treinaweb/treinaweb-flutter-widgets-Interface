import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class SliderView extends StatefulWidget {
  const SliderView({Key? key}) : super(key: key);

  @override
  State<SliderView> createState() => _SliderViewState();
}

class _SliderViewState extends State<SliderView> {
  var rating = 0.0;
  var selectedRange = RangeValues(0.0, 100.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      appBar: AppBar(),
      body: Column(
        children: [
          Slider(
            min: 0,
            max: 100,
            value: rating,
            label: "treinaweb $rating",
            divisions: 10,
            onChanged: (value) {
              setState(() {
                rating = value;
              });
            },
          ),
          RangeSlider(
              values: selectedRange,
              min: 0,
              max: 100,
              divisions: 10,
              labels: RangeLabels("flutter ${selectedRange.start}",
                  "dart ${selectedRange.end}"),
              onChanged: (value) {
                setState(() {
                  selectedRange = value;
                });
              })
        ],
      ),
    );
  }
}
