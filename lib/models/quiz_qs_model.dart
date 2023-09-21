class QuizQs {
  const QuizQs(this.qs, this.ans);

  final String qs;
  final List<String> ans;

  List<String> getShuffledAns() {
    final shuffledList = List.of(ans);
    shuffledList.shuffle();
    return shuffledList;
  }
}
