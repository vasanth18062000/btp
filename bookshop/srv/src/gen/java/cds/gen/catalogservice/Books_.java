package cds.gen.catalogservice;

import com.sap.cds.ql.CdsName;
import com.sap.cds.ql.ElementRef;
import com.sap.cds.ql.StructuredType;
import java.lang.Integer;
import java.lang.String;
import javax.annotation.processing.Generated;

@CdsName("CatalogService.Books")
@Generated(
    value = "cds-maven-plugin",
    date = "2023-11-22T05:27:26.998708155Z",
    comments = "com.sap.cds:cds-maven-plugin:2.4.0 / com.sap.cds:cds4j-api:2.4.0"
)
public interface Books_ extends StructuredType<Books_> {
  String CDS_NAME = "CatalogService.Books";

  ElementRef<Integer> id();

  ElementRef<String> title();

  ElementRef<String> descr();

  ElementRef<String> author();

  ElementRef<String> genre();
}
