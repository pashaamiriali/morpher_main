class WorkoutDay {
  String dayOfWeek;
  String dayTitle;
  bool isRestDay;
  List<WorkoutMove> moves;
  Duration lastFinishedRecord;

  WorkoutDay({
    required this.dayOfWeek,
    required this.dayTitle,
    this.isRestDay = false,
    required this.moves,
    required this.lastFinishedRecord,
  });
}

class WorkoutMove {
  final String title;

  WorkoutMove(this.title);
}

class SuperSet extends WorkoutMove {
  SuperSet(super.title,{required this.moves});
  final List<WorkoutMove> moves;
}
