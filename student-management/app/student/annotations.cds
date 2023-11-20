using StudentManagement as service from '../../srv/service';

annotate service.StudentDetail with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'studentId',
            Value : studentId,
        },
        {
            $Type : 'UI.DataField',
            Label : 'name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'contact_id',
            Value : contact_id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'cityName',
            Value : cityName,
        },
    ]
);
annotate service.StudentDetail with {
    contact @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'ContactDetails',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : contact_id,
                ValueListProperty : 'id',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'number',
            },
        ],
    }
};
annotate service.StudentDetail with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'studentId',
                Value : studentId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'contact_id',
                Value : contact_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'cityName',
                Value : cityName,
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
