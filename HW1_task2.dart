class coreTeam{
  String name, faculty, year, role;
  coreTeam({required this.name, required this.faculty, required this.year, required this.role});
  
  factory coreTeam.fromJson(Map json){
    return coreTeam(name : json['name'],
                   faculty : json['faculty'],
                   year :  json['year'],
                   role : json['role']);
  }
  Map<String, dynamic> toJson()=>{
    'Nama' : name,
    'Faculty' : faculty,
    'Year' : year,
    'Role' : role,
  };
  
}
void main() {

  Map p1 = {'name' : 'Akbar Fajar',
            'faculty' : 'TRPL',
            'year' : '2021',
            'role' : 'Hacker'};
  coreTeam person1 = coreTeam.fromJson(p1);
  
  print(person1.toJson());
}