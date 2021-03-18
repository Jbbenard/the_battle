import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_battle/data/characters.dart';
import 'package:the_battle/models/Character.dart';
import 'package:the_battle/widgets/CharacterDetails.dart';
import 'package:the_battle/widgets/CharacterPreview.dart';

class CharacterMaster extends StatelessWidget{

  const CharacterMaster({Key key, this.characters, this.all}) : super(key: key);
  final List<Character> characters;
  final Function all;

  void _onChildrenEvent(Character c){
      this.all(c);
    }

   @override
  Widget build(BuildContext context) {
    return ListView.builder(
                padding: EdgeInsets.all(2),
                itemCount: characters.length,
                itemBuilder: (BuildContext context, int index){
                  if(index != null){
                    final Character character = characters[index];
                    
                    this.all(character);
                    return Column(children: [
                      CharacterPreview(character: character, master: this._onChildrenEvent),
                      
                    ],);
                   
                  }else{
                    return Container();
                  }
                },
                // This trailing comma makes auto-formatting nicer for build methods.
              );

    
  }
}