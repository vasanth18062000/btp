using { com.ladera.student as my } from '../db/schema';
@path:'Student'
service ProcessorService {

 entity Student @(restrict:[
{
    grant:['READ'],
    to:['StudentViewer']

},
{

    grant:['*'],
    to:['StudentAdmin']
}
 ])

 as projection on my.Student;   

annotate Student with @odata.draft.enabled;

}
