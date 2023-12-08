using {com.ladera.mashup as mash} from '../../srv/mashup';

annotate mash.MyService.BusinessPartner with @(

UI.LineItem : [
{
$Type :'UI.DataField',
Label : 'Business Partner',
Value : BusinessPartner,

},

{
$Type :'UI.DataField',
Label : 'Business Paartner category',
Value : BusinessPartnerCategory,

},
{
$Type :'UI.DataField',
Label : 'Business Paartner Name',
Value : BusinessPartnerName,


},
{
$Type :'UI.DataField',
Label : 'Business Paartner UUID',
Value : BusinessPartnerUUID,

},
{
$Type :'UI.DataField',
Label : 'Authorization grp',
Value : AuthorizationGroup,

},
{
$Type :'UI.DataField',
Label : 'Industry',
Value : Industry,

},

],

);

annotate mash.MyService.BusinessPartner with @(

UI.FieldGroup#businessPartner: {
    $Type :'UI.FieldGroupType',
    

    Data:[

        
        {

        $Type : 'UI.DataField',
        Label : 'Accadamic titile',
        Value : AcademicTitle
        },
        

         {

        $Type : 'UI.DataField',
        Label : 'International Location 1',
        Value : InternationalLocationNumber2
        },
 {

        $Type : 'UI.DataField',
        Label : 'International Location 2',
        Value : InternationalLocationNumber1
        },
{

        $Type : 'UI.DataField',
        Label : 'Language',
        Value : CorrespondenceLanguage
        },

        {
$Type :'UI.DataField',
Label : 'Business Paartner category',
Value : BusinessPartnerCategory,

},

    ],
},

UI.Facets : [

    {
$Type : 'UI.ReferenceFacet',
Label : 'Business Partner',
ID : 'asdfgh',
Target : '@UI.LineItem',

    },
    {

    $Type : 'UI.ReferenceFacet',
Label : 'Credit Information',
ID : 'qwerty',
Target : 'to_BPCreditWorthiness/@UI.LineItem',
    },


    {

    $Type : 'UI.ReferenceFacet',
Label : 'Data Control',
ID : 'DataC',
Target : 'to_BPDataController/@UI.LineItem',
    },
{
$Type : 'UI.ReferenceFacet',
Label : 'BP Year',
ID : 'BPYear',
Target : 'to_BPFiscalYearInformation/@UI.LineItem',

},
{
$Type : 'UI.ReferenceFacet',
Label : 'BP Relation',
ID : 'BpRelation',
Target : 'to_BPRelationship/@UI.LineItem',
    },

],
);

annotate mash.MyService.bpcreditinformation with @(

UI.FieldGroup#credit: {
    $Type :'UI.FieldGroupType',
    Data:[
        {

        $Type : 'UI.DataField',
        Label : 'Business Partner',
        Value : BusinessPartner
        },

         {

        $Type : 'UI.DataField',
        Label : 'CreditSharing',
        Value : BusPartCreditStanding
        },
 {

        $Type : 'UI.DataField',
        Label : ' Credit Rating Agent',
        Value : CreditRatingAgency
        },
{

        $Type : 'UI.DataField',
        Label : 'CreditStanding Comment',
        Value : BPCreditStandingComment
        },

        
    ],

},
UI.Facets : [

    {
$Type : 'UI.ReferenceFacet',
Label : 'Credit Worthness Of Business',
ID : 'CreditWorth',
Target : '@UI.FieldGroup#credit',
    },

],

    
);

annotate mash.MyService.bpdatacontrol with @(

UI.FieldGroup#DataContral: {
    $Type :'UI.FieldGroupType',
    Data:[
        {

        $Type : 'UI.DataField',
        Label : 'Business Partner',
        Value : BusinessPartner
        },

         {

        $Type : 'UI.DataField',
        Label : 'Data Derived',
        Value : BPDataControllerIsDerived
        },
 {

        $Type : 'UI.DataField',
        Label : ' Data Assaigment Status',
        Value : DataControlAssignmentStatus
        },
{

        $Type : 'UI.DataField',
        Label : 'Purpose Of personal Data',
        Value : PurposeForPersonalData
        },
{

        $Type : 'UI.DataField',
        Label : 'Purpose Of Derived',
        Value : PurposeDerived
        },

{

        $Type : 'UI.DataField',
        Label : 'Purpose Type',
        Value : PurposeType
        },
        
    ],

},
// UI.Facets : [

