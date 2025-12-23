using {ust.local.so as so} from '../db/schema';
using ZAPI_SALES_ORDER_SRV from './external/ZAPI_SALES_ORDER_SRV.cds';

define service SOService {


    entity localApprovalData as projection on so.SalesOrderApproval;

    @restrict: [
        {grant: ['READ','WRITE'], to : 'SO_MANAGER'},
        {grant: ['READ'], to : 'SO_EMPLOYEE'}
    ]
    entity A_SalesOrder      as
        projection on ZAPI_SALES_ORDER_SRV.A_SalesOrder {
            key SalesOrder,
                SalesOrderType,
                SalesOrganization,
                DistributionChannel,
                OrganizationDivision,
                SalesGroup,
                SalesOffice,
                SalesDistrict,
                SalesDocApprovalStatus,
                CreatedByUser,
                to_localApprovalData : Association to one localApprovalData on to_localApprovalData.salesOrderId = SalesOrder
        }
        actions {
            action approveSalesOrder() returns String;
            action rejectSalesOrder() returns String;
        };
}
