import 'dart:async';

import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';

class TimerWidget extends StatefulWidget {
  final VoidCallback onTimerFinished;
  final int seconds;
  final Key? timerKey;

  const TimerWidget({
    this.timerKey,
    required this.onTimerFinished,
    this.seconds = 180,
  }) : super(key: timerKey);

  @override
  State<TimerWidget> createState() => _TimerViewState();
}

class _TimerViewState extends State<TimerWidget> {
  int _start = 10; //180;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _start = widget.seconds;
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _start == 0
        ? const SizedBox.shrink()
        : Row(
            children: [
              SizedBox(width: 4.w),
              Text(
                '${(_start ~/ 60).toString().padLeft(2, '0')}:${(_start % 60).toString().padLeft(2, '0')}',
                style: TextStyle(
                  color: textGrayColor2,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          );
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
            if (_start == 0) {
              widget.onTimerFinished.call();
            }
          });
        }
      },
    );
  }
}