//     {
// $Type : 'UI.ReferenceFacet',
// Label : 'Data Control Of Business ',
// ID : 'Data Control',
// Target : '@UI.FieldGroup#DataContral',
//     },

);



annotate mash.MyService.bpyearinformation with @(

UI.FieldGroup #bpyearinformation: {
    $Type :'UI.FieldGroupType',
    Data:[
        {

        $Type : 'UI.DataField',
        Label : 'Business Partner Financial Year',
        Value : BusinessPartnerFiscalYear
        },

         {

        $Type : 'UI.DataField',
        Label : ' Bp BalanceSheet value',
        Value : BPBalanceSheetCurrency
 },
    ]
},

UI.Facets : [

    {
$Type : 'UI.ReferenceFacet',
Label : 'Data Control Of Business ',
ID : 'Data Control',
Target : '@UI.FieldGroup#bpyearinformation',
    },
]
);

annotate mash.MyService.bpcreditinformation with @(

UI.LineItem : [
{
$Type :'UI.DataField',
Label : 'BpcreditStanding',
Value : BPCreditStandingComment,
},
{
$Type :'UI.DataField',
Label : 'Rating Agency',
Value : CreditRatingAgency
},
{
$Type :'UI.DataField',
Label : 'BP Credit Standing',
Value : BusPartCreditStanding,
},
],

);

annotate mash.MyService.bprelation with @(

UI.LineItem : [
{
$Type :'UI.DataField',
Label : 'Realation ID',
Value : RelationshipNumber,
},
{
$Type :'UI.DataField',
Label : 'Partner ID ',
Value : BusinessPartner2
},
{
$Type :'UI.DataField',
Label : 'Partner Id',
Value : BusinessPartner1,
},
{
$Type :'UI.DataField',
Label : 'Validity Start Date',
Value : ValidityStartDate,
},
{
$Type :'UI.DataField',
Label : 'Validity End Date',
Value : ValidityEndDate,
},
],

);

annotate mash.MyService.bprelation with @(

UI.FieldGroup #bprelation: {
    $Type :'UI.FieldGroupType',
    Data:[
        {

        $Type : 'UI.DataField',
        Label : 'Relation Number',
        Value : RelationshipNumber
        },

         {

        $Type : 'UI.DataField',
        Label : ' Business Partner ID',
        Value : BusinessPartner2
 },
{

        $Type : 'UI.DataField',
        Label : ' Business Partner Id',
        Value : BusinessPartner1
 },
{

        $Type : 'UI.DataField',
        Label : ' Validity Sart Date',
        Value : ValidityStartDate
 },
 {

        $Type : 'UI.DataField',
        Label : ' Validity ENd date',
        Value : ValidityEndDate
 },



    ]
},

UI.Facets : [

    {
$Type : 'UI.ReferenceFacet',
Label : 'Data Control Of Business ',
ID : 'Data Control',
Target : '@UI.LineItem',
    },
]
);
annotate mash.MyService.bpdatacontrol with @(

UI.LineItem : [
{
$Type :'UI.DataField',
Label : 'Business Partner',
Value : BusinessPartner,

},

{
$Type :'UI.DataField',
Label : 'Business Partner',
Value : BusinessPartner,

},
{
$Type :'UI.DataField',
Label : 'Business Data Controler',
Value : DataController,


},
{
$Type :'UI.DataField',
Label : 'ControlerDerived',
Value : BPDataControllerIsDerived,

},
{
$Type :'UI.DataField',
Label : 'Data Assignment Status',
Value : DataControlAssignmentStatus,

},
{
$Type :'UI.DataField',
Label : 'Purpose Of personal data',
Value : PurposeForPersonalData,

},

],

);
annotate mash.MyService.bpyearinformation with @(

UI.LineItem : [
{
$Type :'UI.DataField',
Label : 'Business Partner',
Value : BusinessPartner,

},

{
$Type :'UI.DataField',
Label : 'Anual Meeting',
Value : BPAnnualStockholderMeetingDate,

},
{
$Type :'UI.DataField',
Label : 'Currency',
Value : BPBalanceSheetCurrency,

},
{
$Type :'UI.DataField',
Label : 'Bp Financial Year',
Value : BusinessPartnerFiscalYear,

},
]
);