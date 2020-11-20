using {Base, STATUS_TYPE} from './common';

namespace training.clients;

entity TblClient: Base {
    name: String(100);
    age: Integer;
    familyName: String(100);
    test1: String(1);
}