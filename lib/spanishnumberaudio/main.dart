import 'package:flutter/material.dart';
import 'NumberAudio.dart';
import 'package:audioplayers/audio_cache.dart';

class MySpanishNumberAudio extends StatefulWidget {
  @override
  _MySpanishNumberAudioState createState() => _MySpanishNumberAudioState();
}

class _MySpanishNumberAudioState extends State<MySpanishNumberAudio> {
  AudioCache audioCache = AudioCache();

  List<NumberAudio> numberList = [
    NumberAudio("one.wav", Colors.red, "one"),
    NumberAudio("two.wav", Colors.orange, "two"),
    NumberAudio("three.wav", Colors.blue, "three"),
    NumberAudio("four.wav", Colors.green, "four"),
    NumberAudio("five.wav", Colors.lightBlue, "five"),
    NumberAudio("six.wav", Colors.lime, "six"),
    NumberAudio("seven.wav", Colors.pink, "seven"),
    NumberAudio("eight.wav", Colors.brown, "eight"),
    NumberAudio("nine.wav", Colors.blueGrey, "nine"),
    NumberAudio("ten.wav", Colors.yellow, "ten"),
  ];

  play(String uri) {
    audioCache.play(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spanish Number Audio"),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage("images/logo.png"),
              ),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.all(10.0),
                  itemCount: this.numberList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2.0,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemBuilder: (context, i) => SizedBox(
                        width: 100.0,
                        height: 50.0,
                        child: RaisedButton(
                          color: this.numberList[i].buttonColor,
                          child: Text(
                            "${this.numberList[i].buttonText}",
                            style:
                                TextStyle(color: Colors.white, 
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                ),
                          ),
                          onPressed: (){
                            play(this.numberList[i].audioUri);
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
