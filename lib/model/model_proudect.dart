class Proudect {
  String section;
  String imge;
  List<SectionList> sectionList;

  Proudect({required this.section, required this.imge, required this.sectionList});

  factory Proudect.fromJson(Map<String, dynamic> json) {
    return Proudect(
      section: json['Section'],
      imge: json['Imge'],
      sectionList: (json['sectionList'] as List)
          .map((item) => SectionList.fromJson(item))
          .toList(),
    );
  }
   toJson(){
      return{"Section":section,"Imge":imge} as Map<String, dynamic>;
    }
}

class SectionList {
  String image;
  String name;
  String price;

  SectionList({required this.image, required this.name, required this.price});

  factory SectionList.fromJson(Map<String, dynamic> json) {
    return SectionList(
      image: json['image'],
      name: json['name'],
      price: json['price'],
    );
  }
}