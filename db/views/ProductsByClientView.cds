using {training.salesorder as salesorder} from '../schema/salesorder';
using {training.products as products} from '../schema/products';
using {training.clients as client} from '../schema/clients';

namespace trainingcf.db.views;

define view ProductsByClient as 

    select from salesorder.TblSalesOrderItem{
        product.ID as ![productId],
        product.name as ![productName],
        salesOrder.client.ID as ![clientId],
        salesOrder.client.name as ![clientName]
    };