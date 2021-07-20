import 'package:flutter/material.dart';
import 'package:slider/five.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:circular_menu/circular_menu.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);
  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _currentRangeVal1 = 0;
  RangeValues _currentRangeVal2 = const RangeValues(0, 0);
  RangeValues _currentRangeVal3 = const RangeValues(0, 0);
  RangeValues _currentRangeVal4 = const RangeValues(0, 0);
  RangeValues _currentRangeVal5 = const RangeValues(0, 0);
  double start2 = 0;
  double start3 = 0;
  double start4 = 0;
  double start5 = 0;

  String dropdownValue = '5';

  void _reset() {
    setState(() {
      _currentRangeVal1 = 0;
      _currentRangeVal2 = const RangeValues(0, 0);
      _currentRangeVal3 = const RangeValues(0, 0);
      _currentRangeVal4 = const RangeValues(0, 0);
      _currentRangeVal5 = const RangeValues(0, 0);
      dropdownValue = dropdownValue;
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
              items: <String>['1', '2', '3', '4', '5']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  onTap: () {
                    setState(() {});
                  },
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
              value: _currentRangeVal1,
              min: 0,
              max: 100,
              divisions: 100,
              label: _currentRangeVal1.round().toString(),
              onChanged: (val) {
                print(
                  _currentRangeVal1.round(),
                );
                setState(() {
                  _currentRangeVal1 = start2;
                  start2 = val;
                  _currentRangeVal2 = RangeValues(start2, start2);
                  _currentRangeVal3 =
                      RangeValues(_currentRangeVal2.end, start2);
                  _currentRangeVal4 =
                      RangeValues(_currentRangeVal2.end, start2);
                  _currentRangeVal5 = RangeValues(_currentRangeVal2.end, 100);
                });
              }),
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
              values: _currentRangeVal2,
              min: 0,
              max: 100,
              divisions: 100,
              labels: RangeLabels(
                _currentRangeVal2.start.round().toString(),
                _currentRangeVal2.end.round().toString(),
              ),
              onChanged: (val) {
                print("Value 2 : $_currentRangeVal2");
                print(_currentRangeVal2.end.round() -
                    _currentRangeVal2.start.round());
                setState(() {
                  _currentRangeVal1 = val.start;
                  _currentRangeVal2 = val;
                  start3 = val.end;
                  _currentRangeVal3 =
                      RangeValues(_currentRangeVal2.end, start3);
                  _currentRangeVal4 =
                      RangeValues(_currentRangeVal3.end, start3);
                  _currentRangeVal5 = RangeValues(_currentRangeVal3.end, 100);
                });
              }),
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
            values: _currentRangeVal3,
            min: 0,
            max: 100,
            divisions: 100,
            labels: RangeLabels(
              _currentRangeVal3.start.round().toString(),
              _currentRangeVal3.end.round().toString(),
            ),
            onChanged: (val) {
              print("Value 3: $_currentRangeVal3");
              print(_currentRangeVal3.end.round() -
                  _currentRangeVal3.start.round());
              setState(() {
                _currentRangeVal2 = RangeValues(
                    _currentRangeVal2.start, _currentRangeVal3.start);
                _currentRangeVal3 = val;
                start4 = val.end;
                _currentRangeVal4 = RangeValues(start4, start4);
                _currentRangeVal5 = RangeValues(start4, 100);
              });
              setState(() {
                if (_currentRangeVal3.start < _currentRangeVal2.start) {
                  _currentRangeVal2 = RangeValues(
                      _currentRangeVal3.start, _currentRangeVal3.start);
                  _currentRangeVal1 = _currentRangeVal3.start;
                }
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
              values: _currentRangeVal4,
              min: 0,
              max: 100,
              divisions: 100,
              labels: RangeLabels(
                _currentRangeVal4.start.round().toString(),
                _currentRangeVal4.end.round().toString(),
              ),
              onChanged: (val) {
                print("Value 4: $_currentRangeVal4");
                print(_currentRangeVal4.end.round() -
                    _currentRangeVal4.start.round());
                print("Value 5: $_currentRangeVal5");
                print("Value 3: $_currentRangeVal3");
                print(_currentRangeVal3.end.round() -
                    _currentRangeVal3.start.round());
                print(100 - _currentRangeVal4.end.round());
                setState(() {
                  _currentRangeVal3 = RangeValues(
                      _currentRangeVal3.start, _currentRangeVal4.start);
                  _currentRangeVal4 = val;
                  start5 = val.end;
                  _currentRangeVal5 = RangeValues(start5, 100);
                });
                setState(() {
                  if (_currentRangeVal4.start < _currentRangeVal3.start) {
                    _currentRangeVal3 = RangeValues(
                        _currentRangeVal4.start, _currentRangeVal4.start);
                    _currentRangeVal2 = RangeValues(
                        _currentRangeVal2.start, _currentRangeVal4.start);
                    _currentRangeVal1 = _currentRangeVal2.start;
                  }
                });
                setState(() {
                  if (_currentRangeVal4.start < _currentRangeVal2.start) {
                    _currentRangeVal3 = RangeValues(
                        _currentRangeVal4.start, _currentRangeVal4.start);
                    _currentRangeVal2 = RangeValues(
                        _currentRangeVal4.start, _currentRangeVal4.start);
                    _currentRangeVal1 = _currentRangeVal2.start;
                  }
                });
              }),
          const Padding(
              padding: EdgeInsets.only(
            top: 20,
            bottom: 20,
          )),
          const Text(
            "Person 5",
            style: TextStyle(fontSize: 20),
          ),
          RangeSlider(
              values: _currentRangeVal5,
              min: 0,
              max: 100,
              divisions: 100,
              labels: RangeLabels(
                _currentRangeVal5.start.round().toString(),
                _currentRangeVal5.end.round().toString(),
              ),
              onChanged: (val) {
                print("Value 5: $_currentRangeVal5");
                print(100 - _currentRangeVal5.start.round());

                setState(() {
                  _currentRangeVal5 = val;
                  _currentRangeVal4 = RangeValues(
                      _currentRangeVal4.start, _currentRangeVal5.start);
                });
                setState(() {
                  if (_currentRangeVal5.start < _currentRangeVal4.start) {
                    _currentRangeVal3 = RangeValues(
                        _currentRangeVal3.start, _currentRangeVal5.start);
                         _currentRangeVal4 = RangeValues(
                        _currentRangeVal5.start, _currentRangeVal5.start);
                  }
                });
                setState(() {
                  if (_currentRangeVal5.start < _currentRangeVal3.start) {
                    _currentRangeVal3 = RangeValues(
                        _currentRangeVal5.start, _currentRangeVal5.start);
                    _currentRangeVal2 = RangeValues(
                        _currentRangeVal2.start, _currentRangeVal5.start);
                    _currentRangeVal1 = _currentRangeVal2.start;
                  }
                });
                setState(() {
                  if (_currentRangeVal5.start < _currentRangeVal2.start) {
                    _currentRangeVal3 = RangeValues(
                        _currentRangeVal5.start, _currentRangeVal5.start);
                    _currentRangeVal2 = RangeValues(
                        _currentRangeVal5.start, _currentRangeVal5.start);
                    _currentRangeVal1 = _currentRangeVal2.start;
                  }
                });
              }),
        ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      floatingActionButton: FloatingActionButton.extended(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        onPressed: _reset,
        label: const Text(
          'Reset',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
