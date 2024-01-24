class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffleAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}

//shuffle does not return anything & performs shuffle on the existing list. Hence created new list.
//It reaches out to the existing List objects in memory and edits that list. 
//Calling shuffle does not violate final. It does not over-write/re-assign any existing elements.
