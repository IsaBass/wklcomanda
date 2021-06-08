import 'package:flutter/material.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

class ButtonAtualizar extends StatefulWidget {
  const ButtonAtualizar({Key? key}) : super(key: key);

  @override
  _ButtonAtualizarState createState() => _ButtonAtualizarState();
}

class _ButtonAtualizarState extends State<ButtonAtualizar>
    with SingleTickerProviderStateMixin {
  ///
  final CountdownController _timerController = new CountdownController();

  int _durPadrao = 15; //  em segundos
  double progresso = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () => _timerController.start());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton.icon(
            onPressed: () async {
              _timerController.pause();
              //TODO: substituir por execução da busca do status das mesas
              await Future.delayed(Duration(seconds: 3));
              _timerController.restart();
            },
            icon: Icon(Icons.replay_circle_filled_rounded),
            label: Text("Atualizar"),
          ),
          // Container(
          //     width: 80, child: LinearProgressIndicator(value: progresso)),
          Countdown(
            controller: _timerController,
            seconds: _durPadrao,
            build: (_, double time) {
              return Container(
                width: 80,
                height: 5,
                child: LinearProgressIndicator(
                  value: 1 - (time / _durPadrao),
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                ),
              );
            },
            interval: Duration(milliseconds: 100),
            onFinished: () async {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Timer is done!'),
                ),
              );
              await Future.delayed(Duration(seconds: 2));
              _timerController.restart();
            },
          ),
          // TextButton(
          //   onPressed: () {
          //     _timerController.start();
          //   },
          //   child: Text("Start"),
          // ),
          // TextButton(
          //   onPressed: () {
          //     _timerController.pause();
          //   },
          //   child: Text("Pause"),
          // ),
          // TextButton(
          //   onPressed: () {
          //     // _timerController.reset();
          //     _timerController.restart();
          //   },
          //   child: Text("Reinicie"),
          // ),
        ],
      ),
    );
  }
}
