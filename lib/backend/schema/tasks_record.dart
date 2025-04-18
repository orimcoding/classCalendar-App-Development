import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TasksRecord extends FirestoreRecord {
  TasksRecord._(
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

  // "start" field.
  DateTime? _start;
  DateTime? get start => _start;
  bool hasStart() => _start != null;

  // "completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  bool hasCompleted() => _completed != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "ownerId" field.
  String? _ownerId;
  String get ownerId => _ownerId ?? '';
  bool hasOwnerId() => _ownerId != null;

  // "subject" field.
  String? _subject;
  String get subject => _subject ?? '';
  bool hasSubject() => _subject != null;

  // "screenshotUrl" field.
  String? _screenshotUrl;
  String get screenshotUrl => _screenshotUrl ?? '';
  bool hasScreenshotUrl() => _screenshotUrl != null;

  // "taskType" field.
  String? _taskType;
  String get taskType => _taskType ?? '';
  bool hasTaskType() => _taskType != null;

  // "emojiRepresentation" field.
  String? _emojiRepresentation;
  String get emojiRepresentation => _emojiRepresentation ?? '';
  bool hasEmojiRepresentation() => _emojiRepresentation != null;

  // "taskLocation" field.
  String? _taskLocation;
  String get taskLocation => _taskLocation ?? '';
  bool hasTaskLocation() => _taskLocation != null;

  // "notificationTime" field.
  int? _notificationTime;
  int get notificationTime => _notificationTime ?? 0;
  bool hasNotificationTime() => _notificationTime != null;

  // "courseName" field.
  String? _courseName;
  String get courseName => _courseName ?? '';
  bool hasCourseName() => _courseName != null;

  // "source" field.
  String? _source;
  String get source => _source ?? '';
  bool hasSource() => _source != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _start = snapshotData['start'] as DateTime?;
    _completed = snapshotData['completed'] as bool?;
    _user = snapshotData['user'] as DocumentReference?;
    _ownerId = snapshotData['ownerId'] as String?;
    _subject = snapshotData['subject'] as String?;
    _screenshotUrl = snapshotData['screenshotUrl'] as String?;
    _taskType = snapshotData['taskType'] as String?;
    _emojiRepresentation = snapshotData['emojiRepresentation'] as String?;
    _taskLocation = snapshotData['taskLocation'] as String?;
    _notificationTime = castToType<int>(snapshotData['notificationTime']);
    _courseName = snapshotData['courseName'] as String?;
    _source = snapshotData['source'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tasks');

  static Stream<TasksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TasksRecord.fromSnapshot(s));

  static Future<TasksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TasksRecord.fromSnapshot(s));

  static TasksRecord fromSnapshot(DocumentSnapshot snapshot) => TasksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TasksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TasksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TasksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TasksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTasksRecordData({
  String? name,
  String? description,
  DateTime? start,
  bool? completed,
  DocumentReference? user,
  String? ownerId,
  String? subject,
  String? screenshotUrl,
  String? taskType,
  String? emojiRepresentation,
  String? taskLocation,
  int? notificationTime,
  String? courseName,
  String? source,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'start': start,
      'completed': completed,
      'user': user,
      'ownerId': ownerId,
      'subject': subject,
      'screenshotUrl': screenshotUrl,
      'taskType': taskType,
      'emojiRepresentation': emojiRepresentation,
      'taskLocation': taskLocation,
      'notificationTime': notificationTime,
      'courseName': courseName,
      'source': source,
    }.withoutNulls,
  );

  return firestoreData;
}

class TasksRecordDocumentEquality implements Equality<TasksRecord> {
  const TasksRecordDocumentEquality();

  @override
  bool equals(TasksRecord? e1, TasksRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.start == e2?.start &&
        e1?.completed == e2?.completed &&
        e1?.user == e2?.user &&
        e1?.ownerId == e2?.ownerId &&
        e1?.subject == e2?.subject &&
        e1?.screenshotUrl == e2?.screenshotUrl &&
        e1?.taskType == e2?.taskType &&
        e1?.emojiRepresentation == e2?.emojiRepresentation &&
        e1?.taskLocation == e2?.taskLocation &&
        e1?.notificationTime == e2?.notificationTime &&
        e1?.courseName == e2?.courseName &&
        e1?.source == e2?.source;
  }

  @override
  int hash(TasksRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.start,
        e?.completed,
        e?.user,
        e?.ownerId,
        e?.subject,
        e?.screenshotUrl,
        e?.taskType,
        e?.emojiRepresentation,
        e?.taskLocation,
        e?.notificationTime,
        e?.courseName,
        e?.source
      ]);

  @override
  bool isValidKey(Object? o) => o is TasksRecord;
}
