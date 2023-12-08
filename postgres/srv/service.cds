using { post.db as post } from '../db/schema';

service MyService {

    entity Student @(restrict:[

{
    grant:['READ'],
    to:['StudentViewer']
},

{
grant : ['*'],
to : ['StudentAdmin']
}

    ] )as projection on post.Student;
    annotate Student with @odata.draft.enabled ;
    

}




