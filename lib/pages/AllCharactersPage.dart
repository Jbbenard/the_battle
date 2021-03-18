import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:the_battle/models/Character.dart';
import 'package:the_battle/widgets/CharacterMaster.dart';
import 'package:the_battle/data/characters.dart' as staticData;
import 'package:the_battle/widgets/CharacterDetails.dart';


class AllCharactersPage extends StatefulWidget {
  AllCharactersPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _AllCharactersPageState createState() => _AllCharactersPageState();
}

class _AllCharactersPageState extends State<AllCharactersPage> {

  List<Character> _characters;
  Character _selectedCharacter;
   void _onChildrenEvent(Character c){
      this._selectedCharacter = c;
      }

  _AllCharactersPageState(){
    _characters = staticData.characters;
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title : Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/images/the-battle-logo-red.png"),
              width: 100,
              )

          ],
        )
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CharacterDetails(character: _selectedCharacter),
            Padding(padding: EdgeInsets.all(10.0),),
            Expanded(child: CharacterMaster(characters: _characters, all: _onChildrenEvent,))
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}