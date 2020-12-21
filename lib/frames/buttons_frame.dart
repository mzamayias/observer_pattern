import 'package:flutter/material.dart';
import 'package:observer_pattern/widgets/custom_button.dart';

class ButtonsFrame extends StatelessWidget {
  const ButtonsFrame({
    Key key,
    @required this.thisColor,
    @required this.thatColor,
  }) : super(key: key);

  final Color thisColor;
  final Color thatColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      child: GridView.count(
        crossAxisCount: 10,
        scrollDirection: Axis.vertical,
        mainAxisSpacing: 7,
        crossAxisSpacing: 7,
        childAspectRatio: 1.1,
        children: List.generate(
          100,
          (index) => CustomButton(
            index: '$index',
            thisColor: thisColor,
            thatColor: thatColor,
          ),
        ),
      ),
    );
  }
}