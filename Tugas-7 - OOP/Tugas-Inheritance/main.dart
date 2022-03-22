import 'armor_titan.dart';
import 'beast_titan.dart';
import 'attack_titan.dart';
import 'human.dart';

void main() {
  ArmorTitan armorTitan = new ArmorTitan();
  BeastTitan beastTitan = new BeastTitan();
  AttackTitan attackTitan = new AttackTitan();
  Human human = new Human();

  armorTitan.setPower = 5;
  beastTitan.setPower = 5;
  attackTitan.setPower = 5;
  human.setPower = 5;

  print('Armor Titan Power Point = ${armorTitan.getPower}');
  print('Beast Titan Power Point = ${beastTitan.getPower}');
  print('Attack Titan Power Point = ${attackTitan.getPower}');
  print('Human Power Point = ${human.getPower}');

  print('');

  print('Armor Titan = ${armorTitan.terjang()}');
  print('Beast Titan = ${beastTitan.lempar()}');
  print('Attack Titan = ${attackTitan.punch()}');
  print('Human = ${human.killAllTitan()}');
}
