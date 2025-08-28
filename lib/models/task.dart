class Task {
  Task({required this.name, this.done = false});

  late String name;
  late bool done;

  void toggleDone() {
    done = !done;
  }
}
