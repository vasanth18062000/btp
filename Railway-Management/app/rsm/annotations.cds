using Railway as service from '../../srv/processor-service';
using from '../../db/schema';

annotate service.Employes_Detail with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Employee ID}',
            Value : empId,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>First Name}',
            Value : firstName,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Last Name}',
            Value : lastName,
        },
        {
            $Type : 'UI.DataField',
            Value : departmentName,
            Label : '{i18n>Department Name}',
        },
    ]
);
annotate service.Employes_Detail with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'firstName',
                Value : firstName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'lastName',
                Value : lastName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'departmentName',
                Value : departmentName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'empId',
                Value : empId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'designation',
                Value : designation,
            },
            {
                $Type : 'UI.DataField',
                Value : address.country,
                Label : 'country',
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
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Address',
            ID : 'Address',
            Target : 'address/@UI.LineItem#Address1',
        },
    ]
);
annotate service.Employes_Detail with @(
    UI.SelectionFields : [
        EmployeeName,
        empId,
        departmentName,
    ]
);
annotate service.Employes_Detail with {
    firstName @Common.Label : 'firstName'
};
annotate service.Employes_Detail with {
    lastName @Common.Label : 'lastName'
};
annotate service.Employes_Detail with {
    designation @Common.Label : '{i18n>Designation}'
};
annotate service.Employes_Detail with {
    empId @Common.Label : '{i18n>Employee ID}'
};
annotate service.Employes_Detail with {
    departmentName @Common.Label : '{i18n>Department}'
};
annotate service.Employes_Detail with @(
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Table View',
    }
);
annotate service.organisation with @(
    UI.LineItem #tableView : [],
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Table View organisation',
    }
);
annotate service.department with @(
    UI.DataPoint #Emp_Id : {
        $Type : 'UI.DataPointType',
        Value : Emp_Id,
        Title : 'Emp_Id',
    }
);
annotate service.Employes_Detail with @(
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'EmployeeName',
            Target : '@UI.DataPoint#EmployeeName',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'departmentName',
            Target : 'department_det/@UI.DataPoint#departmentName',
        },]
);
annotate service.Employes_Detail with @(
    UI.DataPoint #progress : {
        $Type : 'UI.DataPointType',
        Value : empId,
        Title : 'empId',
        TargetValue : 100,
        Visualization : #Progress,
    }
);
annotate Railway.Employes_Detail.address with @(
    UI.DataPoint #up__empId : {
        Value : up__empId,
    },
    UI.Chart #up__empId : {
        ChartType : #Area,
        Title : 'up__empId',
        Measures : [
            up__empId,
        ],
        MeasureAttributes : [
            {
                DataPoint : '@UI.DataPoint#up__empId',
                Role : #Axis1,
                Measure : up__empId,
            },
        ],
        Dimensions : [
            up__empId,
        ],
    }
);
annotate service.department with @(
    UI.DataPoint #departmentName : {
        $Type : 'UI.DataPointType',
        Value : departmentName,
        Title : 'departmentName',
    }
);
annotate service.Employes_Detail with @(
    UI.DataPoint #firstName : {
        $Type : 'UI.DataPointType',
        Value : firstName,
        Title : 'firstName',
    }
);
annotate service.Employes_Detail with @(
    UI.DataPoint #EmployeeName : {
        $Type : 'UI.DataPointType',
        Value : EmployeeName,
        Title : 'EmployeeName',
    }
);
annotate Railway.Employes_Detail.address with @(
    UI.LineItem #Address : [
    ]
);
annotate service.Address with @(
    UI.LineItem #Address : [
    ]
);
annotate service.Address with @(
    UI.LineItem #Address1 : [
        {
            $Type : 'UI.DataField',
            Value : addressLine1,
            Label : 'addressLine1',
        },
        {
            $Type : 'UI.DataField',
            Value : addressLine2,
            Label : 'addressLine2',
        },
        {
            $Type : 'UI.DataField',
            Value : addressLine3,
            Label : 'addressLine3',
        },{
            $Type : 'UI.DataField',
            Value : country,
            Label : 'country',
        },{
            $Type : 'UI.DataField',
            Value : state,
            Label : 'state',
        },{
            $Type : 'UI.DataField',
            Value : zipCode,
            Label : 'zipCode',
        },]
);
annotate service.Address with @(
    UI.DataPoint #up__empId : {
        Value : up__empId,
    },
    UI.Chart #up__empId : {
        ChartType : #Line,
        Title : 'up__empId',
        Measures : [
            up__empId,
        ],
        MeasureAttributes : [
            {
                DataPoint : '@UI.DataPoint#up__empId',
                Role : #Axis1,
                Measure : up__empId,
            },
        ],
        Dimensions : [
            up__empId,
        ],
    }
);
annotate service.Employes_Detail with {
    EmployeeName @Common.Label : '{i18n>Employee Name}'
};
annotate service.Employes_Detail with {
    empId @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Employes_Detail',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : empId,
                    ValueListProperty : 'empId',
                },
            ],
        },
        Common.ValueListWithFixedValues : true)};
annotate service.Employes_Detail with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : EmployeeName,
        },
        TypeName : '',
        TypeNamePlural : '',
        Description : {
            $Type : 'UI.DataField',
            Value : designation,
        },
        TypeImageUrl : 'sap-icon://account',
        ImageUrl : lastName,
    }
);
