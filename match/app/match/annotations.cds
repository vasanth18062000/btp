using MyService as service from '../../srv/service';

annotate service.Match with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Matchid}',
            Value : matchID,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Matchdate}',
            Value : matchDate,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Stadium}',
            Value : groundName,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Location}',
            Value : location_stadium,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Teamid}',
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
            {
                $Type : 'UI.DataField',
                Label : 'coach_coachID',
                Value : coach_coachID,
            },
        ],
    },
    UI.Facets : [
        {
             $Type : 'UI.ReferenceFacet',
            ID : 'Happy',
            Label : 'Happy',
            // Target : 'team/@UI.LineItem#Happy',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Coach Details',
            ID : 'Details',
            Target : '@UI.FieldGroup#Details',
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Details',
            ID : 'Details1',
            Facets : [
            ],
        },
    ]
);
annotate service.Team with @(
    UI.LineItem #Happy    :   [
        {
            $Type   :  'UI.DataField',
            Value   :   teamID,
            Label   :   '{i18n>Teamid1}',
        },
        {
            $Type   :  'UI.DataField',
            Value   :   teamName,
            Label   :   'teamName',
        }
    ]
);
annotate service.Match with @(
    UI.HeaderInfo : {
        ImageUrl : team.logo,
        TypeName : '',
        TypeNamePlural : '',
        Title : {
            $Type : 'UI.DataField',
            Value : team.teamName,
        },
    }
);
annotate service.Match with @(
    UI.FieldGroup #Details : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : coach.coachID,
                Label : 'coachID',
            },{
                $Type : 'UI.DataField',
                Value : coach.coachName,
                Label : 'coachName',
            },{
                $Type : 'UI.DataField',
                Value : coach.experience,
                Label : 'experience',
            },{
                $Type : 'UI.DataField',
                Value : coach.gender_gender,
                Label : 'gender_gender',
            },{
                $Type : 'UI.DataField',
                Value : coach.age,
                Label : 'age',
            },],
    }
);
annotate service.Match with @(
    UI.FieldGroup #Players : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : team.players.playerID,
                Label : 'playerID',
            },{
                $Type : 'UI.DataField',
                Value : team.players.playerName,
                Label : 'playerName',
            },{
                $Type : 'UI.DataField',
                Value : team.players.position,
                Label : 'position',
            },{
                $Type : 'UI.DataField',
                Value : team.players.gender_gender,
                Label : 'gender_gender',
            },],
    }
);
