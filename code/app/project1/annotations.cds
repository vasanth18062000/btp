using ProcessorService as service from '../../srv/service';

annotate service.Student with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : id,
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Label : 'name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'regNo',
            Value : regNo,
        },
        {
            $Type : 'UI.DataField',
            Label : 'age',
            Value : age,
        },
        {
            $Type : 'UI.DataField',
            Label : 'dob',
            Value : dob,
        },
        {
            $Type : 'UI.DataField',
            Value : address.addressLine1,
            Label : 'addressLine1',
        },
        {
            $Type : 'UI.DataField',
            Value : address.addressLine2,
            Label : 'addressLine2',
        },
        {
            $Type : 'UI.DataField',
            Value : address.addressLine3,
            Label : '{i18n>Addressline3}',
            ![@UI.Importance] : #Medium,
        },
    ]
);
annotate service.Student with {
    address @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Address',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : address_id,
                ValueListProperty : 'id',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'addressLine1',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'addressLine2',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'addressLine3',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'pincode',
            },
        ],
    }
};
annotate service.Student with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Id1}',
                Value : id,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Name}',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>RegNo}',
                Value : regNo,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Age}',
                Value : age,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DOB',
                Value : dob,
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
annotate service.Student with @(
    UI.SelectionFields : [
        name,
        regNo,
        id,
    ]
);
annotate service.Student with {
    name @Common.Label : '{i18n>Name}'
};
annotate service.Student with {
    regNo @Common.Label : '{i18n>RegNo}'
};
annotate service.Student with @(
    UI.PresentationVariant #vh_Student_regNo : {
        $Type : 'UI.PresentationVariantType',
        SortOrder : [
            {
                $Type : 'Common.SortOrderType',
                Property : id,
                Descending : false,
            },
        ],
    }
);


annotate service.Student with {
    name @Common.Text : {
        $value : id,
        ![@UI.TextArrangement] : #TextLast,
    }
};
annotate service.Student with {
    dob @(Common.Text : {
            $value : name,
            ![@UI.TextArrangement] : #TextLast,
        }
)};
annotate service.Student with @(
    UI.Identification : [
        {
            $Type : 'UI.DataFieldForIntentBasedNavigation',
            SemanticObject : 'student.name',
            Action : 'student.phoneNumber',
            Label : '{i18n>StudentphonenumberStudentname}',
            Mapping : [
                {
                    $Type : 'Common.SemanticObjectMappingType',
                    SemanticObjectProperty : '',
                    LocalProperty : address_id,
                },
            ],
        },
    ]
);
annotate service.Student with {
    id @UI.MultiLineText : true
};
annotate service.Student with {
    id @Common.FieldControl : #Mandatory
};
annotate service.Student with {
    regNo @Common.Text : {
            $value : name,
            ![@UI.TextArrangement] : #TextFirst,
        }
};
annotate service.Student with {
    regNo @UI.MultiLineText : true
};
annotate service.Student with {
    regNo @Common.FieldControl : #Mandatory
};
annotate service.Student with {
    address @Common.Text : {
            $value : id,
            ![@UI.TextArrangement] : #TextFirst,
        }
};
annotate service.Student with {
    address @Common.FieldControl : #Optional
};
annotate service.Address with {
    addressLine3 @UI.MultiLineText : true
};
annotate service.Student with {
    name @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Student',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : name,
                    ValueListProperty : 'id',
                },
            ],
            Label : 'Name',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Student with {
    id @Common.Label : '{i18n>Id}'
};
annotate service.Student with {
    id @Common.Text : {
            $value : name,
            ![@UI.TextArrangement] : #TextFirst,
        }
};
annotate service.Student with @(
    UI.HeaderInfo : {
        TypeName : '{i18n>Id1}',
        TypeNamePlural : '',
        Title : {
            $Type : 'UI.DataField',
            Value : id,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : name,
        },
    }
);
annotate service.Student with {
    age @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Student',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : age,
                    ValueListProperty : 'age',
                },
            ],
            Label : 'Age',
        },
        Common.ValueListWithFixedValues : true,
        Common.Text : {
            $value : id,
            ![@UI.TextArrangement] : #TextSeparate,
        }
)};
