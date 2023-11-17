using {com.ladera.utcl.speed as project} from '../db/Schema';

service WareHouse {

    entity WareHouse as projection on project.Warehouse;

}