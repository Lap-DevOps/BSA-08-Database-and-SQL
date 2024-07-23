create or replace function update_updated_at_column()
RETURNS trigger AS $$
begin
  NEW."updatedAt" = CURRENT_TIMESTAMP;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;


create or replace function add_timestamp_fields_and_triggers() RETURNS event_trigger LANGUAGE plpgsql as $$
DECLARE
  obj RECORD;
  table_name TEXT;
begin
  for obj in select * from pg_event_trigger_ddl_commands() LOOP

    IF obj.object_type = 'table' AND obj.command_tag = 'CREATE TABLE' THEN
      table_name := obj.object_identity;

      EXECUTE 'ALTER TABLE ' || table_name || ' ADD COLUMN "createdAt" TIMESTAMP DEFAULT CURRENT_TIMESTAMP';
      EXECUTE 'ALTER TABLE ' || table_name || ' ADD COLUMN "updatedAt" TIMESTAMP DEFAULT CURRENT_TIMESTAMP';

      EXECUTE 'CREATE TRIGGER set_updated_at BEFORE UPDATE ON ' || table_name ||
              ' FOR EACH ROW EXECUTE FUNCTION update_updated_at_column()';

      RAISE NOTICE 'Fields "createdAt" and "updatedAt" have been added and trigger created for table "%s"', table_name;
    END IF;
  END LOOP;
END;
$$;



create EVENT TRIGGER table_creation_trigger ON ddl_command_end
  WHEN TAG IN ('CREATE TABLE')
  EXECUTE PROCEDURE add_timestamp_fields_and_triggers();
