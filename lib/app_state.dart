import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _selectedTop = prefs.getString('ff_selectedTop') ?? _selectedTop;
    });
    _safeInit(() {
      _selectedAccessory =
          prefs.getString('ff_selectedAccessory') ?? _selectedAccessory;
    });
    _safeInit(() {
      _selectedHairColor =
          prefs.getString('ff_selectedHairColor') ?? _selectedHairColor;
    });
    _safeInit(() {
      _selectedFacialHair =
          prefs.getString('ff_selectedFacialHair') ?? _selectedFacialHair;
    });
    _safeInit(() {
      _selectedFacialHairColor =
          prefs.getString('ff_selectedFacialHairColor') ??
              _selectedFacialHairColor;
    });
    _safeInit(() {
      _selectedClothing =
          prefs.getString('ff_selectedClothing') ?? _selectedClothing;
    });
    _safeInit(() {
      _selectedClothingColor =
          prefs.getString('ff_selectedClothingColor') ?? _selectedClothingColor;
    });
    _safeInit(() {
      _selectedEyes = prefs.getString('ff_selectedEyes') ?? _selectedEyes;
    });
    _safeInit(() {
      _selectedEyebrow =
          prefs.getString('ff_selectedEyebrow') ?? _selectedEyebrow;
    });
    _safeInit(() {
      _selectedMouth = prefs.getString('ff_selectedMouth') ?? _selectedMouth;
    });
    _safeInit(() {
      _selectedSkin = prefs.getString('ff_selectedSkin') ?? _selectedSkin;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  DateTime? _calendarSelectedDay;
  DateTime? get calendarSelectedDay => _calendarSelectedDay;
  set calendarSelectedDay(DateTime? value) {
    _calendarSelectedDay = value;
  }

  List<String> _allTasks = [];
  List<String> get allTasks => _allTasks;
  set allTasks(List<String> value) {
    _allTasks = value;
  }

  void addToAllTasks(String value) {
    allTasks.add(value);
  }

  void removeFromAllTasks(String value) {
    allTasks.remove(value);
  }

  void removeAtIndexFromAllTasks(int index) {
    allTasks.removeAt(index);
  }

  void updateAllTasksAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    allTasks[index] = updateFn(_allTasks[index]);
  }

  void insertAtIndexInAllTasks(int index, String value) {
    allTasks.insert(index, value);
  }

  String _date = '';
  String get date => _date;
  set date(String value) {
    _date = value;
  }

  String _selectedOption = '';
  String get selectedOption => _selectedOption;
  set selectedOption(String value) {
    _selectedOption = value;
  }

  LatLng? _Location;
  LatLng? get Location => _Location;
  set Location(LatLng? value) {
    _Location = value;
  }

  List<LatLng> _loco = [];
  List<LatLng> get loco => _loco;
  set loco(List<LatLng> value) {
    _loco = value;
  }

  void addToLoco(LatLng value) {
    loco.add(value);
  }

  void removeFromLoco(LatLng value) {
    loco.remove(value);
  }

  void removeAtIndexFromLoco(int index) {
    loco.removeAt(index);
  }

  void updateLocoAtIndex(
    int index,
    LatLng Function(LatLng) updateFn,
  ) {
    loco[index] = updateFn(_loco[index]);
  }

  void insertAtIndexInLoco(int index, LatLng value) {
    loco.insert(index, value);
  }

  String _selectedTop = '';
  String get selectedTop => _selectedTop;
  set selectedTop(String value) {
    _selectedTop = value;
    prefs.setString('ff_selectedTop', value);
  }

  String _selectedAccessory = 'kurt';
  String get selectedAccessory => _selectedAccessory;
  set selectedAccessory(String value) {
    _selectedAccessory = value;
    prefs.setString('ff_selectedAccessory', value);
  }

  String _selectedHairColor = '';
  String get selectedHairColor => _selectedHairColor;
  set selectedHairColor(String value) {
    _selectedHairColor = value;
    prefs.setString('ff_selectedHairColor', value);
  }

  String _selectedFacialHair = '';
  String get selectedFacialHair => _selectedFacialHair;
  set selectedFacialHair(String value) {
    _selectedFacialHair = value;
    prefs.setString('ff_selectedFacialHair', value);
  }

  String _selectedFacialHairColor = '';
  String get selectedFacialHairColor => _selectedFacialHairColor;
  set selectedFacialHairColor(String value) {
    _selectedFacialHairColor = value;
    prefs.setString('ff_selectedFacialHairColor', value);
  }

  String _selectedClothing = '';
  String get selectedClothing => _selectedClothing;
  set selectedClothing(String value) {
    _selectedClothing = value;
    prefs.setString('ff_selectedClothing', value);
  }

  String _selectedClothingColor = '';
  String get selectedClothingColor => _selectedClothingColor;
  set selectedClothingColor(String value) {
    _selectedClothingColor = value;
    prefs.setString('ff_selectedClothingColor', value);
  }

  String _selectedEyes = '';
  String get selectedEyes => _selectedEyes;
  set selectedEyes(String value) {
    _selectedEyes = value;
    prefs.setString('ff_selectedEyes', value);
  }

  String _selectedEyebrow = '';
  String get selectedEyebrow => _selectedEyebrow;
  set selectedEyebrow(String value) {
    _selectedEyebrow = value;
    prefs.setString('ff_selectedEyebrow', value);
  }

  String _selectedMouth = '';
  String get selectedMouth => _selectedMouth;
  set selectedMouth(String value) {
    _selectedMouth = value;
    prefs.setString('ff_selectedMouth', value);
  }

  String _selectedSkin = '';
  String get selectedSkin => _selectedSkin;
  set selectedSkin(String value) {
    _selectedSkin = value;
    prefs.setString('ff_selectedSkin', value);
  }

  String _userId = '';
  String get userId => _userId;
  set userId(String value) {
    _userId = value;
  }

  String _selectedGraphic = '';
  String get selectedGraphic => _selectedGraphic;
  set selectedGraphic(String value) {
    _selectedGraphic = value;
  }

  String _selectedHatColor = '';
  String get selectedHatColor => _selectedHatColor;
  set selectedHatColor(String value) {
    _selectedHatColor = value;
  }

  String _userName = '';
  String get userName => _userName;
  set userName(String value) {
    _userName = value;
  }

  String _gradeLevel = '';
  String get gradeLevel => _gradeLevel;
  set gradeLevel(String value) {
    _gradeLevel = value;
  }

  List<String> _sports = [];
  List<String> get sports => _sports;
  set sports(List<String> value) {
    _sports = value;
  }

  void addToSports(String value) {
    sports.add(value);
  }

  void removeFromSports(String value) {
    sports.remove(value);
  }

  void removeAtIndexFromSports(int index) {
    sports.removeAt(index);
  }

  void updateSportsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    sports[index] = updateFn(_sports[index]);
  }

  void insertAtIndexInSports(int index, String value) {
    sports.insert(index, value);
  }

  String _userEmail = '';
  String get userEmail => _userEmail;
  set userEmail(String value) {
    _userEmail = value;
  }

  String _userPassword = '';
  String get userPassword => _userPassword;
  set userPassword(String value) {
    _userPassword = value;
  }

  List<String> _eyes = [
    'closed',
    'cry',
    'xDizzy',
    'eyeRoll',
    'happy',
    'hearts',
    'side',
    'squint',
    'surprised',
    'wink',
    'winkWacky'
  ];
  List<String> get eyes => _eyes;
  set eyes(List<String> value) {
    _eyes = value;
  }

  void addToEyes(String value) {
    eyes.add(value);
  }

  void removeFromEyes(String value) {
    eyes.remove(value);
  }

  void removeAtIndexFromEyes(int index) {
    eyes.removeAt(index);
  }

  void updateEyesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    eyes[index] = updateFn(_eyes[index]);
  }

  void insertAtIndexInEyes(int index, String value) {
    eyes.insert(index, value);
  }

  List<String> _ownedEyes = ['default'];
  List<String> get ownedEyes => _ownedEyes;
  set ownedEyes(List<String> value) {
    _ownedEyes = value;
  }

  void addToOwnedEyes(String value) {
    ownedEyes.add(value);
  }

  void removeFromOwnedEyes(String value) {
    ownedEyes.remove(value);
  }

  void removeAtIndexFromOwnedEyes(int index) {
    ownedEyes.removeAt(index);
  }

  void updateOwnedEyesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    ownedEyes[index] = updateFn(_ownedEyes[index]);
  }

  void insertAtIndexInOwnedEyes(int index, String value) {
    ownedEyes.insert(index, value);
  }

  List<String> _accessories = [
    'prescription01',
    'prescription02',
    'sunglasses',
    'wayfarers',
    'round'
  ];
  List<String> get accessories => _accessories;
  set accessories(List<String> value) {
    _accessories = value;
  }

  void addToAccessories(String value) {
    accessories.add(value);
  }

  void removeFromAccessories(String value) {
    accessories.remove(value);
  }

  void removeAtIndexFromAccessories(int index) {
    accessories.removeAt(index);
  }

  void updateAccessoriesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    accessories[index] = updateFn(_accessories[index]);
  }

  void insertAtIndexInAccessories(int index, String value) {
    accessories.insert(index, value);
  }

  List<String> _ownedAccessories = ['kurt'];
  List<String> get ownedAccessories => _ownedAccessories;
  set ownedAccessories(List<String> value) {
    _ownedAccessories = value;
  }

  void addToOwnedAccessories(String value) {
    ownedAccessories.add(value);
  }

  void removeFromOwnedAccessories(String value) {
    ownedAccessories.remove(value);
  }

  void removeAtIndexFromOwnedAccessories(int index) {
    ownedAccessories.removeAt(index);
  }

  void updateOwnedAccessoriesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    ownedAccessories[index] = updateFn(_ownedAccessories[index]);
  }

  void insertAtIndexInOwnedAccessories(int index, String value) {
    ownedAccessories.insert(index, value);
  }

  List<String> _clothes = [
    'blazerAndSweater',
    'collarAndSweater',
    'shirtCrewNeck',
    'shirtScoopNeck',
    'shirtVNeck'
  ];
  List<String> get clothes => _clothes;
  set clothes(List<String> value) {
    _clothes = value;
  }

  void addToClothes(String value) {
    clothes.add(value);
  }

  void removeFromClothes(String value) {
    clothes.remove(value);
  }

  void removeAtIndexFromClothes(int index) {
    clothes.removeAt(index);
  }

  void updateClothesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    clothes[index] = updateFn(_clothes[index]);
  }

  void insertAtIndexInClothes(int index, String value) {
    clothes.insert(index, value);
  }

  List<String> _ownedClothes = ['blazerAndShirt', 'hoodie', 'overall'];
  List<String> get ownedClothes => _ownedClothes;
  set ownedClothes(List<String> value) {
    _ownedClothes = value;
  }

  void addToOwnedClothes(String value) {
    ownedClothes.add(value);
  }

  void removeFromOwnedClothes(String value) {
    ownedClothes.remove(value);
  }

  void removeAtIndexFromOwnedClothes(int index) {
    ownedClothes.removeAt(index);
  }

  void updateOwnedClothesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    ownedClothes[index] = updateFn(_ownedClothes[index]);
  }

  void insertAtIndexInOwnedClothes(int index, String value) {
    ownedClothes.insert(index, value);
  }

  List<String> _ClothingColor = [
    '3c4f5c',
    '262e33',
    '262e33',
    '5199e4',
    '25557c',
    '929598',
    'a7ffc4',
    'b1e2ff',
    'e6e6e6',
    'ff5c5c',
    'ff488e',
    'ffafb9',
    'ffffb1'
  ];
  List<String> get ClothingColor => _ClothingColor;
  set ClothingColor(List<String> value) {
    _ClothingColor = value;
  }

  void addToClothingColor(String value) {
    ClothingColor.add(value);
  }

  void removeFromClothingColor(String value) {
    ClothingColor.remove(value);
  }

  void removeAtIndexFromClothingColor(int index) {
    ClothingColor.removeAt(index);
  }

  void updateClothingColorAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    ClothingColor[index] = updateFn(_ClothingColor[index]);
  }

  void insertAtIndexInClothingColor(int index, String value) {
    ClothingColor.insert(index, value);
  }

  List<String> _ownedClothingColor = ['ffffff'];
  List<String> get ownedClothingColor => _ownedClothingColor;
  set ownedClothingColor(List<String> value) {
    _ownedClothingColor = value;
  }

  void addToOwnedClothingColor(String value) {
    ownedClothingColor.add(value);
  }

  void removeFromOwnedClothingColor(String value) {
    ownedClothingColor.remove(value);
  }

  void removeAtIndexFromOwnedClothingColor(int index) {
    ownedClothingColor.removeAt(index);
  }

  void updateOwnedClothingColorAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    ownedClothingColor[index] = updateFn(_ownedClothingColor[index]);
  }

  void insertAtIndexInOwnedClothingColor(int index, String value) {
    ownedClothingColor.insert(index, value);
  }

  List<String> _eyebrow = [
    'angry',
    'angryNatural',
    'flatNatural',
    'raisedExcited',
    'raisedExcitedNatural',
    'sadConcerned',
    'sadConcernedNatural',
    'unibrowNatural',
    'upDownNatural',
    'upDown'
  ];
  List<String> get eyebrow => _eyebrow;
  set eyebrow(List<String> value) {
    _eyebrow = value;
  }

  void addToEyebrow(String value) {
    eyebrow.add(value);
  }

  void removeFromEyebrow(String value) {
    eyebrow.remove(value);
  }

  void removeAtIndexFromEyebrow(int index) {
    eyebrow.removeAt(index);
  }

  void updateEyebrowAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    eyebrow[index] = updateFn(_eyebrow[index]);
  }

  void insertAtIndexInEyebrow(int index, String value) {
    eyebrow.insert(index, value);
  }

  List<String> _ownedEyebrow = ['default', 'defaultNatural'];
  List<String> get ownedEyebrow => _ownedEyebrow;
  set ownedEyebrow(List<String> value) {
    _ownedEyebrow = value;
  }

  void addToOwnedEyebrow(String value) {
    ownedEyebrow.add(value);
  }

  void removeFromOwnedEyebrow(String value) {
    ownedEyebrow.remove(value);
  }

  void removeAtIndexFromOwnedEyebrow(int index) {
    ownedEyebrow.removeAt(index);
  }

  void updateOwnedEyebrowAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    ownedEyebrow[index] = updateFn(_ownedEyebrow[index]);
  }

  void insertAtIndexInOwnedEyebrow(int index, String value) {
    ownedEyebrow.insert(index, value);
  }

  List<String> _facialHair = [
    'beardMedium',
    'beardMajestic',
    'moustacheFancy',
    'moustacheMagnum'
  ];
  List<String> get facialHair => _facialHair;
  set facialHair(List<String> value) {
    _facialHair = value;
  }

  void addToFacialHair(String value) {
    facialHair.add(value);
  }

  void removeFromFacialHair(String value) {
    facialHair.remove(value);
  }

  void removeAtIndexFromFacialHair(int index) {
    facialHair.removeAt(index);
  }

  void updateFacialHairAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    facialHair[index] = updateFn(_facialHair[index]);
  }

  void insertAtIndexInFacialHair(int index, String value) {
    facialHair.insert(index, value);
  }

  List<String> _ownedFacialHair = ['', 'beardLight'];
  List<String> get ownedFacialHair => _ownedFacialHair;
  set ownedFacialHair(List<String> value) {
    _ownedFacialHair = value;
  }

  void addToOwnedFacialHair(String value) {
    ownedFacialHair.add(value);
  }

  void removeFromOwnedFacialHair(String value) {
    ownedFacialHair.remove(value);
  }

  void removeAtIndexFromOwnedFacialHair(int index) {
    ownedFacialHair.removeAt(index);
  }

  void updateOwnedFacialHairAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    ownedFacialHair[index] = updateFn(_ownedFacialHair[index]);
  }

  void insertAtIndexInOwnedFacialHair(int index, String value) {
    ownedFacialHair.insert(index, value);
  }

  List<String> _facialHairColor = [
    '724133',
    'b58143',
    'c93305',
    'e8e1e1',
    'ecdcbf',
    'f59797'
  ];
  List<String> get facialHairColor => _facialHairColor;
  set facialHairColor(List<String> value) {
    _facialHairColor = value;
  }

  void addToFacialHairColor(String value) {
    facialHairColor.add(value);
  }

  void removeFromFacialHairColor(String value) {
    facialHairColor.remove(value);
  }

  void removeAtIndexFromFacialHairColor(int index) {
    facialHairColor.removeAt(index);
  }

  void updateFacialHairColorAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    facialHairColor[index] = updateFn(_facialHairColor[index]);
  }

  void insertAtIndexInFacialHairColor(int index, String value) {
    facialHairColor.insert(index, value);
  }

  List<String> _ownedFacialHairColor = ['2c1b18', '4a312c', 'd6b370', 'a55728'];
  List<String> get ownedFacialHairColor => _ownedFacialHairColor;
  set ownedFacialHairColor(List<String> value) {
    _ownedFacialHairColor = value;
  }

  void addToOwnedFacialHairColor(String value) {
    ownedFacialHairColor.add(value);
  }

  void removeFromOwnedFacialHairColor(String value) {
    ownedFacialHairColor.remove(value);
  }

  void removeAtIndexFromOwnedFacialHairColor(int index) {
    ownedFacialHairColor.removeAt(index);
  }

  void updateOwnedFacialHairColorAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    ownedFacialHairColor[index] = updateFn(_ownedFacialHairColor[index]);
  }

  void insertAtIndexInOwnedFacialHairColor(int index, String value) {
    ownedFacialHairColor.insert(index, value);
  }

  List<String> _hairColor = ['ecdcbf', 'f59797', 'd6b370', 'c93305', 'e8e1e1'];
  List<String> get hairColor => _hairColor;
  set hairColor(List<String> value) {
    _hairColor = value;
  }

  void addToHairColor(String value) {
    hairColor.add(value);
  }

  void removeFromHairColor(String value) {
    hairColor.remove(value);
  }

  void removeAtIndexFromHairColor(int index) {
    hairColor.removeAt(index);
  }

  void updateHairColorAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    hairColor[index] = updateFn(_hairColor[index]);
  }

  void insertAtIndexInHairColor(int index, String value) {
    hairColor.insert(index, value);
  }

  List<String> _ownedHairColor = [
    'a55728',
    '2c1b18',
    'b58143',
    '4a312c',
    '724133'
  ];
  List<String> get ownedHairColor => _ownedHairColor;
  set ownedHairColor(List<String> value) {
    _ownedHairColor = value;
  }

  void addToOwnedHairColor(String value) {
    ownedHairColor.add(value);
  }

  void removeFromOwnedHairColor(String value) {
    ownedHairColor.remove(value);
  }

  void removeAtIndexFromOwnedHairColor(int index) {
    ownedHairColor.removeAt(index);
  }

  void updateOwnedHairColorAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    ownedHairColor[index] = updateFn(_ownedHairColor[index]);
  }

  void insertAtIndexInOwnedHairColor(int index, String value) {
    ownedHairColor.insert(index, value);
  }

  List<String> _mouth = [
    'concerned',
    'disbelief',
    'eating',
    'grimace',
    'sad',
    'screamOpen',
    'serious',
    'tongue',
    'twinkle',
    'vomit'
  ];
  List<String> get mouth => _mouth;
  set mouth(List<String> value) {
    _mouth = value;
  }

  void addToMouth(String value) {
    mouth.add(value);
  }

  void removeFromMouth(String value) {
    mouth.remove(value);
  }

  void removeAtIndexFromMouth(int index) {
    mouth.removeAt(index);
  }

  void updateMouthAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    mouth[index] = updateFn(_mouth[index]);
  }

  void insertAtIndexInMouth(int index, String value) {
    mouth.insert(index, value);
  }

  List<String> _ownedMouth = ['default', 'smile'];
  List<String> get ownedMouth => _ownedMouth;
  set ownedMouth(List<String> value) {
    _ownedMouth = value;
  }

  void addToOwnedMouth(String value) {
    ownedMouth.add(value);
  }

  void removeFromOwnedMouth(String value) {
    ownedMouth.remove(value);
  }

  void removeAtIndexFromOwnedMouth(int index) {
    ownedMouth.removeAt(index);
  }

  void updateOwnedMouthAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    ownedMouth[index] = updateFn(_ownedMouth[index]);
  }

  void insertAtIndexInOwnedMouth(int index, String value) {
    ownedMouth.insert(index, value);
  }

  List<String> _top = [
    'winterHat02',
    'winterHat03',
    'winterHat04',
    'dreads',
    'frida',
    'fro',
    'froBand',
    'longButNotTooLong',
    'shavedSides',
    'miaWallace',
    'straight01',
    'straight02',
    'straightAndStrand',
    'shaggy',
    'shortCurly',
    'shortFlat',
    'shortRound',
    'shortWaved',
    'theCaesar',
    'theCaesarAndSidePart',
    'sides'
  ];
  List<String> get top => _top;
  set top(List<String> value) {
    _top = value;
  }

  void addToTop(String value) {
    top.add(value);
  }

  void removeFromTop(String value) {
    top.remove(value);
  }

  void removeAtIndexFromTop(int index) {
    top.removeAt(index);
  }

  void updateTopAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    top[index] = updateFn(_top[index]);
  }

  void insertAtIndexInTop(int index, String value) {
    top.insert(index, value);
  }

  List<String> _ownedTop = [
    '',
    'hat',
    'hijab',
    'turban',
    'winterHat1',
    'bigHair',
    'bob',
    'bun',
    'curly',
    'curvy',
    'dreads01',
    'dreads02',
    'frizzle'
  ];
  List<String> get ownedTop => _ownedTop;
  set ownedTop(List<String> value) {
    _ownedTop = value;
  }

  void addToOwnedTop(String value) {
    ownedTop.add(value);
  }

  void removeFromOwnedTop(String value) {
    ownedTop.remove(value);
  }

  void removeAtIndexFromOwnedTop(int index) {
    ownedTop.removeAt(index);
  }

  void updateOwnedTopAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    ownedTop[index] = updateFn(_ownedTop[index]);
  }

  void insertAtIndexInOwnedTop(int index, String value) {
    ownedTop.insert(index, value);
  }

  List<String> _hatColor = [
    '65c9ff',
    '5199e4',
    '25557c',
    '929598',
    'b1e2ff',
    'a7ffc4',
    'PastelGreen',
    'e6e6e6',
    'ff5c5c',
    'ff488e',
    'ffafb9',
    'ffdeb5',
    'ffffb1'
  ];
  List<String> get hatColor => _hatColor;
  set hatColor(List<String> value) {
    _hatColor = value;
  }

  void addToHatColor(String value) {
    hatColor.add(value);
  }

  void removeFromHatColor(String value) {
    hatColor.remove(value);
  }

  void removeAtIndexFromHatColor(int index) {
    hatColor.removeAt(index);
  }

  void updateHatColorAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    hatColor[index] = updateFn(_hatColor[index]);
  }

  void insertAtIndexInHatColor(int index, String value) {
    hatColor.insert(index, value);
  }

  List<String> _ownedHatColor = ['3c4f5c', 'ffffff', '262e33'];
  List<String> get ownedHatColor => _ownedHatColor;
  set ownedHatColor(List<String> value) {
    _ownedHatColor = value;
  }

  void addToOwnedHatColor(String value) {
    ownedHatColor.add(value);
  }

  void removeFromOwnedHatColor(String value) {
    ownedHatColor.remove(value);
  }

  void removeAtIndexFromOwnedHatColor(int index) {
    ownedHatColor.removeAt(index);
  }

  void updateOwnedHatColorAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    ownedHatColor[index] = updateFn(_ownedHatColor[index]);
  }

  void insertAtIndexInOwnedHatColor(int index, String value) {
    ownedHatColor.insert(index, value);
  }

  List<String> _shopTops = [];
  List<String> get shopTops => _shopTops;
  set shopTops(List<String> value) {
    _shopTops = value;
  }

  void addToShopTops(String value) {
    shopTops.add(value);
  }

  void removeFromShopTops(String value) {
    shopTops.remove(value);
  }

  void removeAtIndexFromShopTops(int index) {
    shopTops.removeAt(index);
  }

  void updateShopTopsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    shopTops[index] = updateFn(_shopTops[index]);
  }

  void insertAtIndexInShopTops(int index, String value) {
    shopTops.insert(index, value);
  }

  List<String> _allSkins = [
    'Tanned',
    'Yellow',
    'Pale',
    'Light',
    'Brown',
    'DarkBrown',
    'Black'
  ];
  List<String> get allSkins => _allSkins;
  set allSkins(List<String> value) {
    _allSkins = value;
  }

  void addToAllSkins(String value) {
    allSkins.add(value);
  }

  void removeFromAllSkins(String value) {
    allSkins.remove(value);
  }

  void removeAtIndexFromAllSkins(int index) {
    allSkins.removeAt(index);
  }

  void updateAllSkinsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    allSkins[index] = updateFn(_allSkins[index]);
  }

  void insertAtIndexInAllSkins(int index, String value) {
    allSkins.insert(index, value);
  }

  List<String> _skin = [
    '614335',
    'ae5d29',
    'd08b5b',
    'edb98a',
    'f8d25c',
    'fd9841',
    'ffdbb4'
  ];
  List<String> get skin => _skin;
  set skin(List<String> value) {
    _skin = value;
  }

  void addToSkin(String value) {
    skin.add(value);
  }

  void removeFromSkin(String value) {
    skin.remove(value);
  }

  void removeAtIndexFromSkin(int index) {
    skin.removeAt(index);
  }

  void updateSkinAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    skin[index] = updateFn(_skin[index]);
  }

  void insertAtIndexInSkin(int index, String value) {
    skin.insert(index, value);
  }

  String _friendUid = '';
  String get friendUid => _friendUid;
  set friendUid(String value) {
    _friendUid = value;
  }

  String _googleAccessToken = '';
  String get googleAccessToken => _googleAccessToken;
  set googleAccessToken(String value) {
    _googleAccessToken = value;
  }

  String _idToken = '';
  String get idToken => _idToken;
  set idToken(String value) {
    _idToken = value;
  }

  String _accesstoken = '';
  String get accesstoken => _accesstoken;
  set accesstoken(String value) {
    _accesstoken = value;
  }

  String _randomFunctionNull = '';
  String get randomFunctionNull => _randomFunctionNull;
  set randomFunctionNull(String value) {
    _randomFunctionNull = value;
  }

  final _userDocQueryManager = FutureRequestManager<UsersRecord>();
  Future<UsersRecord> userDocQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<UsersRecord> Function() requestFn,
  }) =>
      _userDocQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserDocQueryCache() => _userDocQueryManager.clear();
  void clearUserDocQueryCacheKey(String? uniqueKey) =>
      _userDocQueryManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
