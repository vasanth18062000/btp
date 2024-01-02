using{test.db as my} from '../db/schema';

service MyService {
    entity test as projection on my.test ;
}