using {training.salesorder as salesorder} from '../schema/salesorder';

namespace trainingcf.db.views;

define view ProductsByClient as 

    select from salesorder.TblSalesOrderItem{
        salesOrder.client.ID as ![clientId],
        salesOrder.client.name as ![clientName],
        sum(product.salesPrice * product.quantity) as ![totalValue]
    } group by salesOrder.client.ID;