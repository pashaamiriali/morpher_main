class WorkoutDay {
  final String dayOfWeek;
  final String dayTitle;
  final bool isRestDay;
  final List<WorkoutMove> moves;
  final Duration lastFinishedRecord;

  WorkoutDay({
    required this.dayOfWeek,
    required this.dayTitle,
    this.isRestDay=false,
    required this.moves,
    required this.lastFinishedRecord,
  });
}

class WorkoutMove {
  final String title;

  WorkoutMove(this.title);
}
