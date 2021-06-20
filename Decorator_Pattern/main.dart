import 'dart:math';

import 'beverage_abstract_component.dart';
import 'coffees_concrete_classes.dart';
import 'condiment_decorators.dart';

void main(){
  Beverage espresso= Espresso();
  print("${espresso.beverageDesc}, ${espresso.cost()}");
  espresso = Mocha(espresso);
  print("${espresso.beverageDesc}, ${espresso.cost()}");
  espresso = Whip(espresso);
  print("${espresso.beverageDesc}, ${espresso.cost()} \n" );

  Beverage darkRoast= DarkRoast();
  print("${darkRoast.beverageDesc}, ${darkRoast.cost()}");
  darkRoast = Whip(darkRoast);
  print("${darkRoast.beverageDesc}, ${darkRoast.cost()}");
  darkRoast = Mocha(darkRoast);
  darkRoast = Mocha(darkRoast);
  print("${darkRoast.beverageDesc}, ${darkRoast.cost()}");

}