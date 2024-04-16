pragma solidity <=0.9.0;

contract Struct {
    struct Book {
        string title;
        string author;
        uint book_id;
    }
    Book book;

    function setBook() public {
        book= Book('Learn Java','TP',4);

    }
    function getBookId() public view returns (uint){
        return book.book_id;
    }
}