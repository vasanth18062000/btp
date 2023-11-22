
DROP VIEW IF EXISTS CatalogService_Books;
DROP TABLE IF EXISTS com_sap_bookshop_Books;

CREATE TABLE com_sap_bookshop_Books (
  id INTEGER NOT NULL,
  title NVARCHAR(100),
  descr NVARCHAR(1000),
  author NVARCHAR(100),
  genre NVARCHAR(100),
  PRIMARY KEY(id)
); 

CREATE VIEW CatalogService_Books AS SELECT
  Books_0.id,
  Books_0.title,
  Books_0.descr,
  Books_0.author,
  Books_0.genre
FROM com_sap_bookshop_Books AS Books_0; 

