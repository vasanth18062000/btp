using Railway as service from '../../srv/service';

annotate service.Passengerinfo with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'FirstName',
            Value : FirstName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'LastName',
            Value : LastName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'PhoneNo',
            Value : PhoneNo,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Email',
            Value : Email,
        },
        {
            $Type : 'UI.DataField',
            Label : 'IRCTCID',
            Value : IRCTCID,
        },
        {
            $Type : 'UI.DataField',
            Value : Address_ID,
            Label : 'Address_ID',
        },
        {
            $Type : 'UI.DataField',
            Value : Address.AddressLine1,
            Label : 'AddressLine1',
        },
        {
            $Type : 'UI.DataField',
            Value : Address.AddressLine2,
            Label : 'AddressLine2',
        },
        {
            $Type : 'UI.DataField',
            Value : Address.AddressLine4,
            Label : 'AddressLine4',
        },
        {
            $Type : 'UI.DataField',
            Value : Address.AdressLine3,
            Label : 'AdressLine3',
        },
        {
            $Type : 'UI.DataField',
            Value : Address.ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : Address.State,
            Label : 'State',
        },
        {
            $Type : 'UI.DataField',
            Value : Address.pinCode,
            Label : 'pinCode',
        },
    ]
);
annotate service.Passengerinfo with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'FirstName',
                Value : FirstName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LastName',
                Value : LastName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PhoneNo',
                Value : PhoneNo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Email',
                Value : Email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'IRCTCID',
                Value : IRCTCID,
            },
            {
                $Type : 'UI.DataField',
                Value : Address.AddressLine1,
                Label : 'AddressLine1',
            },
            {
                $Type : 'UI.DataField',
                Value : Address.AddressLine2,
                Label : 'AddressLine2',
            },
            {
                $Type : 'UI.DataField',
                Value : Address.AddressLine4,
                Label : 'AddressLine4',
            },
            {
                $Type : 'UI.DataField',
                Value : Address.AdressLine3,
                Label : 'AdressLine3',
            },
            {
                $Type : 'UI.DataField',
                Value : Address.ID,
                Label : 'ID',
            },
            {
                $Type : 'UI.DataField',
                Value : Address.pinCode,
                Label : 'pinCode',
            },
            {
                $Type : 'UI.DataField',
                Value : Address.State,
                Label : 'State',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Target : '@UI.FieldGroup#GeneratedGroup1',
            Label : 'Passenger ',
        },
    ]
);
annotate service.Passengerinfo with @(
    UI.SelectionFields : [
        PhoneNo,
        IRCTCID,
        Email,
        FirstName,
    ]
);
annotate service.Passengerinfo with {
    PhoneNo @Common.Label : 'Phoneno'
};
annotate service.Passengerinfo with {
    PhoneNo @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Passengerinfo',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : PhoneNo,
                    ValueListProperty : 'PhoneNo',
                },
            ],
            Label : 'PhoneNo',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Passengerinfo with {
    IRCTCID @Common.Label : 'IRCTCID'
};


annotate service.Passengerinfo with {
    Email @Common.Label : 'Email'
};
annotate service.Passengerinfo with {
    Email @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Passengerinfo',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Email,
                    ValueListProperty : 'Email',
                },
            ],
            Label : 'Email',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Passengerinfo with {
    IRCTCID @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Passengerinfo',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : IRCTCID,
                    ValueListProperty : 'IRCTCID',
                },
            ],
            Label : 'IRCTCID',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Passengerinfo with @(
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'PassengerInfo',
    }
);
annotate service.Ticket with @(
    UI.LineItem #tableView : [
        {
            $Type : 'UI.DataField',
            Value : TicketPrice_ID,
            Label : 'TicketPrice_ID',
        },{
            $Type : 'UI.DataField',
            Value : Passengerinfo_ID,
            Label : 'Passengerinfo_ID',
        },{
            $Type : 'UI.DataField',
            Value : TicketNo,
            Label : 'TicketNo',
        },{
            $Type : 'UI.DataField',
            Value : TicketPrice.price,
            Label : 'price',
        },],
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Table View Ticket',
    }
);
annotate service.Passengerinfo with {
    Address @Common.Label : 'Address_ID'
};
annotate service.Passengerinfo with {
    Address @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Address',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Address_ID,
                    ValueListProperty : 'ID',
                },
            ],
            Label : 'Address_ID',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Passengerinfo with {
    FirstName @Common.Label : 'FirstName'
};
annotate service.Passengerinfo with {
    FirstName @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Passengerinfo',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : FirstName,
                    ValueListProperty : 'FirstName',
                },
            ],
            Label : 'First Name',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Passengerinfo with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : FirstName,
        },
        TypeName : '',
        TypeNamePlural : '',
    }
);
