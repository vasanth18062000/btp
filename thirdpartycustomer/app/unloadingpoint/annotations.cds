using com.mashup.MyService as service from '../../srv/mashup';

annotate service.CustomerUnloadingPoint with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Customer',
            Value : Customer,
        },
        {
            $Type : 'UI.DataField',
            Label : 'UnloadingPointName',
            Value : UnloadingPointName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CustomerFactoryCalenderCode',
            Value : CustomerFactoryCalenderCode,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BPGoodsReceivingHoursCode',
            Value : BPGoodsReceivingHoursCode,
        },
        {
            $Type : 'UI.DataField',
            Label : 'IsDfltBPUnloadingPoint',
            Value : IsDfltBPUnloadingPoint,
        },
    ]
);
annotate service.CustomerUnloadingPoint with @(
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
                Label : 'UnloadingPointName',
                Value : UnloadingPointName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CustomerFactoryCalenderCode',
                Value : CustomerFactoryCalenderCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BPGoodsReceivingHoursCode',
                Value : BPGoodsReceivingHoursCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'IsDfltBPUnloadingPoint',
                Value : IsDfltBPUnloadingPoint,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SaturdayMorningClosingTime',
                Value : SaturdayMorningClosingTime,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SaturdayMorningOpeningTime',
                Value : SaturdayMorningOpeningTime,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SaturdayAfternoonOpeningTime',
                Value : SaturdayAfternoonOpeningTime,
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
