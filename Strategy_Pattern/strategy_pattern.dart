class Animal{
  FlyStrategy? flyStrategy;
  String tryToFly(){
    return flyStrategy!.fly();
  }

  void setFlyingAbility(FlyStrategy flyStrategy){
    this.flyStrategy=flyStrategy;
  }
}

class Dog extends Animal{
  FlyStrategy? flyStrategy;
  Dog(){
    flyStrategy=CanNotFly();
  }
}

class Bird extends Animal{
  FlyStrategy? flyStrategy;
  Bird(){
    flyStrategy=CanFly();
  }
}

abstract class FlyStrategy{
  String fly();
}

class CanFly implements FlyStrategy{
  String fly(){
    return "i can fly";
  }
}

class CanNotFly implements FlyStrategy{
  String fly(){
    return "i can not fly";
  }
}

void main(){
  Dog dog= new Dog();
  Bird bird=new Bird();
  print("Dog: " + dog.tryToFly());
  print("Bird: " + bird.tryToFly());
  dog.setFlyingAbility(CanFly());
  print("Dog: " + dog.tryToFly());
}

