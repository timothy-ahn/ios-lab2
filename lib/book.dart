class Book {
  String title = "";
  String author = "";
  int year = 0;
  int pageCount = 0;

  Book(this.title, this.author, this.year, this.pageCount);

  void display() {
    print("\"$title\" - $author ($year) pages: $pageCount");
  }
}
