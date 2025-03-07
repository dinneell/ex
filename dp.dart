//Singleton 
class Singleton {
  static final Singleton _instance = Singleton._internal();
  factory Singleton() => _instance;
  Singleton._internal();
}

//Factory
abstract class Button {
  void render();
}

class AndroidButton implements Button {
  @override
  void render() => print("Android-кнопка");
}

class IOSButton implements Button {
  @override
  void render() => print("iOS-кнопка");
}

class ButtonFactory {
  static Button createButton(String platform) {
    if (platform == "android") return AndroidButton();
    return IOSButton();
  }
}

//. Observer 
class Observer {
  void update(String message) {}
}

class ConcreteObserver implements Observer {
  @override
  void update(String message) => print("Получено уведомление: $message");
}

class Subject {
  final List<Observer> _observers = [];
  void attach(Observer observer) => _observers.add(observer);
  void notify(String message) {
    for (var observer in _observers) {
      observer.update(message);
    }
  }
}
