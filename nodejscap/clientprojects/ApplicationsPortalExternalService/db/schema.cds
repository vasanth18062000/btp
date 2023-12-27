using { APIPortal_Applications as portal } from '../srv/external/APIPortal_Applications';

entity TemplateFileResource as projection on portal.TemplateFileResources {
        key id as ID,
        content as appContenet,
        name as templateName,
}