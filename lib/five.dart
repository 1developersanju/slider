import 'package:flutter/material.dart';

class Five extends StatelessWidget {
  //const Five({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
        child: const Text("data"),
      ),
      // const Padding(
      //     padding: EdgeInsets.only(
      //   top: 30,
      //   bottom: 20,
      // )),
      // const Text(
      //   "Person 1",
      //   style: TextStyle(fontSize: 20),
      // ),
      // Slider(
      //     value: _currentRangeVal1,
      //     min: 0,
      //     max: 100,
      //     divisions: 100,
      //     label: _currentRangeVal1.round().toString(),
      //     onChanged: (val) {
      //       print(
      //         _currentRangeVal1.round(),
      //       );
      //       setState(() {
      //         _currentRangeVal1 = start2;
      //         start2 = val;
      //         _currentRangeVal2 = RangeValues(start2, start2);
      //         _currentRangeVal3 =
      //             RangeValues(_currentRangeVal2.end, start2);
      //         _currentRangeVal4 =
      //             RangeValues(_currentRangeVal2.end, start2);
      //         _currentRangeVal5 =
      //             RangeValues(_currentRangeVal2.end, start2);
      //       });
      //     }),
      // const Padding(
      //     padding: EdgeInsets.only(
      //   top: 20,
      //   bottom: 20,
      // )),
      // const Text(
      //   "Person 2",
      //   style: TextStyle(fontSize: 20),
      // ),
      // RangeSlider(
      //     values: _currentRangeVal2,
      //     min: 0,
      //     max: 100,
      //     divisions: 100,
      //     labels: RangeLabels(
      //       _currentRangeVal2.start.round().toString(),
      //       _currentRangeVal2.end.round().toString(),
      //     ),
      //     onChanged: (val) {
      //       print("Value 2 : $_currentRangeVal2");
      //       print(_currentRangeVal2.end.round() -
      //           _currentRangeVal2.start.round());
      //       setState(() {
      //         _currentRangeVal1 = val.start;
      //         _currentRangeVal2 = val;
      //         start3 = val.end;
      //         _currentRangeVal3 =
      //             RangeValues(_currentRangeVal2.end, start3);
      //         _currentRangeVal4 =
      //             RangeValues(_currentRangeVal3.end, start3);
      //         _currentRangeVal5 =
      //             RangeValues(_currentRangeVal3.end, start3);
      //       });
      //     }),
      // const Padding(
      //     padding: EdgeInsets.only(
      //   top: 20,
      //   bottom: 20,
      // )),
      // const Text(
      //   "Person 3",
      //   style: TextStyle(fontSize: 20),
      // ),
      // RangeSlider(
      //   values: _currentRangeVal3,
      //   min: 0,
      //   max: 100,
      //   divisions: 100,
      //   labels: RangeLabels(
      //     _currentRangeVal3.start.round().toString(),
      //     _currentRangeVal3.end.round().toString(),
      //   ),
      //   onChanged: (val) {
      //     print("Value 3: $_currentRangeVal3");
      //     print(_currentRangeVal3.end.round() -
      //         _currentRangeVal3.start.round());
      //     setState(() {
      //       _currentRangeVal2 = RangeValues(
      //           _currentRangeVal2.start, _currentRangeVal3.start);
      //       _currentRangeVal3 = val;
      //       start4 = val.end;
      //       _currentRangeVal4 = RangeValues(start4, start4);
      //       _currentRangeVal5 = RangeValues(start4, start4);
      //     });
      //     setState(() {
      //       if (_currentRangeVal3.start < _currentRangeVal2.start) {
      //         _currentRangeVal2 = RangeValues(
      //             _currentRangeVal3.start, _currentRangeVal3.start);
      //         _currentRangeVal1 = _currentRangeVal3.start;
      //       }
      //     });
      //   },
      // ),
      // const Padding(
      //     padding: EdgeInsets.only(
      //   top: 20,
      //   bottom: 20,
      // )),
      // const Text(
      //   "Person 4",
      //   style: TextStyle(fontSize: 20),
      // ),
      // RangeSlider(
      //     values: _currentRangeVal4,
      //     min: 0,
      //     max: 100,
      //     divisions: 100,
      //     labels: RangeLabels(
      //       _currentRangeVal4.start.round().toString(),
      //       _currentRangeVal4.end.round().toString(),
      //     ),
      //     onChanged: (val) {
      //       print("Value 4: $_currentRangeVal4");
      //       print(_currentRangeVal4.end.round() -
      //           _currentRangeVal4.start.round());
      //       print("Value 5: $_currentRangeVal5");
      //       print("Value 3: $_currentRangeVal3");
      //       print(_currentRangeVal3.end.round() -
      //           _currentRangeVal3.start.round());
      //       print(100 - _currentRangeVal4.end.round());
      //       setState(() {
      //         _currentRangeVal3 = RangeValues(
      //             _currentRangeVal3.start, _currentRangeVal4.start);
      //         _currentRangeVal4 = val;
      //         start5 = val.end;
      //         _currentRangeVal5 = RangeValues(start5, start5);
      //       });
      //       setState(() {
      //         if (_currentRangeVal4.start < _currentRangeVal3.start) {
      //           _currentRangeVal3 = RangeValues(
      //               _currentRangeVal4.start, _currentRangeVal4.start);
      //           _currentRangeVal2 = RangeValues(
      //               _currentRangeVal2.start, _currentRangeVal4.start);
      //           _currentRangeVal1 = _currentRangeVal2.start;
      //         }
      //       });
      //       setState(() {
      //         if (_currentRangeVal4.start < _currentRangeVal2.start) {
      //           _currentRangeVal3 = RangeValues(
      //               _currentRangeVal4.start, _currentRangeVal4.start);
      //           _currentRangeVal2 = RangeValues(
      //               _currentRangeVal4.start, _currentRangeVal4.start);
      //           _currentRangeVal1 = _currentRangeVal2.start;
      //         }
      //       });
      //     }),
      // const Padding(
      //     padding: EdgeInsets.only(
      //   top: 20,
      //   bottom: 20,
      // )),
      // const Text(
      //   "Person 5",
      //   style: TextStyle(fontSize: 20),
      // ),
      // RangeSlider(
      //     values: _currentRangeVal5,
      //     min: 0,
      //     max: 100,
      //     divisions: 100,
      //     labels: RangeLabels(
      //       _currentRangeVal5.start.round().toString(),
      //       _currentRangeVal5.end.round().toString(),
      //     ),
      //     onChanged: (val) {
      //       print("Value 5: $_currentRangeVal5");
      //       print(100 - _currentRangeVal5.start.round());

      //       setState(() {
      //         _currentRangeVal5 = val;
      //         _currentRangeVal4 = RangeValues(
      //             _currentRangeVal4.start, _currentRangeVal5.start);
      //       });
      //       setState(() {
      //         if (_currentRangeVal5.start < _currentRangeVal4.start) {
      //           _currentRangeVal3 = RangeValues(
      //               _currentRangeVal3.start, _currentRangeVal5.start);
      //           _currentRangeVal4 = RangeValues(
      //               _currentRangeVal5.start, _currentRangeVal5.start);
      //         }
      //       });
      //       setState(() {
      //         if (_currentRangeVal5.start < _currentRangeVal3.start) {
      //           _currentRangeVal3 = RangeValues(
      //               _currentRangeVal5.start, _currentRangeVal5.start);
      //           _currentRangeVal2 = RangeValues(
      //               _currentRangeVal2.start, _currentRangeVal5.start);
      //           _currentRangeVal1 = _currentRangeVal2.start;
      //         }
      //       });
      //       setState(() {
      //         if (_currentRangeVal5.start < _currentRangeVal2.start) {
      //           _currentRangeVal3 = RangeValues(
      //               _currentRangeVal5.start, _currentRangeVal5.start);
      //           _currentRangeVal2 = RangeValues(
      //               _currentRangeVal5.start, _currentRangeVal5.start);
      //           _currentRangeVal1 = _currentRangeVal2.start;
      //         }
      //       });
      //     }),
    );
  }
}
