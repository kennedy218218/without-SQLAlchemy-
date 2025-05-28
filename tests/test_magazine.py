from lib.models.author import Author

def test_magazines():
    author = Author.find_by_id(1)
    magazines = author.magazines()
    assert len(magazines) > 0