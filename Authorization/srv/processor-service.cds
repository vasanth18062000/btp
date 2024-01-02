using { com.ladera.Authorization as my } from '../db/schema';

service ProcessorService  {
  entity Employee as projection on my.Employee;
}
annotate ProcessorService.Employee with @odata.draft.enabled; 
// annotate ProcessorService with @(requires: 'support');
 annotate ProcessorService with @(requires: 'developer');
