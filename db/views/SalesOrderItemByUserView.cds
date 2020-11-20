using {training.salesorder as salesorder} from '../schema/salesorder';

namespace training.db.views;

define view SalesOrderItemByUser as 

    select from salesorder.TblSalesOrderItem{
        ID,
        salesOrder.ID as ![salesOrderId],
        salesOrder.status as ![salesOrderStatus],
        salesOrder.user.ID as ![userId],
        salesOrder.user.name as ![userName]
    };