abstract class Observable {
  void registerObserver(Observer observer);
  void notifyObservers();
}

class Observer {
  String name;
  Observer(this.name);
  void notify() {
    print("new notification for $name!");
  }
}

class NotificationObserver implements Observable {
  List<Observer> ? _observers;

  NotificationObserver([List<Observer>? observers]) {
    _observers = observers ?? [];
  }

  void registerObserver(Observer observer) {
    _observers!.add(observer);
  }

  void notifyObservers() {
    for (var observer in _observers!) {
      observer.notify();
    }
  }
}

void main() {
  var me = Observer("me");
  var mrCoffee = NotificationObserver(List.from([me]));
  var myFriend = Observer("my friend");
  mrCoffee.registerObserver(myFriend);
  mrCoffee.notifyObservers();

}