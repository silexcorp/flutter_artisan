import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:google_fonts/google_fonts.dart';

class CircularCountDownTimerWidget extends StatelessWidget {
  const CircularCountDownTimerWidget({
    Key? key,
    required CountDownController controller,
  })  : _countDownController = controller,
        super(key: key);

  final CountDownController _countDownController;

  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height / 2,
      duration: 10,
      fillColor: Colors.redAccent,
      ringColor: Colors.white,
      controller: _countDownController,
      backgroundColor: Colors.amber,
      strokeWidth: 10.0,
      strokeCap: StrokeCap.round,
      isTimerTextShown: true,
      isReverse: false,
      onComplete: () {
        //print('Completed');
      },
      textStyle: GoogleFonts.aclonica(
        fontSize: 60.0,
        fontWeight: FontWeight.bold,
        color: Colors.red,
      ),
    );
  }
}
