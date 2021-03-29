select table_name
    ,  to_number(extractvalue(dbms_xmlgen.getXMLtype('select /*+ PARALLEL(8) */ count(*) cnt from "&&SCHEMA_NAME".'||table_name),'/ROWSET/ROW/CNT'))  rows_in_table 
from dba_TABLES
where owner='&&SCHEMA_NAME';
