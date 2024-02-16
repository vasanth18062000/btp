
using {context.db as schema} from '../db/schema';


service Contextservice {
    @readonly
    entity Festival as projection on schema.Festival;

    
     
}