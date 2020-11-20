using {training.salesorder as salesorder} from '../schema/salesorder';

namespace trainingcf.db.views;

define view ProductsByClient as 

    select from salesorder.TblSalesOrderItem{
        product.ID as ![productId],
        product.name as ![productName],
        salesOrder.client.ID as ![clientId],
        salesOrder.client.name as ![clientName]
    };