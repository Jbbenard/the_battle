import 'Skill.dart';

class Character{
  String uuid, name, image;
  Skill strength, cleverness, intelligence, speed;

  Character(this.uuid, this.name, this.image, this.strength, this.cleverness, this.intelligence, this.speed);

  String imagePath(){
    this.image = "assets/characters/character-"+this.uuid+".png";
    return this.image;
  }
}