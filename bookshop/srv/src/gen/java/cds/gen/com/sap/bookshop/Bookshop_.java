package cds.gen.com.sap.bookshop;

import com.sap.cds.ql.CdsName;
import java.lang.Class;
import java.lang.String;
import javax.annotation.processing.Generated;

@Generated(
    value = "cds-maven-plugin",
    date = "2023-11-22T05:27:26.998708155Z",
    comments = "com.sap.cds:cds-maven-plugin:2.4.0 / com.sap.cds:cds4j-api:2.4.0"
)
@CdsName("com.sap.bookshop")
public interface Bookshop_ {
  String CDS_NAME = "com.sap.bookshop";

  Class<Books_> BOOKS = Books_.class;
}
