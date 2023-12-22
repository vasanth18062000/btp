using ProcessorService as service from '../../srv/process-service';
using from '../../db/schema';

annotate service.Client with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>CustomerName}',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Priority}',
            Value : priority_code,
            Criticality : priority.criticality,
        },
        {
            $Type : 'UI.DataField',
            Value : projects.projectName,
            Label : '{i18n>ProjectName}',
            Criticality : priority.criticality,
        },
    ]
);
annotate service.Client with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : code,
                Label : '{i18n>CustomerCode}',
            },
            {
                $Type : 'UI.DataField',
                Value : name,
                Label : '{i18n>CustomerName}',
            },{
                $Type : 'UI.DataField',
                Value : emailId,
                Label : '{i18n>Email}',
                Criticality : priority.criticality,
            },{
                $Type : 'UI.DataField',
                Value : poc,
                Label : '{i18n>Poc}',
            },{
                $Type : 'UI.DataField',
                Value : priority_code,
            },],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>CustomerAddressDetails} Details',
            ID : 'CustomerLocationDetails',
            Target : '@UI.FieldGroup#CustomerLocationDetails',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Project Details',
            ID : 'ProjectDetails',
            Target : 'projects/@UI.LineItem#ProjectDetails',
        },
    ]
);
annotate service.Client with @(
    UI.SelectionFields : [
        priority_code,
    ]
);
annotate service.Client with {
    priority @Common.Label : '{i18n>Priority}'
};
annotate service.Client with {
    priority @Common.ValueListWithFixedValues : true
};
annotate service.Priority with {
    code @Common.Text : descr
};
annotate service.Client with {
    priority @Common.Text : {
            $value : priority.descr,
            ![@UI.TextArrangement] : #TextFirst,
        }
};
annotate service.Client with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : name,
        },
        TypeName : '',
        TypeNamePlural : '',
        Description : {
            $Type : 'UI.DataField',
            Value : name,
        },
        TypeImageUrl : 'sap-icon://alert',
    }
);
annotate service.Client with @(
    UI.FieldGroup #i18nClientDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
annotate service.Client with {
    name @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Client',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : name,
                    ValueListProperty : 'name',
                },
            ],
        },
        Common.ValueListWithFixedValues : true)};
annotate service.Client with @(
    UI.FieldGroup #Details : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
annotate service.Client with @(
    UI.FieldGroup #Details1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : name,
                Label : '{i18n>Name}',
            },
            {
                $Type : 'UI.DataField',
                Value : address.addressline1,
                Label : '{i18n>Addressline1}',
            },
            {
                $Type : 'UI.DataField',
                Value : address.addressline2,
                Label : '{i18n>Addressline2}',
            },
            {
                $Type : 'UI.DataField',
                Value : address.city,
                Label : '{i18n>City}',
            },
            {
                $Type : 'UI.DataField',
                Value : address.pincode,
                Label : '{i18n>Pincode}',
            },],
    }
);
annotate service.Project with @(
    UI.LineItem #i18nProjectDetails : [
        {
            $Type : 'UI.DataField',
            Value : projectName,
            Label : '{i18n>Projectname}',
        },{
            $Type : 'UI.DataField',
            Value : projectId,
            Label : 'projectId',
        },{
            $Type : 'UI.DataField',
            Value : status_code,
            Label : 'status_code',
        },]
);

annotate service.Client with {
    priority @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Priority',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : priority_code,
                ValueListProperty : 'descr',
            },
        ],
    }
};
annotate service.Client with @(
    UI.FieldGroup #CustomerLocationDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : address.addressline1,
                Label : 'addressline1',
            },{
                $Type : 'UI.DataField',
                Value : address.addressline2,
                Label : 'addressline2',
            },{
                $Type : 'UI.DataField',
                Value : address.city,
                Label : 'city',
            },{
                $Type : 'UI.DataField',
                Value : address.pincode,
                Label : 'pincode',
            },],
    }
);
annotate service.Address with {
    addressline2 @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Address',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : addressline2,
                    ValueListProperty : 'id',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Address with {
    id @Common.Text : {
            $value : addressline1,
            ![@UI.TextArrangement] : #TextFirst,
        }
};

annotate service.Address with {
    addressline1 @UI.MultiLineText : true
};
annotate service.Address with {
    city @UI.MultiLineText : true
};
annotate service.Project with @(
    UI.LineItem #ProjectDetails : [
        {
            $Type : 'UI.DataField',
            Value : projectName,
            Label : 'projectName',
        },
        {
            $Type : 'UI.DataField',
            Value : projectCode,
            Label : 'projectCode',
        },
        {
            $Type : 'UI.DataField',
            Value : status_code,
            Label : '{i18n>Status}',
            Criticality : client.priority.criticality,
        },{
            $Type : 'UI.DataField',
            Value : projectManager,
            Label : 'projectManager',
        },{
            $Type : 'UI.DataField',
            Value : emailId,
            Label : 'emailId',
        },{
            $Type : 'UI.DataField',
            Value : phoneNumber,
            Label : 'phoneNumber',
        },]
);

annotate service.Project with {
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
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Status with {
    descr @Common.Text : {
        $value : code,
        ![@UI.TextArrangement] : #TextFirst,
    }
};
annotate service.Project with {
    status @Common.Text : status.descr
};
