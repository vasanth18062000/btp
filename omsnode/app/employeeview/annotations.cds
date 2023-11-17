using DatabaseService as service from '../../srv/database-service';

annotate service.Employee with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Value : email,
        },
        {
            $Type : 'UI.DataField',
            Label : 'contactNumber',
            Value : contactNumber,
        },
        {
            $Type : 'UI.DataField',
            Value : designation,
        },
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : company_ID,
            Label : 'company_ID',
        },
        {
            $Type : 'UI.DataField',
            Value : company.name,
        },
    ]
);
annotate service.Employee with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'contactNumber',
                Value : contactNumber,
            },
            {
                $Type : 'UI.DataField',
                Value : designation,
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
annotate service.Employee with @(
    UI.SelectionFields : [
        designation,
        name,
        company.name,
    ]
);
annotate service.Employee with {
    company @Common.Label : 'company_ID'
};
