import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssignmentsRecord extends FirestoreRecord {
  AssignmentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "subject" field.
  String? _subject;
  String get subject => _subject ?? '';
  bool hasSubject() => _subject != null;

  // "ownerId" field.
  String? _ownerId;
  String get ownerId => _ownerId ?? '';
  bool hasOwnerId() => _ownerId != null;

  // "completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  bool hasCompleted() => _completed != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _subject = snapshotData['subject'] as String?;
    _ownerId = snapshotData['ownerId'] as String?;
    _completed = snapshotData['completed'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Assignments');

  static Stream<AssignmentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AssignmentsRecord.fromSnapshot(s));

  static Future<AssignmentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AssignmentsRecord.fromSnapshot(s));

  static AssignmentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AssignmentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AssignmentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AssignmentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AssignmentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AssignmentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAssignmentsRecordData({
  String? name,
  String? description,
  DateTime? date,
  String? subject,
  String? ownerId,
  bool? completed,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'date': date,
      'subject': subject,
      'ownerId': ownerId,
      'completed': completed,
    }.withoutNulls,
  );

  return firestoreData;
}

class AssignmentsRecordDocumentEquality implements Equality<AssignmentsRecord> {
  const AssignmentsRecordDocumentEquality();

  @override
  bool equals(AssignmentsRecord? e1, AssignmentsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.date == e2?.date &&
        e1?.subject == e2?.subject &&
        e1?.ownerId == e2?.ownerId &&
        e1?.completed == e2?.completed;
  }

  @override
  int hash(AssignmentsRecord? e) => const ListEquality().hash(
      [e?.name, e?.description, e?.date, e?.subject, e?.ownerId, e?.completed]);

  @override
  bool isValidKey(Object? o) => o is AssignmentsRecord;
}
