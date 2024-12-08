import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "selectedGrade" field.
  String? _selectedGrade;
  String get selectedGrade => _selectedGrade ?? '';
  bool hasSelectedGrade() => _selectedGrade != null;

  // "coins" field.
  int? _coins;
  int get coins => _coins ?? 0;
  bool hasCoins() => _coins != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "deleted" field.
  bool? _deleted;
  bool get deleted => _deleted ?? false;
  bool hasDeleted() => _deleted != null;

  // "dailyAds" field.
  int? _dailyAds;
  int get dailyAds => _dailyAds ?? 0;
  bool hasDailyAds() => _dailyAds != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "ownedTops" field.
  List<String>? _ownedTops;
  List<String> get ownedTops => _ownedTops ?? const [];
  bool hasOwnedTops() => _ownedTops != null;

  // "shopTops" field.
  List<String>? _shopTops;
  List<String> get shopTops => _shopTops ?? const [];
  bool hasShopTops() => _shopTops != null;

  // "ownedAccessories" field.
  List<String>? _ownedAccessories;
  List<String> get ownedAccessories => _ownedAccessories ?? const [];
  bool hasOwnedAccessories() => _ownedAccessories != null;

  // "shopAccessories" field.
  List<String>? _shopAccessories;
  List<String> get shopAccessories => _shopAccessories ?? const [];
  bool hasShopAccessories() => _shopAccessories != null;

  // "selectedTop" field.
  String? _selectedTop;
  String get selectedTop => _selectedTop ?? '';
  bool hasSelectedTop() => _selectedTop != null;

  // "selectedAccessories" field.
  String? _selectedAccessories;
  String get selectedAccessories => _selectedAccessories ?? '';
  bool hasSelectedAccessories() => _selectedAccessories != null;

  // "ownedHairColors" field.
  List<String>? _ownedHairColors;
  List<String> get ownedHairColors => _ownedHairColors ?? const [];
  bool hasOwnedHairColors() => _ownedHairColors != null;

  // "shopHairColors" field.
  List<String>? _shopHairColors;
  List<String> get shopHairColors => _shopHairColors ?? const [];
  bool hasShopHairColors() => _shopHairColors != null;

  // "selectedHairColors" field.
  String? _selectedHairColors;
  String get selectedHairColors => _selectedHairColors ?? '';
  bool hasSelectedHairColors() => _selectedHairColors != null;

  // "ownedHatColors" field.
  List<String>? _ownedHatColors;
  List<String> get ownedHatColors => _ownedHatColors ?? const [];
  bool hasOwnedHatColors() => _ownedHatColors != null;

  // "shopHatColors" field.
  List<String>? _shopHatColors;
  List<String> get shopHatColors => _shopHatColors ?? const [];
  bool hasShopHatColors() => _shopHatColors != null;

  // "selectedHatColors" field.
  String? _selectedHatColors;
  String get selectedHatColors => _selectedHatColors ?? '';
  bool hasSelectedHatColors() => _selectedHatColors != null;

  // "ownedFacialHair" field.
  List<String>? _ownedFacialHair;
  List<String> get ownedFacialHair => _ownedFacialHair ?? const [];
  bool hasOwnedFacialHair() => _ownedFacialHair != null;

  // "shopFacialHairs" field.
  List<String>? _shopFacialHairs;
  List<String> get shopFacialHairs => _shopFacialHairs ?? const [];
  bool hasShopFacialHairs() => _shopFacialHairs != null;

  // "selectedFacialHairs" field.
  String? _selectedFacialHairs;
  String get selectedFacialHairs => _selectedFacialHairs ?? '';
  bool hasSelectedFacialHairs() => _selectedFacialHairs != null;

  // "ownedFacialHairColors" field.
  List<String>? _ownedFacialHairColors;
  List<String> get ownedFacialHairColors => _ownedFacialHairColors ?? const [];
  bool hasOwnedFacialHairColors() => _ownedFacialHairColors != null;

  // "shopFacialHairColors" field.
  List<String>? _shopFacialHairColors;
  List<String> get shopFacialHairColors => _shopFacialHairColors ?? const [];
  bool hasShopFacialHairColors() => _shopFacialHairColors != null;

  // "selectedFacialHairColors" field.
  String? _selectedFacialHairColors;
  String get selectedFacialHairColors => _selectedFacialHairColors ?? '';
  bool hasSelectedFacialHairColors() => _selectedFacialHairColors != null;

  // "ownedClothes" field.
  List<String>? _ownedClothes;
  List<String> get ownedClothes => _ownedClothes ?? const [];
  bool hasOwnedClothes() => _ownedClothes != null;

  // "shopClothes" field.
  List<String>? _shopClothes;
  List<String> get shopClothes => _shopClothes ?? const [];
  bool hasShopClothes() => _shopClothes != null;

  // "selectedClothes" field.
  String? _selectedClothes;
  String get selectedClothes => _selectedClothes ?? '';
  bool hasSelectedClothes() => _selectedClothes != null;

  // "ownedColorFabric" field.
  List<String>? _ownedColorFabric;
  List<String> get ownedColorFabric => _ownedColorFabric ?? const [];
  bool hasOwnedColorFabric() => _ownedColorFabric != null;

  // "shopColorFabric" field.
  List<String>? _shopColorFabric;
  List<String> get shopColorFabric => _shopColorFabric ?? const [];
  bool hasShopColorFabric() => _shopColorFabric != null;

  // "selectedColorFabric" field.
  String? _selectedColorFabric;
  String get selectedColorFabric => _selectedColorFabric ?? '';
  bool hasSelectedColorFabric() => _selectedColorFabric != null;

  // "ownedEyes" field.
  List<String>? _ownedEyes;
  List<String> get ownedEyes => _ownedEyes ?? const [];
  bool hasOwnedEyes() => _ownedEyes != null;

  // "shopEyes" field.
  List<String>? _shopEyes;
  List<String> get shopEyes => _shopEyes ?? const [];
  bool hasShopEyes() => _shopEyes != null;

  // "selectedEyes" field.
  String? _selectedEyes;
  String get selectedEyes => _selectedEyes ?? '';
  bool hasSelectedEyes() => _selectedEyes != null;

  // "ownedEyebrows" field.
  List<String>? _ownedEyebrows;
  List<String> get ownedEyebrows => _ownedEyebrows ?? const [];
  bool hasOwnedEyebrows() => _ownedEyebrows != null;

  // "shopEyebrows" field.
  List<String>? _shopEyebrows;
  List<String> get shopEyebrows => _shopEyebrows ?? const [];
  bool hasShopEyebrows() => _shopEyebrows != null;

  // "selectedEyebrows" field.
  String? _selectedEyebrows;
  String get selectedEyebrows => _selectedEyebrows ?? '';
  bool hasSelectedEyebrows() => _selectedEyebrows != null;

  // "ownedMouth" field.
  List<String>? _ownedMouth;
  List<String> get ownedMouth => _ownedMouth ?? const [];
  bool hasOwnedMouth() => _ownedMouth != null;

  // "shopMouth" field.
  List<String>? _shopMouth;
  List<String> get shopMouth => _shopMouth ?? const [];
  bool hasShopMouth() => _shopMouth != null;

  // "selectedMouth" field.
  String? _selectedMouth;
  String get selectedMouth => _selectedMouth ?? '';
  bool hasSelectedMouth() => _selectedMouth != null;

  // "skins" field.
  List<String>? _skins;
  List<String> get skins => _skins ?? const [];
  bool hasSkins() => _skins != null;

  // "selectedSkin" field.
  String? _selectedSkin;
  String get selectedSkin => _selectedSkin ?? '';
  bool hasSelectedSkin() => _selectedSkin != null;

  // "dailyLimit" field.
  bool? _dailyLimit;
  bool get dailyLimit => _dailyLimit ?? false;
  bool hasDailyLimit() => _dailyLimit != null;

  // "yesterday" field.
  DateTime? _yesterday;
  DateTime? get yesterday => _yesterday;
  bool hasYesterday() => _yesterday != null;

  // "lastDailyCoinTime" field.
  DateTime? _lastDailyCoinTime;
  DateTime? get lastDailyCoinTime => _lastDailyCoinTime;
  bool hasLastDailyCoinTime() => _lastDailyCoinTime != null;

  // "dailyTasks" field.
  int? _dailyTasks;
  int get dailyTasks => _dailyTasks ?? 0;
  bool hasDailyTasks() => _dailyTasks != null;

  // "dailyAssignments" field.
  int? _dailyAssignments;
  int get dailyAssignments => _dailyAssignments ?? 0;
  bool hasDailyAssignments() => _dailyAssignments != null;

  // "lastResetDate" field.
  DateTime? _lastResetDate;
  DateTime? get lastResetDate => _lastResetDate;
  bool hasLastResetDate() => _lastResetDate != null;

  // "streakb" field.
  bool? _streakb;
  bool get streakb => _streakb ?? false;
  bool hasStreakb() => _streakb != null;

  // "lastTaskDate" field.
  DateTime? _lastTaskDate;
  DateTime? get lastTaskDate => _lastTaskDate;
  bool hasLastTaskDate() => _lastTaskDate != null;

  // "streak" field.
  int? _streak;
  int get streak => _streak ?? 0;
  bool hasStreak() => _streak != null;

  // "lastVisit" field.
  DateTime? _lastVisit;
  DateTime? get lastVisit => _lastVisit;
  bool hasLastVisit() => _lastVisit != null;

  // "lastvisitsince" field.
  int? _lastvisitsince;
  int get lastvisitsince => _lastvisitsince ?? 0;
  bool hasLastvisitsince() => _lastvisitsince != null;

  // "lastex" field.
  DateTime? _lastex;
  DateTime? get lastex => _lastex;
  bool hasLastex() => _lastex != null;

  // "lastexsince" field.
  int? _lastexsince;
  int get lastexsince => _lastexsince ?? 0;
  bool hasLastexsince() => _lastexsince != null;

  // "homeWalk" field.
  bool? _homeWalk;
  bool get homeWalk => _homeWalk ?? false;
  bool hasHomeWalk() => _homeWalk != null;

  // "profileWalk" field.
  bool? _profileWalk;
  bool get profileWalk => _profileWalk ?? false;
  bool hasProfileWalk() => _profileWalk != null;

  // "taskWalk" field.
  bool? _taskWalk;
  bool get taskWalk => _taskWalk ?? false;
  bool hasTaskWalk() => _taskWalk != null;

  // "AssWalk" field.
  bool? _assWalk;
  bool get assWalk => _assWalk ?? false;
  bool hasAssWalk() => _assWalk != null;

  // "lastAssignmentDate" field.
  DateTime? _lastAssignmentDate;
  DateTime? get lastAssignmentDate => _lastAssignmentDate;
  bool hasLastAssignmentDate() => _lastAssignmentDate != null;

  // "screenshotUrl" field.
  String? _screenshotUrl;
  String get screenshotUrl => _screenshotUrl ?? '';
  bool hasScreenshotUrl() => _screenshotUrl != null;

  // "streakCount" field.
  int? _streakCount;
  int get streakCount => _streakCount ?? 0;
  bool hasStreakCount() => _streakCount != null;

  // "lastLoginDate" field.
  DateTime? _lastLoginDate;
  DateTime? get lastLoginDate => _lastLoginDate;
  bool hasLastLoginDate() => _lastLoginDate != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "access_token" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  bool hasAccessToken() => _accessToken != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _selectedGrade = snapshotData['selectedGrade'] as String?;
    _coins = castToType<int>(snapshotData['coins']);
    _password = snapshotData['password'] as String?;
    _deleted = snapshotData['deleted'] as bool?;
    _dailyAds = castToType<int>(snapshotData['dailyAds']);
    _photoUrl = snapshotData['photo_url'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _ownedTops = getDataList(snapshotData['ownedTops']);
    _shopTops = getDataList(snapshotData['shopTops']);
    _ownedAccessories = getDataList(snapshotData['ownedAccessories']);
    _shopAccessories = getDataList(snapshotData['shopAccessories']);
    _selectedTop = snapshotData['selectedTop'] as String?;
    _selectedAccessories = snapshotData['selectedAccessories'] as String?;
    _ownedHairColors = getDataList(snapshotData['ownedHairColors']);
    _shopHairColors = getDataList(snapshotData['shopHairColors']);
    _selectedHairColors = snapshotData['selectedHairColors'] as String?;
    _ownedHatColors = getDataList(snapshotData['ownedHatColors']);
    _shopHatColors = getDataList(snapshotData['shopHatColors']);
    _selectedHatColors = snapshotData['selectedHatColors'] as String?;
    _ownedFacialHair = getDataList(snapshotData['ownedFacialHair']);
    _shopFacialHairs = getDataList(snapshotData['shopFacialHairs']);
    _selectedFacialHairs = snapshotData['selectedFacialHairs'] as String?;
    _ownedFacialHairColors = getDataList(snapshotData['ownedFacialHairColors']);
    _shopFacialHairColors = getDataList(snapshotData['shopFacialHairColors']);
    _selectedFacialHairColors =
        snapshotData['selectedFacialHairColors'] as String?;
    _ownedClothes = getDataList(snapshotData['ownedClothes']);
    _shopClothes = getDataList(snapshotData['shopClothes']);
    _selectedClothes = snapshotData['selectedClothes'] as String?;
    _ownedColorFabric = getDataList(snapshotData['ownedColorFabric']);
    _shopColorFabric = getDataList(snapshotData['shopColorFabric']);
    _selectedColorFabric = snapshotData['selectedColorFabric'] as String?;
    _ownedEyes = getDataList(snapshotData['ownedEyes']);
    _shopEyes = getDataList(snapshotData['shopEyes']);
    _selectedEyes = snapshotData['selectedEyes'] as String?;
    _ownedEyebrows = getDataList(snapshotData['ownedEyebrows']);
    _shopEyebrows = getDataList(snapshotData['shopEyebrows']);
    _selectedEyebrows = snapshotData['selectedEyebrows'] as String?;
    _ownedMouth = getDataList(snapshotData['ownedMouth']);
    _shopMouth = getDataList(snapshotData['shopMouth']);
    _selectedMouth = snapshotData['selectedMouth'] as String?;
    _skins = getDataList(snapshotData['skins']);
    _selectedSkin = snapshotData['selectedSkin'] as String?;
    _dailyLimit = snapshotData['dailyLimit'] as bool?;
    _yesterday = snapshotData['yesterday'] as DateTime?;
    _lastDailyCoinTime = snapshotData['lastDailyCoinTime'] as DateTime?;
    _dailyTasks = castToType<int>(snapshotData['dailyTasks']);
    _dailyAssignments = castToType<int>(snapshotData['dailyAssignments']);
    _lastResetDate = snapshotData['lastResetDate'] as DateTime?;
    _streakb = snapshotData['streakb'] as bool?;
    _lastTaskDate = snapshotData['lastTaskDate'] as DateTime?;
    _streak = castToType<int>(snapshotData['streak']);
    _lastVisit = snapshotData['lastVisit'] as DateTime?;
    _lastvisitsince = castToType<int>(snapshotData['lastvisitsince']);
    _lastex = snapshotData['lastex'] as DateTime?;
    _lastexsince = castToType<int>(snapshotData['lastexsince']);
    _homeWalk = snapshotData['homeWalk'] as bool?;
    _profileWalk = snapshotData['profileWalk'] as bool?;
    _taskWalk = snapshotData['taskWalk'] as bool?;
    _assWalk = snapshotData['AssWalk'] as bool?;
    _lastAssignmentDate = snapshotData['lastAssignmentDate'] as DateTime?;
    _screenshotUrl = snapshotData['screenshotUrl'] as String?;
    _streakCount = castToType<int>(snapshotData['streakCount']);
    _lastLoginDate = snapshotData['lastLoginDate'] as DateTime?;
    _shortDescription = snapshotData['shortDescription'] as String?;
    _lastActiveTime = snapshotData['last_active_time'] as DateTime?;
    _role = snapshotData['role'] as String?;
    _title = snapshotData['title'] as String?;
    _accessToken = snapshotData['access_token'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? uid,
  DateTime? createdTime,
  String? selectedGrade,
  int? coins,
  String? password,
  bool? deleted,
  int? dailyAds,
  String? photoUrl,
  String? phoneNumber,
  String? selectedTop,
  String? selectedAccessories,
  String? selectedHairColors,
  String? selectedHatColors,
  String? selectedFacialHairs,
  String? selectedFacialHairColors,
  String? selectedClothes,
  String? selectedColorFabric,
  String? selectedEyes,
  String? selectedEyebrows,
  String? selectedMouth,
  String? selectedSkin,
  bool? dailyLimit,
  DateTime? yesterday,
  DateTime? lastDailyCoinTime,
  int? dailyTasks,
  int? dailyAssignments,
  DateTime? lastResetDate,
  bool? streakb,
  DateTime? lastTaskDate,
  int? streak,
  DateTime? lastVisit,
  int? lastvisitsince,
  DateTime? lastex,
  int? lastexsince,
  bool? homeWalk,
  bool? profileWalk,
  bool? taskWalk,
  bool? assWalk,
  DateTime? lastAssignmentDate,
  String? screenshotUrl,
  int? streakCount,
  DateTime? lastLoginDate,
  String? shortDescription,
  DateTime? lastActiveTime,
  String? role,
  String? title,
  String? accessToken,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'uid': uid,
      'created_time': createdTime,
      'selectedGrade': selectedGrade,
      'coins': coins,
      'password': password,
      'deleted': deleted,
      'dailyAds': dailyAds,
      'photo_url': photoUrl,
      'phone_number': phoneNumber,
      'selectedTop': selectedTop,
      'selectedAccessories': selectedAccessories,
      'selectedHairColors': selectedHairColors,
      'selectedHatColors': selectedHatColors,
      'selectedFacialHairs': selectedFacialHairs,
      'selectedFacialHairColors': selectedFacialHairColors,
      'selectedClothes': selectedClothes,
      'selectedColorFabric': selectedColorFabric,
      'selectedEyes': selectedEyes,
      'selectedEyebrows': selectedEyebrows,
      'selectedMouth': selectedMouth,
      'selectedSkin': selectedSkin,
      'dailyLimit': dailyLimit,
      'yesterday': yesterday,
      'lastDailyCoinTime': lastDailyCoinTime,
      'dailyTasks': dailyTasks,
      'dailyAssignments': dailyAssignments,
      'lastResetDate': lastResetDate,
      'streakb': streakb,
      'lastTaskDate': lastTaskDate,
      'streak': streak,
      'lastVisit': lastVisit,
      'lastvisitsince': lastvisitsince,
      'lastex': lastex,
      'lastexsince': lastexsince,
      'homeWalk': homeWalk,
      'profileWalk': profileWalk,
      'taskWalk': taskWalk,
      'AssWalk': assWalk,
      'lastAssignmentDate': lastAssignmentDate,
      'screenshotUrl': screenshotUrl,
      'streakCount': streakCount,
      'lastLoginDate': lastLoginDate,
      'shortDescription': shortDescription,
      'last_active_time': lastActiveTime,
      'role': role,
      'title': title,
      'access_token': accessToken,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.selectedGrade == e2?.selectedGrade &&
        e1?.coins == e2?.coins &&
        e1?.password == e2?.password &&
        e1?.deleted == e2?.deleted &&
        e1?.dailyAds == e2?.dailyAds &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.phoneNumber == e2?.phoneNumber &&
        listEquality.equals(e1?.ownedTops, e2?.ownedTops) &&
        listEquality.equals(e1?.shopTops, e2?.shopTops) &&
        listEquality.equals(e1?.ownedAccessories, e2?.ownedAccessories) &&
        listEquality.equals(e1?.shopAccessories, e2?.shopAccessories) &&
        e1?.selectedTop == e2?.selectedTop &&
        e1?.selectedAccessories == e2?.selectedAccessories &&
        listEquality.equals(e1?.ownedHairColors, e2?.ownedHairColors) &&
        listEquality.equals(e1?.shopHairColors, e2?.shopHairColors) &&
        e1?.selectedHairColors == e2?.selectedHairColors &&
        listEquality.equals(e1?.ownedHatColors, e2?.ownedHatColors) &&
        listEquality.equals(e1?.shopHatColors, e2?.shopHatColors) &&
        e1?.selectedHatColors == e2?.selectedHatColors &&
        listEquality.equals(e1?.ownedFacialHair, e2?.ownedFacialHair) &&
        listEquality.equals(e1?.shopFacialHairs, e2?.shopFacialHairs) &&
        e1?.selectedFacialHairs == e2?.selectedFacialHairs &&
        listEquality.equals(
            e1?.ownedFacialHairColors, e2?.ownedFacialHairColors) &&
        listEquality.equals(
            e1?.shopFacialHairColors, e2?.shopFacialHairColors) &&
        e1?.selectedFacialHairColors == e2?.selectedFacialHairColors &&
        listEquality.equals(e1?.ownedClothes, e2?.ownedClothes) &&
        listEquality.equals(e1?.shopClothes, e2?.shopClothes) &&
        e1?.selectedClothes == e2?.selectedClothes &&
        listEquality.equals(e1?.ownedColorFabric, e2?.ownedColorFabric) &&
        listEquality.equals(e1?.shopColorFabric, e2?.shopColorFabric) &&
        e1?.selectedColorFabric == e2?.selectedColorFabric &&
        listEquality.equals(e1?.ownedEyes, e2?.ownedEyes) &&
        listEquality.equals(e1?.shopEyes, e2?.shopEyes) &&
        e1?.selectedEyes == e2?.selectedEyes &&
        listEquality.equals(e1?.ownedEyebrows, e2?.ownedEyebrows) &&
        listEquality.equals(e1?.shopEyebrows, e2?.shopEyebrows) &&
        e1?.selectedEyebrows == e2?.selectedEyebrows &&
        listEquality.equals(e1?.ownedMouth, e2?.ownedMouth) &&
        listEquality.equals(e1?.shopMouth, e2?.shopMouth) &&
        e1?.selectedMouth == e2?.selectedMouth &&
        listEquality.equals(e1?.skins, e2?.skins) &&
        e1?.selectedSkin == e2?.selectedSkin &&
        e1?.dailyLimit == e2?.dailyLimit &&
        e1?.yesterday == e2?.yesterday &&
        e1?.lastDailyCoinTime == e2?.lastDailyCoinTime &&
        e1?.dailyTasks == e2?.dailyTasks &&
        e1?.dailyAssignments == e2?.dailyAssignments &&
        e1?.lastResetDate == e2?.lastResetDate &&
        e1?.streakb == e2?.streakb &&
        e1?.lastTaskDate == e2?.lastTaskDate &&
        e1?.streak == e2?.streak &&
        e1?.lastVisit == e2?.lastVisit &&
        e1?.lastvisitsince == e2?.lastvisitsince &&
        e1?.lastex == e2?.lastex &&
        e1?.lastexsince == e2?.lastexsince &&
        e1?.homeWalk == e2?.homeWalk &&
        e1?.profileWalk == e2?.profileWalk &&
        e1?.taskWalk == e2?.taskWalk &&
        e1?.assWalk == e2?.assWalk &&
        e1?.lastAssignmentDate == e2?.lastAssignmentDate &&
        e1?.screenshotUrl == e2?.screenshotUrl &&
        e1?.streakCount == e2?.streakCount &&
        e1?.lastLoginDate == e2?.lastLoginDate &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        e1?.role == e2?.role &&
        e1?.title == e2?.title &&
        e1?.accessToken == e2?.accessToken;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.uid,
        e?.createdTime,
        e?.selectedGrade,
        e?.coins,
        e?.password,
        e?.deleted,
        e?.dailyAds,
        e?.photoUrl,
        e?.phoneNumber,
        e?.ownedTops,
        e?.shopTops,
        e?.ownedAccessories,
        e?.shopAccessories,
        e?.selectedTop,
        e?.selectedAccessories,
        e?.ownedHairColors,
        e?.shopHairColors,
        e?.selectedHairColors,
        e?.ownedHatColors,
        e?.shopHatColors,
        e?.selectedHatColors,
        e?.ownedFacialHair,
        e?.shopFacialHairs,
        e?.selectedFacialHairs,
        e?.ownedFacialHairColors,
        e?.shopFacialHairColors,
        e?.selectedFacialHairColors,
        e?.ownedClothes,
        e?.shopClothes,
        e?.selectedClothes,
        e?.ownedColorFabric,
        e?.shopColorFabric,
        e?.selectedColorFabric,
        e?.ownedEyes,
        e?.shopEyes,
        e?.selectedEyes,
        e?.ownedEyebrows,
        e?.shopEyebrows,
        e?.selectedEyebrows,
        e?.ownedMouth,
        e?.shopMouth,
        e?.selectedMouth,
        e?.skins,
        e?.selectedSkin,
        e?.dailyLimit,
        e?.yesterday,
        e?.lastDailyCoinTime,
        e?.dailyTasks,
        e?.dailyAssignments,
        e?.lastResetDate,
        e?.streakb,
        e?.lastTaskDate,
        e?.streak,
        e?.lastVisit,
        e?.lastvisitsince,
        e?.lastex,
        e?.lastexsince,
        e?.homeWalk,
        e?.profileWalk,
        e?.taskWalk,
        e?.assWalk,
        e?.lastAssignmentDate,
        e?.screenshotUrl,
        e?.streakCount,
        e?.lastLoginDate,
        e?.shortDescription,
        e?.lastActiveTime,
        e?.role,
        e?.title,
        e?.accessToken
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
