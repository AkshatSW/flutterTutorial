void main(List<String> args) {
//   //creating out map
//   var map_name = {'Key1': 'value1', 'key2': 2, 'Key3': 3.0};

// // Printing our map
//   print(map_name);

//   // Printing value using key only
//   print(map_name['key2']);

//   // overriding the value of key
//   map_name['Key1'] = 'akshat';
//   print(map_name['Key1']);

  //another way to create map
  var mapName = Map();
  mapName['Name'] = 'akshat';
  mapName['Age'] = 20;
  mapName['Alive'] = true;
  print(mapName);
  print(mapName.isEmpty);
  print(mapName.length);
  print(mapName.containsKey('Alive'));
  print(mapName.containsValue(false));
  print(mapName.remove(20));
}
