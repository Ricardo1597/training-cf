using {training.salesorder as salesorder} from '../schema/salesorder';
using {training.products as product} from '../schema/products';
using {training.clients as client} from '../schema/clients';

namespace trainingcf.db.views;

define view ProductsByClient as 

    select from salesorder.TblSalesOrderItem{
        salesOrder.client.ID as ![clientId],
        salesOrder.client.name as ![clientName],
        sum(product.salesPrice * product.quantity) as ![totalValue]
    } group by salesOrder.client.ID;