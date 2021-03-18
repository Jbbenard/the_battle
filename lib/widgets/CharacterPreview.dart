import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_battle/models/Character.dart';
import 'package:flutter/foundation.dart';


class CharacterPreview extends StatefulWidget{
  final Character character;

  const CharacterPreview({Key key, this.character, this.master}) : super(key: key);

  final Function master;

  _CharacterPreviewState createState()=> _CharacterPreviewState();
}

class _CharacterPreviewState extends State<CharacterPreview>{
  bool _selected = false;
  static _CharacterPreviewState _previousSelected;

  void setState(function){
    if(this.mounted){
      super.setState(function);
    } 
  }

  void _unselect(){
    setState(() {
      _selected = false;
    });
  }

 @override
  Widget build(BuildContext context) {

   GestureDetector g = new GestureDetector(
    onTap: () {
       this.widget.master(this.widget.character);
      setState(() { 
        if(_previousSelected != null){
          _previousSelected._unselect();
        }
        _selected = !_selected;
        _previousSelected = this;
       
      });

    },
    
    child: Container(
      color: _selected == true ? Colors.white.withOpacity(0.5) : Colors.transparent, 
      child : Row(children: [ 
                     
            Padding(padding: EdgeInsets.all(35.0),),
            Image.asset(widget.character.imagePath(), width: 50),
            Padding(padding: EdgeInsets.all(23.0),),
            Text(widget.character.name, textAlign: TextAlign.left, style: TextStyle(fontSize: 28, color: Colors.white),)
          ],
          ),
   )
   );

       
       return g;
        
      
  }

}
  
  /*
              
               _previousSelected=this;
    
      RaisedButton button = RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.red)
                    ),
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    onPressed: (){
                      if(_selected == true){
                        if(_previousSelected != this){
                          setState(() {
                          _previousSelected._unselect();
                          _selected = false;
                        });
                        }else{
                          _selected = false;
                          _previousSelected._unselect();
                          _previousSelected = this;
                        }
                      }else{
                        if(_previousSelected != this){
                          setState(() {
                          _previousSelected._unselect();
                          _selected = true;
                        });

                        }else{
                          _previousSelected = this;
                        }
                      
                    }
                    },
                    color: _selected == true ? Colors.white.withOpacity(0.5) : Colors.transparent,
                    
                    child: new Row(children: [ 
                     
                      Padding(padding: EdgeInsets.all(35.0),),
                      Image.asset(widget.character.imagePath(), width: 50),
                      Padding(padding: EdgeInsets.all(20.0),),
                      Text(widget.character.name, textAlign: TextAlign.left, style: TextStyle(fontSize: 28, color: Colors.white),)
                    ],
                    ),
                  );

        return button;*/