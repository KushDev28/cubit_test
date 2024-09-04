class IndianStateData {
  final List<Region> states;

  IndianStateData({required this.states});

  factory IndianStateData.fromJson(Map<String, dynamic> json) {
    var statesFromJson = json['states'] as List;
    List<Region> stateList = statesFromJson.map((i) => Region.fromJson(i)).toList();

    return IndianStateData(states: stateList);
  }

  Map<String, dynamic> toJson() {
    return {
      'states': states.map((state) => state.toJson()).toList(),
    };
  }
}

class Region {
  final String title;
  final List<String> names;

  Region({required this.title, required this.names});

  factory Region.fromJson(Map<String, dynamic> json) {
    return Region(
      title: json['title'],
      names: List<String>.from(json['names']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'names': names,
    };
  }
}