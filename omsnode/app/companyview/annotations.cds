using DatabaseService as service from '../../srv/database-service';

annotate service.Company with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : name,
            Label : 'Company Name',
            Criticality : employeeCount,
        },
        {
            $Type : 'UI.DataField',
            Value : itPark.name,
        },
        {
            $Type : 'UI.DataField',
            Value : location,
            Label : 'location',
            Criticality : employeeCount,
        },{
            $Type : 'UI.DataField',
            Value : itPark.locality,
            Label : 'locality',
        },{
            $Type : 'UI.DataField',
            Value : itPark.city,
            Label : 'city',
        },
        {
            $Type : 'UI.DataField',
            Value : employeeCount,
            Label : 'employeeCount',
        },
        {
            $Type : 'UI.DataField',
            Value : itPark.pincode,
            Label : 'pincode',
        },]
);
annotate service.Company with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [],
    },
    UI.Facets : [
        {
            $Type : 'UI.CollectionFacet',
            Label : '{i18n>Overview}',
            ID : 'i18nOverview',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : '{i18n>Details}',
                    ID : 'i18nDetails',
                    Target : '@UI.FieldGroup#i18nDetails',
                },],
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Employee',
            ID : 'Employee',
            Target : 'employees/@UI.LineItem#Employee',
        },
    ]
);
annotate service.Company with @(
    UI.SelectionFields : [
        itPark.name,
        location,
    ]
);
annotate service.Employee with {
    designation @Common.Label : 'Employee Designation'
};
annotate service.Company with {
    name @Common.Label : 'name'
};
annotate service.Employee with {
    email @Common.Label : 'EmailID'
};
annotate service.Employee with {
    name @Common.Label : 'Employee Name'
};
annotate service.ItPark with {
    name @Common.Label : 'It Park '
};
annotate service.Employee with {
    designation @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Employee',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : designation,
                    ValueListProperty : 'designation',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Employee with {
    email @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Employee',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : email,
                    ValueListProperty : 'email',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Employee with {
    name @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Employee',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : name,
                    ValueListProperty : 'name',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.ItPark with {
    name @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'ItPark',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : name,
                    ValueListProperty : 'name',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Company with {
    location @Common.Label : '{i18n>Company}Location'
};
annotate service.ItPark with {
    pincode @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'ItPark',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : pincode,
                    ValueListProperty : 'pincode',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Company with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : name,
        },
        TypeName : '',
        TypeNamePlural : '',
        Description : {
            $Type : 'UI.DataField',
            Value : name,
        },
    }
);
annotate service.Company with @(
    UI.FieldGroup #i18nDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : location,
                Label : 'Company Location',
            },{
                $Type : 'UI.DataField',
                Value : name,
                Label : 'Company Name',
            },{
                $Type : 'UI.DataField',
                Value : employeeCount,
                Label : '{i18n>EmployeeStrength}',
            },],
    }
);
annotate service.Company with {
    name @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Company',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : name,
                    ValueListProperty : 'name',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Company with {
    location @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Company',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : location,
                    ValueListProperty : 'location',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Company with {
    employeeCount @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Company',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : employeeCount,
                    ValueListProperty : 'employeeCount',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Employee with @(
    UI.LineItem #Employee : [
        {
            $Type : 'UI.DataField',
            Value : company.employees.ID,
            Label : '{i18n>EmployeId}ploye ID',
        },{
            $Type : 'UI.DataField',
            Value : company.employees.name,
        },{
            $Type : 'UI.DataField',
            Value : company.employees.designation,
        },{
            $Type : 'UI.DataField',
            Value : company.employees.email,
        },]
);
annotate service.Employee with {
    ID @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Employee',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : ID,
                    ValueListProperty : 'ID',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
