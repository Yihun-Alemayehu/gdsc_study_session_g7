import 'dart:convert';

import 'package:equatable/equatable.dart';

class Task extends Equatable{
  final String title;
  final String leadingIcon;
  final String description;
  final String deadline;

  const Task({
    required this.title,
    required this.leadingIcon,
    required this.description,
    required this.deadline,
  });


  Task copyWith({
    String? title,
    String? leadingIcon,
    String? description,
    String? deadline,
  }) {
    return Task(
      title: title ?? this.title,
      leadingIcon: leadingIcon ?? this.leadingIcon,
      description: description ?? this.description,
      deadline: deadline ?? this.deadline,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'leadingIcon': leadingIcon,
      'description': description,
      'deadline': deadline,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      title: map['title'] as String,
      leadingIcon: map['leadingIcon'] as String,
      description: map['description'] as String,
      deadline: map['deadline'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Task.fromJson(String source) => Task.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Task(title: $title, leadingIcon: $leadingIcon, description: $description, deadline: $deadline)';
  }
  
  @override
  List<Object?> get props => [title, leadingIcon, description, deadline];

}
