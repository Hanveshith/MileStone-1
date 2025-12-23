const cds = require('@sap/cds');
const { message } = require('@sap/cds/lib/log/cds-error');
const { SELECT, UPDATE } = require('@sap/cds/lib/ql/cds-ql');

module.exports = async (srv) => {
    // Using CDS API      
    const ZAPI_SALES_ORDER_SRV = await cds.connect.to("ZAPI_SALES_ORDER_SRV");
    srv.on('READ', 'A_SalesOrder', async (req) => {

        let salesOrders = await ZAPI_SALES_ORDER_SRV.run(req.query);
        if(req.params && req.params.length > 0){
            console.log(req.params)
            const {SalesOrder} = req.params[0];
            const data = await SELECT.from('SalesOrderApproval').where({ salesOrderId: SalesOrder});
            console.log(data);
            salesOrders.to_localApprovalData = data[0];
            console.log(salesOrders);
            return salesOrders;
        }
        
        return salesOrders;
    });
    
    srv.on('approveSalesOrder', async(req) => {
        // console.log(req.params);
        const {SalesOrder} = req.params[0];
        const check = await SELECT.from('SalesOrderApproval').where({ salesOrderId: SalesOrder});
        // console.log(check)
        if(check[0].approvalStatus === 'Approved'){
            if(check[0].createdBy !== req.user){
                return req.error({message: "Not Created By You"});
            }
            req.notify({message:  "Alread approved"})
            return
        }
        const data = await UPDATE.entity('SalesOrderApproval').set({approvalStatus: "Approved"}).where({salesOrderId : SalesOrder});
        req.notify({message:  "Approved"})

    })
    srv.on('approveSalesOrder', async(req) => {
        // console.log(req.params);
        const {SalesOrder} = req.params[0];

        const data = await UPDATE.entity('SalesOrderApproval').set({approvalStatus: "Approved"}).where({salesOrderId : SalesOrder});
        console.log(data);
        
        req.notify({message:  "Approved"})
        
    })
    srv.on('rejectSalesOrder', async(req) => {
        // console.log(req.params);
        const {SalesOrder} = req.params[0];
        console.log(data);
        const data = await UPDATE.entity('SalesOrderApproval').set({approvalStatus: "Rejected"}).where({salesOrderId : SalesOrder});
        req.notify({message:  "Rejected"})

    })


}