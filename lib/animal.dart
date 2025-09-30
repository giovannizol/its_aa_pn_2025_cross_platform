class Animal {
  final String name;
  final DateTime bornAt;
  final String ownerName;
  final DateTime lastVisitAt;

  Animal({
    required this.name,
    required this.bornAt,
    required this.ownerName,
    required this.lastVisitAt,
  });

  factory Animal.register({
    required String petName,
    required DateTime bornAt,
    required String ownerName,
  }) {
    return Animal(name: petName, bornAt: bornAt, ownerName: ownerName, lastVisitAt: DateTime.now());
  }


  int getYears() {
    final now = DateTime.now();
    return now.year - bornAt.year;
  }

  int getDaysSinceLastVisit() {
    final now = DateTime.now();
    final difference =  now.difference(lastVisitAt);
    return difference.inDays;
  }
}


Animal registerFido() {
  return Animal(
    name: "Bob", 
    bornAt: DateTime(2023, 06, 23), 
    ownerName: "Marco",
    lastVisitAt: DateTime.now()
  );
}

