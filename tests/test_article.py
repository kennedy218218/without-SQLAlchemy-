from lib.models.author import Author

def test_articles():
    author = Author.find_by_id(1)
    articles = author.articles()
    assert len(articles) > 0