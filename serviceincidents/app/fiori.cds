using {com.ladera.mashup as mash} from '../srv/mashup';

using {com.ser as ser} from './services';


namespace com.ladera.fiori;



annotate ser.MyService.Customer with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'BusinessPartner',
            Value : BusinessPartner,
        },
    
        {
            $Type : 'UI.DataField',
            Label : 'Customer',
            Value : Customer,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Supplier',
            Value : Supplier,
        },
        {
            $Type : 'UI.DataField',
            Label : 'AcademicTitle',
            Value : AcademicTitle,
        },
    ]
);

annotate ser.MyService.Customer with @(

  UI.FieldGroup#GeneratedGroup1 :
  {
    $Type :'UI.FieldGroupType',
    Data: [

        {
            $Type :'UI.DataField',
            Label : 'Name',
            Value : BusinessPartnerFullName,
        },

        {
            $Type :'UI.DataField',
            Label :'E Tag',
            Value : ETag,
        },

        {
            $Type :'UI.DataField',
            Label :'Organization BPName 1',
            Value : OrganizationBPName1,
        },

        {
            $Type :'UI.DataField',
            Label :'Organization BP Name 2',
            Value : OrganizationBPName2,
        },


    ],
  },
  UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Business Partner details',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },

        {
            $Type :'UI.ReferenceFacet',
            ID : 'Address',
            Label : 'Address details',
            Target :'to_BusinessPartnerAddress/@UI.FieldGroup#addresspart',
        },


        {
            $Type :'UI.ReferenceFacet',
            ID : 'BankAccount',
            Label : 'Bank Account Details',
            Target :'to_BusinessPartnerBank/@UI.FieldGroup#partnerbank',
        },

       
        
    ],

 ) ;


 


















    // using {API_BUSINESS_PARTNER as service} from '../srv/external/API_BUSINESS_PARTNER';

    annotate ser.MyService.Address_Partner with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Address ID',
            Value : AddressID,
        },
      

        {
            $Type : 'UI.DataField',
            Label : 'City Name',
            Value : CityName,
        },

        {
            $Type : 'UI.DataField',
            Label : 'District',
            Value : District,
            
        },

        
        {
            $Type : 'UI.DataField',
            Label : 'Business Partner',
            Value : BusinessPartner,
            
        },


        
        ]);

    // to create object that is general information 


    annotate ser.MyService.Address_Partner with @(

    UI.FieldGroup #addresspart :
    {
    $Type :'UI.FieldGroupType',

    Data : [

        {
            $Type : 'UI.DataField',
            Label : 'City Name',
            Value : CityName,
        },

         {
            $Type : 'UI.DataField',
            Label : 'House No',
            Value : HouseNumber,
        },

         {
            $Type : 'UI.DataField',
            Label : 'Street',
            Value : StreetName,
        },

          {
            $Type : 'UI.DataField',
            Label : 'Country',
            Value : Country,
        },

        
    ],

    },

    UI.Facets : [
    {
        $Type : 'UI.ReferenceFacet',
        ID : 'Address',
        Label : 'Address Detail',
        Target : '@UI.FieldGroup#addresspart',
    },

    {
        $Type : 'UI.ReferenceFacet',
        ID : 'Phone',
        Label : 'Phone Detail',
        Target : 'to_MobilePhoneNumber/@UI.FieldGroup#phoneNumberAdd',
    },

    {
        $Type : 'UI.ReferenceFacet',
        ID : 'AddressURL',
        Label : 'Address URL',
        Target : 'to_URLAddress/@UI.FieldGroup#addresshomepage',
    },
    ],

    );




        // to create filter field in this current tab

    annotate ser.MyService.Address_Partner @(

    UI.SelectionFields : [
        AddressID,
    ]);


    annotate ser.MyService.Email_Partner with @(

    UI.LineItem :[

        {
            $Type :'UI.DataField',
            Label : 'Address ID',
            Value : AddressID,
        },

        {
            $Type : 'UI.DataField',
            Label : 'Person',
            Value : Person, 
        },

        {
            $Type :'UI.DataField',
            Label : 'EmailAddress',
            Value : EmailAddress,
        },

        {
            $Type : 'UI.DataField',
            Label : 'Is Default EmailAddress',
            Value : IsDefaultEmailAddress,
        },

    ]);

        // to put the filter option...

        annotate ser.MyService.Email_Partner with @(
    UI.SelectionFields : [
        AddressID,
        EmailAddress,
    ]
        );



        annotate ser.MyService.AddressFax with @(
    UI.LineItem :[
        {
            $Type : 'UI.DataField',
            Label : 'Address ID',
            Value : AddressID,
        },

        {
            $Type : 'UI.DataField',
            Label : 'Person',
            Value : Person,
        },


        {
            $Type : 'UI.DataField',
            Label : 'Ordinal Number',
            Value : OrdinalNumber,
        },

    ]

        );

        annotate ser.MyService.AddressFax with @(

    UI.FieldGroup#GeneratedGroup3:{
        $Type : 'UI.FieldGroupType',
        Data :[
            {
                $Type : 'UI.DataField',
                Label : 'Address ID',
                Value : AddressID,

            },

        

            {
                $Type : 'UI.DataField',
                Label:'Ordinal Number',
                Value :OrdinalNumber,
            },

            {
                $Type : 'UI.DataField',
                Label:'Fax Country',
                Value :FaxCountry,
            },
        ]
    }

        );

        annotate ser.MyService.AddressPhoneNumber with @(
    UI.LineItem : [

        {
            $Type : 'UI.DataField',
            Label : 'Address ID',
            Value : AddressID,
        },

        {
            $Type : 'UI.DataField',
            Label : 'Ordinal Number',
            Value : OrdinalNumber,
        }
    ]


        );

        annotate ser.MyService.AddressPhoneNumber  with @(

        UI.FieldGroup#phoneNumberAdd : {

             $Type : 'UI.FieldGroupType',

            Data : [

        {
            $Type : 'UI.DataField',
            Label : 'Extension',
            Value : PhoneNumberExtension,
        },

        {
            $Type : 'UI.DataField',
            Label : 'Phone Number',
            Value : PhoneNumber,
        },

        {
            $Type : 'UI.DataField',
            Label : 'International Phone Number',
            Value : InternationalPhoneNumber,
        },

        {
            $Type : 'UI.DataField',
            Label : 'PhoneNumber Type',
            Value : PhoneNumberType,
        },

            ],
        },

        UI.Facets : [
            {

            $Type : 'UI.ReferenceFacet',
            ID : 'PhoneDetails',
            Label : 'Phone Detail',
            Target : '@UI.FieldGroup#phoneNumberAdd',
        },
        ],
        );

