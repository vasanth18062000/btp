namespace com.ladera.bookshop;

entity Projects {
    key ID          : Integer;
        members     : Composition of many Members
                          on members.project = $self;

        projectName : String;
}


entity Users {
    key ID         : Integer;
        projects   : Composition of many Members
                         on projects.user = $self;
        memberName : String;
}

entity Members {
    key ID      : Integer;
    key project : Association to Projects;
    key user    : Association to Users;
}
