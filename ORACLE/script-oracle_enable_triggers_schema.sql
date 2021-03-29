BEGIN  
    FOR i IN (SELECT trigger_name  FROM user_triggers) LOOP  
        EXECUTE IMMEDIATE 'ALTER TRIGGER ' || i.trigger_name || ' ENABLE';  
    END LOOP;  
END;  
/