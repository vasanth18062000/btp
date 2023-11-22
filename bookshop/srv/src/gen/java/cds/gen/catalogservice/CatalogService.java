package cds.gen.catalogservice;

import com.sap.cds.ql.CdsName;
import com.sap.cds.services.cds.ApplicationService;
import com.sap.cds.services.cds.CqnService;
import com.sap.cds.services.cds.RemoteService;
import javax.annotation.processing.Generated;

@Generated(
    value = "cds-maven-plugin",
    date = "2023-11-22T05:27:26.998708155Z",
    comments = "com.sap.cds:cds-maven-plugin:2.4.0 / com.sap.cds:cds4j-api:2.4.0"
)
@CdsName(CatalogService_.CDS_NAME)
public interface CatalogService extends CqnService {
  interface Application extends ApplicationService, CatalogService {
  }

  interface Remote extends RemoteService, CatalogService {
  }
}
