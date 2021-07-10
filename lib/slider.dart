import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SliderPage extends StatefulWidget {
  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _value1 = 0.0;

  RangeValues _value2 = const RangeValues(0, 0);

  RangeValues _value3 = const RangeValues(0, 0);

  RangeValues _value4 = const RangeValues(0, 0);

  String dropdownValue = '1';
  void _reset() {
    setState(() {
      _value1 = 0.0;

      _value2 = const RangeValues(0, 0);

      _value3 = const RangeValues(0, 0);

      _value4 = const RangeValues(0, 0);
      dropdownValue = "1";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: VStack([
          HStack([
            const Padding(
                padding: EdgeInsets.only(
              top: 50,
              left: 10,
              bottom: 20,
            )),
            const Text(
              "Enter number of people:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            DropdownButton<String>(
              value: dropdownValue,
              // icon: const Icon(Icons.arrow_downward),
              // iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.black),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>['1', '2', '3', '4']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ]),
          const Padding(
              padding: EdgeInsets.only(
            top: 30,
            bottom: 20,
          )),
          const Text(
            "Person 1",
            style: TextStyle(fontSize: 20),
          ),
          Slider(
            value: _value1,
            min: 0,
            max: 100,
            divisions: 100,
            label: _value1.round().toString(),
            onChanged: (double value) {
              setState(() {
                _value1 = value;
              });
            },
          ),
          const Padding(
              padding: EdgeInsets.only(
            top: 20,
            bottom: 20,
          )),
          const Text(
            "Person 2",
            style: TextStyle(fontSize: 20),
          ),
          RangeSlider(
            values: _value2,
            min: 0,
            max: 100,
            divisions: 100,
            labels: RangeLabels(
              _value2.start.round().toString(),
              _value2.end.round().toString(),
            ),
            onChanged: (RangeValues values) {
              setState(() {
                _value2 = values;
              });
            },
          ),
          const Padding(
              padding: EdgeInsets.only(
            top: 20,
            bottom: 20,
          )),
          const Text(
            "Person 3",
            style: TextStyle(fontSize: 20),
          ),
          RangeSlider(
            values: _value3,
            min: 0,
            max: 100,
            divisions: 100,
            labels: RangeLabels(
              _value3.start.round().toString(),
              _value3.end.round().toString(),
            ),
            onChanged: (RangeValues values) {
              setState(() {
                _value3 = values;
              });
            },
          ),
          const Padding(
              padding: EdgeInsets.only(
            top: 20,
            bottom: 20,
          )),
          const Text(
            "Person 4",
            style: TextStyle(fontSize: 20),
          ),
          RangeSlider(
            values: _value4,
            min: 0,
            max: 100,
            divisions: 100,
            labels: RangeLabels(
              _value4.start.round().toString(),
              _value4.end.round().toString(),
            ),
            onChanged: (RangeValues values) {
              setState(() {
                _value4 = values;
              });
            },
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        onPressed: _reset,
        label: const Text(
          'Reset',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        //icon: const Icon(Icons.thumb_up),
        backgroundColor: Colors.white,
      ),
    );
  }
}
