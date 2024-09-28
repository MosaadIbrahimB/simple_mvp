 class PersonModel{
  String ?name;
  int ?age;

  PersonModel({this.name, this.age});
  factory PersonModel.formJson(Map json){
    return PersonModel(name:json["name"] ,age:json["age"] );
  }
}