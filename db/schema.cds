namespace ust.local.so;

using {managed} from '@sap/cds/common';

type ApprovalStatus :  String enum {
    Pending;
    Approved;
    Rejected
}

define entity SalesOrderApproval : managed {
    key ID : UUID;
    salesOrderId : String(10);
    salesOrg: String;
    soldToParty: String;
    netValue: Decimal(8,2);
    currency:  String(3);
    approvalStatus: ApprovalStatus
}

