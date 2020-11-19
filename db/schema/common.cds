using {cuid, temporal, managed} from '@sap/cds/common';

type STATUS_TYPE: String(1) enum {
    DRAFT = 'D';
    OPEN = 'O';
    COMPLETED = 'C';
}


entity Base: cuid, managed {
}