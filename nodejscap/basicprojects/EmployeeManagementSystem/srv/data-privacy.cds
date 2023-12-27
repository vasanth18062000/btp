using {com.ladera.employeemanagementsystem as empmanagement} from '../db/schema';

annotate empmanagement.Employee with @PersonalData : { 
    EntitySemantics: 'DataSubject',
    DataSubjectRole: 'Employee'
}
   {
    employeeId @PersonalData.FieldSemantics: 'DataSubjectID';
    employeeName @PersonalData.IsPotentiallyPersonal; 
   };

 annotate empmanagement.Department with @PersonalData: {
  EntitySemantics: 'DataSubjectDetails'
}{
   deptNumber @PersonalData.FieldSemantics: 'DataSubjectID'; 
   deptCode @PersonalData.IsPotentiallyPersonal; 
};
