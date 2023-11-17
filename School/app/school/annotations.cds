using ProcessorService as service from '../../srv/processor-service';

annotate service.Students with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'studentName',
            Value : studentName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'email',
            Value : email,
        },
        {
            $Type : 'UI.DataField',
            Label : 'address',
            Value : address,
        },
        {
            $Type : 'UI.DataField',
            Label : 'mobileNo',
            Value : mobileNo,
        },
    ]
);
annotate service.Students with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'studentName',
                Value : studentName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'email',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'address',
                Value : address,
            },
            {
                $Type : 'UI.DataField',
                Label : 'mobileNo',
                Value : mobileNo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'inchargeName_ID',
                Value : inchargeName_ID,
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
annotate service.Students with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : studentName,
        },
        TypeName : '',
        TypeNamePlural : '',
        TypeImageUrl : '',
        Description : {
            $Type : 'UI.DataField',
            Value : mobileNo,
        },
        Initials : ID,
    }
);
