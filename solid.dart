//Single Responsibility Principle (Принцип единственной ответственности)
class ReportGenerator {
  void generate() {
    print("Генерация отчёта");
  }
}

class EmailSender {
  void send() {
    print("Отправка email");
  }
}
//Open-Closed Principle (Принцип открытости/закрытости)
abstract class Discount {
  double calculate(double price);
}

class GoldDiscount extends Discount {
  @override
  double calculate(double price) => price * 0.8;
}

class NoDiscount extends Discount {
  @override
  double calculate(double price) => price;
}

//. Liskov Substitution Principle (Принцип подстановки Лисков)
abstract class Bird {}
abstract class FlyingBird extends Bird {
  void fly();
}

class Sparrow extends FlyingBird {
  @override
  void fly() => print("Воробей летает");
}

class Penguin extends Bird {}

//Interface Segregation Principle (Принцип разделения интерфейсов)
abstract class Workable {
  void work();
}

abstract class Eatable {
  void eat();
}

class Human implements Workable, Eatable {
  @override
  void work() {}
  @override
  void eat() {}
}

class Robot implements Workable {
  @override
  void work() {}
}

//Dependency Inversion Principle (Принцип инверсии зависимостей)
abstract class Database {
  void save(String data);
}

class MySQLDatabase implements Database {
  @override
  void save(String data) {}
}

class Service {
  final Database db;
  Service(this.db);
}
