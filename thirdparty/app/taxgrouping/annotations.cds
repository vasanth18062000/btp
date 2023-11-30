using com.mashup.MyService as service from '../../srv/mashup';

annotate service.CustomerTaxGrouping with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Customer',
            Value : Customer,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CustTaxGrpExemptionCertificate',
            Value : CustTaxGrpExemptionCertificate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CustTaxGroupExemptionRate',
            Value : CustTaxGroupExemptionRate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CustTaxGroupExemptionStartDate',
            Value : CustTaxGroupExemptionStartDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CustTaxGroupExemptionEndDate',
            Value : CustTaxGroupExemptionEndDate,
        },
    ]
);
annotate service.CustomerTaxGrouping with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Customer',
                Value : Customer,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CustTaxGrpExemptionCertificate',
                Value : CustTaxGrpExemptionCertificate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CustTaxGroupExemptionRate',
                Value : CustTaxGroupExemptionRate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CustTaxGroupExemptionStartDate',
                Value : CustTaxGroupExemptionStartDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CustTaxGroupExemptionEndDate',
                Value : CustTaxGroupExemptionEndDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CustTaxGroupSubjectedStartDate',
                Value : CustTaxGroupSubjectedStartDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CustTaxGroupSubjectedEndDate',
                Value : CustTaxGroupSubjectedEndDate,
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
