using {com.ladera.utcl.speed as project} from '../db/schema';

service Product  {
   
      entity Product as projection on project.Product;
      entity Review as projection on project.Review;

}



