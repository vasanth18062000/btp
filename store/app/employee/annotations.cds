using MyService as service from '../../srv/catalog-service';

annotate service.Employee with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'EmployeeID',
            Value : EmployeeID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'HireDate',
            Value : HireDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Salary',
            Value : Salary,
        },
    ]
);
annotate service.Employee with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'EmployeeID',
                Value : EmployeeID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'HireDate',
                Value : HireDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Salary',
                Value : Salary,
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
