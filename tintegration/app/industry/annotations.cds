using com.ladera.mashup.MyService as service from '../../srv/mashup';

annotate service.bupaIndustry with @(
    UI.LineItem : [
        {
             $Type : 'UI.DataField',
             Label : 'BusinessPartner',
             Value : BusinessPartner,
        },
         {
            $Type : 'UI.DataField',
            Label : 'IndustrySector',
            Value : IndustrySector,
        
         },
        {
            $Type : 'UI.DataField',
            Label : 'IndustrySystemType',
            Value : IndustrySystemType,
        },
        {
            $Type : 'UI.DataField',
            Label : 'IsStandardIndustry',
            Value : IsStandardIndustry,
        },
        {
            $Type : 'UI.DataField',
            Label : 'IndustryKeyDescription',
            Value : IndustryKeyDescription,
        },
    ]
);
annotate service.bupaIndustry with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Industrysector}',
                Value : IndustrySector,
            },
            {
                $Type : 'UI.DataField',
                Label : 'IsStandardIndustry',
                Value : IsStandardIndustry,
            },
            {
                $Type : 'UI.DataField',
                Label : 'IndustryKeyDescription',
                Value : IndustryKeyDescription,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : '{i18n>GeneralInformation}',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
annotate service.bupaIndustry with @(
    UI.SelectionFields : [
        IndustryKeyDescription,
        IndustrySector,
        IndustrySystemType,
        IsStandardIndustry,
    ]
);
annotate service.bupaIndustry with {
    IndustryKeyDescription @Common.Label : 'IndustryKeyDescription'
};
annotate service.bupaIndustry with {
    IndustrySector @Common.Label : 'IndustrySector'
};
annotate service.bupaIndustry with {
    IndustrySystemType @Common.Label : 'IndustrySystemType'
};
annotate service.bupaIndustry with {
    IsStandardIndustry @Common.Label : 'IsStandardIndustry'
};
annotate service.bupaIndustry with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : IndustrySector,
        },
        TypeName : '',
        TypeNamePlural : '',
        ImageUrl : IndustryKeyDescription,
    }
);
