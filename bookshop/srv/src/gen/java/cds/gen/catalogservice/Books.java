package cds.gen.catalogservice;

import com.sap.cds.CdsData;
import com.sap.cds.Struct;
import com.sap.cds.ql.CdsName;
import java.lang.Integer;
import java.lang.String;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.processing.Generated;

@CdsName("CatalogService.Books")
@Generated(
    value = "cds-maven-plugin",
    date = "2023-11-22T05:27:26.998708155Z",
    comments = "com.sap.cds:cds-maven-plugin:2.4.0 / com.sap.cds:cds4j-api:2.4.0"
)
public interface Books extends CdsData {
  String ID = "id";

  String TITLE = "title";

  String DESCR = "descr";

  String AUTHOR = "author";

  String GENRE = "genre";

  Integer getId();

  void setId(Integer id);

  String getTitle();

  void setTitle(String title);

  String getDescr();

  void setDescr(String descr);

  String getAuthor();

  void setAuthor(String author);

  String getGenre();

  void setGenre(String genre);

  Books_ ref();

  static Books create() {
    return Struct.create(Books.class);
  }

  static Books create(Integer id) {
    Map<String, Object> keys = new HashMap<>();
    keys.put(ID, id);
    return Struct.access(keys).as(Books.class);
  }
}
