import 'beverage_abstract_component.dart';

class Espresso extends Beverage{

  Espresso(){
    description="Espresso";
  }
  @override
  double cost() {
    return 1.5;
  }
}

class DarkRoast extends Beverage{

  DarkRoast(){
    description="Dark Roast";
  }
  @override
  double cost() {
    return 2.5;
  }
}