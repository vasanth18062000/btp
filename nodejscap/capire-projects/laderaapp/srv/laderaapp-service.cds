using {com.ladera.laderaapp as laderamanagement} from '../db/schema';


service LaderaAppservice{
    entity Employee as select from laderamanagement.Employee;
}
action submitorder(book: UUID, quantity: Integer);