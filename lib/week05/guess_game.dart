import 'dart:math';
import 'package:flutter/material.dart';

class GuessGame extends StatefulWidget {
  const GuessGame({super.key});

  @override
  State<GuessGame> createState() => _GuessGameState();
}

class _GuessGameState extends State<GuessGame> {
  String result = '';
  TextEditingController tcguess = TextEditingController();
  int randomnum = Random().nextInt(10);
  int chances = 3;

  String textButton= 'Guess';

  void replayButton(){
    setState(() {
      result ='';
      chances = 3;
      textButton ='Guess';
      tcguess.clear();
    });
  }
  
  void guess(){

    setState(() { 
      if(chances==0){
        textButton = 'Replay';
        result='Sorry, you lose.The answer is $randomnum';
      }
      if(textButton=='Replay'){
        replayButton();

      }
      if(tcguess.text.isEmpty){
        result = '';
      }
      int guess = int.tryParse(tcguess.text)!;
      if(guess>randomnum){
        chances=chances-1;
        result = '$guess is too large, $chances chance(s) left!';
      }if(guess<randomnum){
        chances=chances-1;
        result = '$guess is too small, $chances chance(s) left!';
      }if(guess==randomnum){
        result='Correct you win!';
        textButton = 'Replay';
      }if(chances==0){
        textButton = 'Replay';
        result='Sorry, you lose.The answer is $randomnum';
        
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Guess a number game',style: Theme.of(context).textTheme.bodyLarge,),
            SizedBox(height: 10),
            TextField(
              controller: tcguess,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: 'Guess a number 0-9'),
            ),
            SizedBox(height: 10),
            Text(result, style: TextStyle(color: Colors.red,fontSize: 16),),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: guess,
                 style: ElevatedButton.styleFrom(
                 ),
                 child: Text(textButton,style: TextStyle(color: Colors.deepPurple, fontSize: 16)),)
              ],
            )
          ],
        ),
      ),
    );
  }
}