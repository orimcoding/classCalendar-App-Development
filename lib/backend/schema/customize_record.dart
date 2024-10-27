import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomizeRecord extends FirestoreRecord {
  CustomizeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Accessories" field.
  String? _accessories;
  String get accessories => _accessories ?? '';
  bool hasAccessories() => _accessories != null;

  // "Top" field.
  String? _top;
  String get top => _top ?? '';
  bool hasTop() => _top != null;

  // "HairColor" field.
  String? _hairColor;
  String get hairColor => _hairColor ?? '';
  bool hasHairColor() => _hairColor != null;

  // "FacialHair" field.
  String? _facialHair;
  String get facialHair => _facialHair ?? '';
  bool hasFacialHair() => _facialHair != null;

  // "FacialHairColor" field.
  String? _facialHairColor;
  String get facialHairColor => _facialHairColor ?? '';
  bool hasFacialHairColor() => _facialHairColor != null;

  // "Clothes" field.
  String? _clothes;
  String get clothes => _clothes ?? '';
  bool hasClothes() => _clothes != null;

  // "ClothingColor" field.
  String? _clothingColor;
  String get clothingColor => _clothingColor ?? '';
  bool hasClothingColor() => _clothingColor != null;

  // "Eyes" field.
  String? _eyes;
  String get eyes => _eyes ?? '';
  bool hasEyes() => _eyes != null;

  // "Eyebrows" field.
  String? _eyebrows;
  String get eyebrows => _eyebrows ?? '';
  bool hasEyebrows() => _eyebrows != null;

  // "Skin" field.
  String? _skin;
  String get skin => _skin ?? '';
  bool hasSkin() => _skin != null;

  // "Mouth" field.
  String? _mouth;
  String get mouth => _mouth ?? '';
  bool hasMouth() => _mouth != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _accessories = snapshotData['Accessories'] as String?;
    _top = snapshotData['Top'] as String?;
    _hairColor = snapshotData['HairColor'] as String?;
    _facialHair = snapshotData['FacialHair'] as String?;
    _facialHairColor = snapshotData['FacialHairColor'] as String?;
    _clothes = snapshotData['Clothes'] as String?;
    _clothingColor = snapshotData['ClothingColor'] as String?;
    _eyes = snapshotData['Eyes'] as String?;
    _eyebrows = snapshotData['Eyebrows'] as String?;
    _skin = snapshotData['Skin'] as String?;
    _mouth = snapshotData['Mouth'] as String?;
    _userId = snapshotData['userId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('customize');

  static Stream<CustomizeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CustomizeRecord.fromSnapshot(s));

  static Future<CustomizeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CustomizeRecord.fromSnapshot(s));

  static CustomizeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CustomizeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CustomizeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CustomizeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CustomizeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CustomizeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCustomizeRecordData({
  String? accessories,
  String? top,
  String? hairColor,
  String? facialHair,
  String? facialHairColor,
  String? clothes,
  String? clothingColor,
  String? eyes,
  String? eyebrows,
  String? skin,
  String? mouth,
  String? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Accessories': accessories,
      'Top': top,
      'HairColor': hairColor,
      'FacialHair': facialHair,
      'FacialHairColor': facialHairColor,
      'Clothes': clothes,
      'ClothingColor': clothingColor,
      'Eyes': eyes,
      'Eyebrows': eyebrows,
      'Skin': skin,
      'Mouth': mouth,
      'userId': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class CustomizeRecordDocumentEquality implements Equality<CustomizeRecord> {
  const CustomizeRecordDocumentEquality();

  @override
  bool equals(CustomizeRecord? e1, CustomizeRecord? e2) {
    return e1?.accessories == e2?.accessories &&
        e1?.top == e2?.top &&
        e1?.hairColor == e2?.hairColor &&
        e1?.facialHair == e2?.facialHair &&
        e1?.facialHairColor == e2?.facialHairColor &&
        e1?.clothes == e2?.clothes &&
        e1?.clothingColor == e2?.clothingColor &&
        e1?.eyes == e2?.eyes &&
        e1?.eyebrows == e2?.eyebrows &&
        e1?.skin == e2?.skin &&
        e1?.mouth == e2?.mouth &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(CustomizeRecord? e) => const ListEquality().hash([
        e?.accessories,
        e?.top,
        e?.hairColor,
        e?.facialHair,
        e?.facialHairColor,
        e?.clothes,
        e?.clothingColor,
        e?.eyes,
        e?.eyebrows,
        e?.skin,
        e?.mouth,
        e?.userId
      ]);

  @override
  bool isValidKey(Object? o) => o is CustomizeRecord;
}
