namespace myapp;

entity MyEntity {
  key ID: UUID;
  field1: String;
  field2: Integer;
};

service MyService @(path: '/odata') {
  entity MyEntity as projection on myapp.MyEntity;
};
