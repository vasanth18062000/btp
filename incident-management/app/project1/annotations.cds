using ProcessorService as service from '../../srv/processor-service';
using from '../../db/schema';

annotate service.Incidents with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Urgencycode}',
            Value : urgency_code,
        },
        {
            $Type : 'UI.DataField',
            Label : 'status_code',
            Value : status_code,
        },
    ]
);
annotate service.Incidents with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'urgency_code',
                Value : urgency_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status_code',
                Value : status_code,
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
annotate service.Incidents with @(
    UI.SelectionFields : [
        urgency_code,]
);
annotate service.Incidents with {
    status @Common.Label : '{i18n>I18nstatus}'
};
annotate service.Incidents with {
    urgency @Common.Label : '{i18n>Urgency}'
};
annotate service.Incidents with {
    status @Common.Text : {
            $value : status.descr,
            ![@UI.TextArrangement] : #TextFirst,
        }
};
annotate service.Incidents with {
    urgency @Common.ValueListWithFixedValues : true
};
annotate service.Incidents with {
    status @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Status',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : status_code,
                    ValueListProperty : 'descr',
                },
            ],
            Label : 'Incidents',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Status with {
    code @Common.Text : {
        $value : name,
        ![@UI.TextArrangement] : #TextFirst,
    }
};
annotate service.Urgency with {
    code @Common.Text : {
        $value : descr,
        ![@UI.TextArrangement] : #TextFirst,
    }
};
annotate service.Incidents with {
    urgency @Common.Text : {
            $value : urgency.descr,
            ![@UI.TextArrangement] : #TextSeparate,
        }
};
annotate service.Status with {
    descr @Common.Text : {
        $value : name,
        ![@UI.TextArrangement] : #TextFirst,
    }
};