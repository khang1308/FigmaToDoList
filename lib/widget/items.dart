class TodoModel {
  final String title;
  final String content;

  TodoModel({required this.title, required this.content});

  //để convert từ Map => TodoModel
  factory TodoModel.fromMap(Map<String, dynamic> map) {
    return TodoModel(title: map["title"], content: map["content"]);
  }

  //để convert từ TodoModel => Map
  Map<String, dynamic> toMap() {
    return {
      "title": title,
      "content": content,
    };
  }
}
