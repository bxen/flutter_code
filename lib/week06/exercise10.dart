// import 'dart:ffi';

// import 'package:flutter/material.dart';

// class Exercise10 extends StatefulWidget {
//   const Exercise10({super.key});

//   @override
//   State<Exercise10> createState() => _Exercise10State();
// }

// class _Exercise10State extends State<Exercise10> {
//   int count = 1;
//   Void start(Timer timer) {
//     setState(() {
//       count--;
//       if (count == 0) {
//         timer.cancel();
//       }
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     Timer(const Duration(seconds: 3), stop);
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Align(
//               alignment: Alignment.topCenter,
//               child: Text(
//                 count.toString(),
//                 style: Theme.of(context).textTheme.headlineLarge,
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 FilledButton.icon(
//                   onPressed: () {},
//                   icon: Icon(Icons.play_arrow_rounded),
//                   iconAlignment: IconAlignment.start,
//                   style: FilledButton.styleFrom(
//                     backgroundColor: Colors.purple,
//                     foregroundColor: Colors.white,
//                   ),
//                   label: Text('Strat', style: TextStyle(fontSize: 18)),
//                 ),

//                 FilledButton.icon(
//                   onPressed: start,
//                   icon: Icon(Icons.restart_alt_rounded),
//                   iconAlignment: IconAlignment.start,
//                   style: FilledButton.styleFrom(
//                     backgroundColor: Colors.red,
//                     foregroundColor: Colors.white,
//                   ),
//                   label: Text('Reset', style: TextStyle(fontSize: 18)),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:async';
import 'package:flutter/material.dart';

class Exercise10 extends StatefulWidget {
  const Exercise10({super.key});

  @override
  State<Exercise10> createState() => _Exercise10State();
}

class _Exercise10State extends State<Exercise10> {
  double count = 1.00;
  Timer? timer;

  /// Start the countdown
  void startTimer() {
    timer?.cancel();
    timer = Timer.periodic(const Duration(milliseconds: 10), (t) {
      setState(() {
        count -= 0.01;
        if (count <= 0) {
          count = 0.00;
          t.cancel();
        }
      });
    });
  }

  void resetTimer() {
    timer?.cancel();
    setState(() {
      count = 1.00;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                count.toStringAsFixed(2), // show with 2 decimals
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton.icon(
                  onPressed: startTimer,
                  icon: const Icon(Icons.play_arrow_rounded),
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                  ),
                  label: const Text('Start', style: TextStyle(fontSize: 18)),
                ),
                const SizedBox(width: 12),
                FilledButton.icon(
                  onPressed: resetTimer,
                  icon: const Icon(Icons.restart_alt_rounded),
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  label: const Text('Reset', style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
