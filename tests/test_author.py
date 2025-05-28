from lib.models.author import Author

def test_find_by_id():
    author = Author.find_by_id(1)
    assert author is not None
    assert isinstance(author.name, str)