annotate ser.MyService.AddressHomePage with @(
    UI.LineItem : [

        {
            $Type : 'UI.DataField',
            Label : 'URL Address',
            Value : SearchURLAddress,
        },

        {
            $Type : 'UI.DataField',
            Label : 'Is Default URL Address',
            Value : IsDefaultURLAddress,
        },

        {
            $Type : 'UI.DataField',
            Label : 'Ordinal Number',
            Value : OrdinalNumber,
        },

    ]

);

annotate ser.MyService.AddressHomePage with @(
    UI.FieldGroup#addresshomepage : {
        $Type : 'UI.FieldGroupType',
        Data : [

            {
                $Type : 'UI.DataField',
                Label : 'Website URL',
                Value : WebsiteURL,
            },

             {
                $Type : 'UI.DataField',
                Label : 'URL Length',
                Value : URLFieldLength,
            },

            {
                $Type : 'UI.DataField',
                Label : 'Is Default URL Address',
                Value : IsDefaultURLAddress,
            },

        ],


    },
UI.Facets : [
    {
        $Type : 'UI.ReferenceFacet',
        ID : 'HomeURL',
        Label : 'Home URL',
        Target : '@UI.FieldGroup#addresshomepage',
    },
],

);

annotate ser.MyService.BusinessPartnerBank with @(

    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label :'Business Partner',
            Value : BusinessPartner,
        },

        {
            $Type : 'UI.DataField',
            Label :'Bank Name',
            Value : BankName,
        },

        {
            $Type : 'UI.DataField',
            Label :'Bank Account Holder Name',
            Value : BankAccountHolderName,
        },
    ]

); 

annotate ser.MyService.BusinessPartnerBank with @(
    UI.FieldGroup#partnerbank:
    {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type :'UI.DataField',
                Label : 'Bank Account Name',
                Value : BankAccountName,
            },

            {
                $Type :'UI.DataField',
                Label : 'Bank Account HolderName',
                Value : BankAccountHolderName,
            },

            {
                $Type :'UI.DataField',
                Label : 'Bank Account',
                Value : BankAccount,
            },

            {
                $Type :'UI.DataField',
                Label : 'Collection AuthInd',
                Value : CollectionAuthInd,
            },
        ]
    }

);


annotate ser.MyService.Customer with @(
UI.HeaderInfo : {

    Title  : {
        $Type : 'UI.DataField',
        Value :BusinessPartnerFullName,

    },

    TypeName : 'user',
        TypeNamePlural : 'users',
        Description :{
            $Type :'UI.DataField',
            Value :BusinessPartnerGrouping,

        },
        TypeImageUrl : 'sap-icon://biometric-face',
       
    }


);




