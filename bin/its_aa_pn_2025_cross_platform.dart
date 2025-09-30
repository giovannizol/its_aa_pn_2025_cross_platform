import 'package:its_aa_pn_2025_cross_platform/animal.dart';
import 'package:its_aa_pn_2025_cross_platform/its_aa_pn_2025_cross_platform.dart' as its_aa_pn_2025_cross_platform;
import 'package:its_aa_pn_2025_cross_platform/zol.dart';

void main(List<String> arguments) {
  final yourAge = 19;
  final myAge = 32;
  final avg = average(yourAge, myAge);
  print('Hello world: ${its_aa_pn_2025_cross_platform.calculate()}!');
  print("Your average is: $avg");

  print("\n");

  final fido = registerFido();

  print(("name of dog: ${fido.name}"));
  print(("owner of the dog: ${fido.ownerName}"));
  print(("age of dog: ${fido.getYears()}"));
  print(("last time of visit: ${fido.getDaysSinceLastVisit()}"));

  final myFirstDog = Animal.register(petName: "Fido", bornAt: DateTime(2010, 09, 01), ownerName: "Giovanni");
  final mySecondDog = Animal.register(petName: "Bobi", bornAt: DateTime(2022, 01, 03), ownerName: "Giovanni");
  final myThirdDog = Animal.register(petName: "Jack", bornAt: DateTime(2019, 03, 05), ownerName: "Giovanni");


  List<Animal> collection = [myFirstDog, mySecondDog, myThirdDog];
  
  for (int i = 0; i < 3; i++) {
    print(collection[i].name);
  }
  for (var dog in collection) {
    print("Pet's name: ${dog.name}");
    print("Born ${dog.getYears()} years ago on ${dog.bornAt}");
    print("Owner's name: ${dog.ownerName}");
    print("\n");
  }

}
