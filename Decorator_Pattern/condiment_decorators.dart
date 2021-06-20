import 'beverage_abstract_component.dart';

abstract class CondimentDecorator extends Beverage{
  //we need to override this for the description of every coffee and its condiments
  get beverageDesc;
}

class Mocha extends CondimentDecorator{

  Beverage? beverage;
  Mocha(Beverage beverage){
    this.beverage = beverage;
  }

  @override
  get beverageDesc => beverage!.beverageDesc! + " ,Mocha";

  @override
  double cost() {
    return .5 + beverage!.cost();
  }
}

class Whip extends CondimentDecorator{

  Beverage? beverage;
  Whip(Beverage beverage){
    this.beverage = beverage;
  }

  @override
  get beverageDesc => beverage!.beverageDesc! + " ,Whip";

  @override
  double cost() {
    return .75 + beverage!.cost();
  }
}