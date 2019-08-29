# Delete duplicate attachments from Wordpress database

This command removes duplicate attachment entries from Wordpress database (same name in DB but a different ID), which happens when you remove WPML plugin (reset!). 

## Steps to execute: ##

0. Make a backup of your database.
1. Go into your favourite Mysql admin or CLI.
2. Execute the command from `test_deleted_ids.sql` (will not delete anything, just show you the IDs that will be removed)
3. If satisfied with step 2 results, execute command from `delete.sql`. 

EXECUTE AT YOUR OWN RISK. Be smart and always make a backup of your DB before doing anything. 

## If you have more than 2 same attchments shown in Media Library
You can just adjust the code from `delete.sql` to 

```
WHERE a.post_name LIKE '%-2'
     OR a.post_name LIKE '%-3'
     OR a.post_name LIKE '%-4'
     OR a.post_name LIKE '%-5'
 ```
