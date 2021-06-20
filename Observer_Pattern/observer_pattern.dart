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

class NotificationObservable implements Observable {
  List<Observer> ? _observers;

  NotificationObservable([List<Observer>? observers]) {
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
  var notificationObservable = NotificationObservable(List.from([me]));
  var myFriend = Observer("my friend");
  notificationObservable.registerObserver(myFriend);
  notificationObservable.notifyObservers();

}