


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

}
