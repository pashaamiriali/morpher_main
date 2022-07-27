part of './Start.Screen.dart';

class WorkoutMovesPeekListItem extends StatelessWidget {
  const WorkoutMovesPeekListItem({
    Key? key,
    required this.workoutMove,
  }) : super(key: key);

  final WorkoutMove workoutMove;

  @override
  Widget build(BuildContext context) {
    var normalMove = LightText(
      text: workoutMove.title,
    );

    if (workoutMove is SuperSet) {
      var superSet = workoutMove as SuperSet;
      List<Widget> superMoves = [
        Row(
          children: [
            const Icon(
              Icons.bolt,
              size: 36,
              color: Color(0xffFFBC21),
            ),
            LightText(
              text: "${workoutMove.title} {",
            )
          ],
        )
      ];
      for (var move in superSet.moves) {
        superMoves.add(
          LightText(
            text: move.title,
          ),
        );
      }
      superMoves.add(
        const LightText(
          text: "}",
        ),
      );
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: superMoves,
      );
    } else {
      return normalMove;
    }
  }
}
