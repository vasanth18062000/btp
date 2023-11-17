using { cuid, managed } from '@sap/cds/common';
namespace sap.capire.bookshop;

// One to many uni-directional ...

entity books : cuid{
   key ID : String;
    bookName : String;
    author : Association to Authors on author.ID;
    author_ID : type of Authors:ID;
    language : String;
    genre : String @assert.range enum {Drama; Mystry; Horor; History;};
    prize : Double;
}


entity Authors :  cuid{
   key ID : String;
    authorName : String;
    publishedYear : Integer;
    books : Association to many books on books.author = $self;
}

entity Stationaries : cuid {
    key ID : String;
    productName : String;
    productPrice : Double;
}
