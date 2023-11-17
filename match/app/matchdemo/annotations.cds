using ProcessorService as service from '../../srv/processor-service';

annotate service.Match with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'matchID',
            Value : matchID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'matchDate',
            Value : matchDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'groundName',
            Value : groundName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'location_stadium',
            Value : location_stadium,
        },
        {
            $Type : 'UI.DataField',
            Label : 'team_teamID',
            Value : team_teamID,
        },
    ]
);
annotate service.Match with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'matchID',
                Value : matchID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'matchDate',
                Value : matchDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'groundName',
                Value : groundName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'location_stadium',
                Value : location_stadium,
            },
            {
                $Type : 'UI.DataField',
                Label : 'team_teamID',
                Value : team_teamID,
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
annotate service.Match with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : team.teamName,
        },
        TypeName : '',
        TypeNamePlural : '',
        ImageUrl : team.logo,
    }
);
