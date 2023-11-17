using EmployeeManagementSystemService as service from '../../srv/ems-service';

annotate service.Employee with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'employeeId',
            Value : employeeId,
        },
        {
            $Type : 'UI.DataField',
            Label : 'employeeName',
            Value : employeeName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'designation',
            Value : designation,
        },
        {
            $Type : 'UI.DataField',
            Label : 'department',
            Value : department,
        },
        {
            $Type : 'UI.DataField',
            Label : 'ename',
            Value : ename,
        },
    ]
);
annotate service.Employee with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'employeeId',
                Value : employeeId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'employeeName',
                Value : employeeName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'designation',
                Value : designation,
            },
            {
                $Type : 'UI.DataField',
                Label : 'department',
                Value : department,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ename',
                Value : ename,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
