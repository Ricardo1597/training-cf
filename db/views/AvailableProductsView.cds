using {training.products as product} from '../schema/products';

namespace trainingcf.db.views;

define view AvailableProducts as

    select from product.TblProducts as p where p.validFrom <= now() and p.validTo >= now();
