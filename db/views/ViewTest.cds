using {training.salesorder as so} from '../schema/salesorder';

namespace training.views;

define view ViewTest as

    select from so.TblSalesOrderItem{
        ID,
        salesOrder.ID as ![salesOrderId],
        salesOrder.status as ![salesOrderStatus],
        salesOrder.user.ID as ![userId],
        salesOrder.user.name as ![userName]
    };
