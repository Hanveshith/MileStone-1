using SOService as service from '../../srv/so-service';
annotate service.A_SalesOrder with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'SalesOrder',
                Value : SalesOrder,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SalesOrderType',
                Value : SalesOrderType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SalesOrganization',
                Value : SalesOrganization,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DistributionChannel',
                Value : DistributionChannel,
            },
            {
                $Type : 'UI.DataField',
                Label : 'OrganizationDivision',
                Value : OrganizationDivision,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SalesGroup',
                Value : SalesGroup,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SalesOffice',
                Value : SalesOffice,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SalesDistrict',
                Value : SalesDistrict,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Sales Order Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Sales Order Approval Information',
            ID : 'SalesOrderApprovalInformation',
            Target : '@UI.FieldGroup#SalesOrderApprovalInformation',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'SalesOrder',
            Value : SalesOrder,
        },
        {
            $Type : 'UI.DataField',
            Label : 'SalesOrderType',
            Value : SalesOrderType,
        },
        {
            $Type : 'UI.DataField',
            Label : 'SalesOrganization',
            Value : SalesOrganization,
        },
        {
            $Type : 'UI.DataField',
            Label : 'DistributionChannel',
            Value : DistributionChannel,
        },
        {
            $Type : 'UI.DataField',
            Label : 'OrganizationDivision',
            Value : OrganizationDivision,
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'SOService.approveSalesOrder',
            Label : 'approveSalesOrder',
            Inline : true,
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'SOService.rejectSalesOrder',
            Label : 'rejectSalesOrder',
            Inline : true,
        },
    ],
    UI.FieldGroup #SalesOrderApprovalInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : to_localApprovalData.ID,
                Label : 'ID',
            },
            {
                $Type : 'UI.DataField',
                Value : to_localApprovalData.netValue,
                Label : 'netValue',
            },
            {
                $Type : 'UI.DataField',
                Value : to_localApprovalData.salesOrderId,
                Label : 'salesOrderId',
            },
            {
                $Type : 'UI.DataField',
                Value : to_localApprovalData.salesOrg,
                Label : 'salesOrg',
            },
            {
                $Type : 'UI.DataField',
                Value : to_localApprovalData.soldToParty,
                Label : 'soldToParty',
            },
            {
                $Type : 'UI.DataField',
                Value : to_localApprovalData.approvalStatus,
                Label : 'approvalStatus',
            },
            {
                $Type : 'UI.DataField',
                Value : to_localApprovalData.currency,
                Label : 'currency',
            },
            {
                $Type : 'UI.DataField',
                Value : to_localApprovalData.createdAt,
            },
            {
                $Type : 'UI.DataField',
                Value : to_localApprovalData.createdBy,
            },
        ],
    },
);

