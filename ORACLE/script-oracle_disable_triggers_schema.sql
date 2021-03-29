BEGIN  
    FOR i IN (SELECT trigger_name  FROM user_triggers) LOOP  
        EXECUTE IMMEDIATE 'ALTER TRIGGER ' || i.trigger_name || ' DISABLE';  
    END LOOP;  
END;  
/