-- To select the names of tables whose owners (Groupe 20) contain the string "DWT"
SELECT table_name, owner
FROM all_tables
WHERE owner LIKE '%DWT%';

--TABLE_NAME  OWNER

--ORDER	      DWT_BRANCH_4
--PRODUCT	  DWT_BRANCH_4
--SORT	      DWT_BRANCH_4
--CUSTOMER	  DWT_BRANCH_4
--CUSTOMER	  DWT_BRANCH_6
--ORDERS	  DWT_BRANCH_6
--PRODUCT	  DWT_BRANCH_6
--BUYS	      DWT_BRANCH_2
--CUSTOMER	  DWT_BRANCH_2
--PLACE	      DWT_BRANCH_2
--PRODUCT	  DWT_BRANCH_2

-- The three branches that were assigned to us (Groupe 20) are DWT_BRANCH_2,DWT_BRANCH_4,DWT_BRANCH_6