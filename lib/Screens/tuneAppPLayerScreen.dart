import 'package:flutter/material.dart';
import 'package:untitled3/models/tuneModel.dart';
import 'package:untitled3/widgets/tune_item.dart';

class TuneScreen extends StatelessWidget {
  const TuneScreen({super.key});

  final List<TuneModel> tuneColors = const [
    TuneModel(color: Colors.red, sound: 'tunes/note1.wav'),
    TuneModel(color: Colors.orangeAccent, sound: 'tunes/note2.wav'),
    TuneModel(color: Colors.yellow, sound: 'tunes/note3.wav'),
    TuneModel(color: Colors.green, sound: 'tunes/note4.wav'),
    TuneModel(color: Colors.blue, sound: 'tunes/note5.wav'),
    TuneModel(color: Colors.brown, sound: 'tunes/note6.wav'),
    TuneModel(color: Colors.black, sound: 'tunes/note7.wav')
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tune App'),
        centerTitle: true,
      ),
      body: Column(
        children:
          tuneColors.map((tune) => TuneItem(tune: tune)).toList(),
        ///
        /// (var color) {
        /// TuneItem(color: color)
        /// }
      ),
    );



  }

  /*List<TuneItem> getTuneItem() {
    List<TuneItem> items =[];
    for(var color in tuneColors){
      items.add(TuneItem(color: color));
    }
    return items;
  }*/
}
