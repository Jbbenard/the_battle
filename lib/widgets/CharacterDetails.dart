import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_battle/data/characters.dart';
import 'package:the_battle/models/Character.dart';
import 'package:the_battle/widgets/CharacterPreview.dart';

class CharacterDetails extends StatelessWidget{

  CharacterDetails({Key key, this.character}) : super(key: key);
  Character character;

   @override
  Widget build(BuildContext context) {

if(this.character.name == null){
return Container(
      color: Colors.white.withOpacity(0.5),
      child: Column(children: [
        Padding(padding: EdgeInsets.all(20),),
        Text("test"),
        
      ],)
    );
}else{
  return Container(
      color: Colors.white.withOpacity(0.5),
      child: Column(children: [
        Padding(padding: EdgeInsets.all(20),),
        Text(this.character.name),
        
      ],)
    );
}
      
    }
    
    
  }
