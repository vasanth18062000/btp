using { APIPortal_Applications as port } from './external/APIPortal_Applications';


service TemplateFileResourceService{
    @readonly
     
    entity TemplateFileResource as projection on port.TemplateFileResources{
        key id,name 
    }
      
      annotate TemplateFileResource with @odata.draft.enabled;
}