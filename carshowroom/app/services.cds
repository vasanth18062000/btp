
using from './car/annotations';
annotate CarShowroomService.TyresDeatail with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : tubeDetails.tubeBrand,
            Label : '12345566',
            ![@UI.Importance] : #High,
        },
    ]
);

using from './carshowroom/annotations';