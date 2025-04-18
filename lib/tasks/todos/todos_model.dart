import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'todos_widget.dart' show TodosWidget;
import 'package:flutter/material.dart';

class TodosModel extends FlutterFlowModel<TodosWidget> {
  ///  Local state fields for this page.

  List<String> assignmentTitles = [];
  void addToAssignmentTitles(String item) => assignmentTitles.add(item);
  void removeFromAssignmentTitles(String item) => assignmentTitles.remove(item);
  void removeAtIndexFromAssignmentTitles(int index) =>
      assignmentTitles.removeAt(index);
  void insertAtIndexInAssignmentTitles(int index, String item) =>
      assignmentTitles.insert(index, item);
  void updateAssignmentTitlesAtIndex(int index, Function(String) updateFn) =>
      assignmentTitles[index] = updateFn(assignmentTitles[index]);

  List<String> assignmentDescriptions = [];
  void addToAssignmentDescriptions(String item) =>
      assignmentDescriptions.add(item);
  void removeFromAssignmentDescriptions(String item) =>
      assignmentDescriptions.remove(item);
  void removeAtIndexFromAssignmentDescriptions(int index) =>
      assignmentDescriptions.removeAt(index);
  void insertAtIndexInAssignmentDescriptions(int index, String item) =>
      assignmentDescriptions.insert(index, item);
  void updateAssignmentDescriptionsAtIndex(
          int index, Function(String) updateFn) =>
      assignmentDescriptions[index] = updateFn(assignmentDescriptions[index]);

  List<DateTime> assignmentDueDates = [];
  void addToAssignmentDueDates(DateTime item) => assignmentDueDates.add(item);
  void removeFromAssignmentDueDates(DateTime item) =>
      assignmentDueDates.remove(item);
  void removeAtIndexFromAssignmentDueDates(int index) =>
      assignmentDueDates.removeAt(index);
  void insertAtIndexInAssignmentDueDates(int index, DateTime item) =>
      assignmentDueDates.insert(index, item);
  void updateAssignmentDueDatesAtIndex(
          int index, Function(DateTime) updateFn) =>
      assignmentDueDates[index] = updateFn(assignmentDueDates[index]);

  int loopIndex = 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
