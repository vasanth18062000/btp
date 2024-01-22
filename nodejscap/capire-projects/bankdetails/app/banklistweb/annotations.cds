using bankdetails as service from '../../srv/bankdetails-service';

annotate service.BankDetail with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'BankInternalID',
            Value : BankInternalID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BankCountry',
            Value : BankCountry,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BankName',
            Value : BankName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'SWIFTCode',
            Value : SWIFTCode,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BankGroup',
            Value : BankGroup,
        },
        {Action: 'bankdetails.BankDetail/submitOrder',Label:'Submit2',Value:submit2}
    ]
);
annotate service.BankDetail with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'BankCountry',
                Value : BankCountry,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BankInternalID',
                Value : BankInternalID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BankName',
                Value : BankName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SWIFTCode',
                Value : SWIFTCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BankGroup',
                Value : BankGroup,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BankNumber',
                Value : BankNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Region',
                Value : Region,
            },
            {
                $Type : 'UI.DataField',
                Label : 'StreetName',
                Value : StreetName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CityName',
                Value : CityName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Branch',
                Value : Branch,
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

// annotate bankdetails.BankDetail with @(
//     UI:{
//         LineItem:[
            
//         ]
//     }
// );
