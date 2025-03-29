

class PersonStore {
  static final PersonStore _instance = PersonStore._internal();

  factory PersonStore() => _instance;

  final Person _person = Person(name: "samantha", lastName: 'carter', age: 40);

  Person get person => _person;

  void updateAge(int newAge) {
    _person.age = newAge;
  }

  PersonStore._internal();
}


class Person {
  Person({required this.name, required this.lastName, required this.age});

  // ## PROPS ---
  String name, lastName;
  int age;

  // ## METHODS --- --- ---
  void setIdentity(String name, String lastName) {
    this.name = name;
    this.lastName = lastName;
  }

  String getInfo () => '$name $lastName';
  String getAge () => '$age';

  void setAge (int age) => this.age = age;
  void setInfo (String data) => name = data;

}
