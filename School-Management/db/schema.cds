using { managed } from '@sap/cds/common';

namespace sap.capire.SchoolManagement;

entity Department :managed {
  key departmentId: Integer;
  departmentName : String;
  headOfDepartment: String;
  description: String;
  teacher: Association to Teacher;
}

entity Teacher : managed {
  key teacherId: Integer;
  teacherName: String;
  subjectTaught: String;
  experienceInYears: Decimal(1,1);
}

//https://port4004-workspaces-ws-ppb56.us10.trial.applicationstudio.cloud.sap/odata/v4/school/Department?$expand=teacher
