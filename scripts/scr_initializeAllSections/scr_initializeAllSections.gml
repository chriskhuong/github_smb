// initialize our lists for the different template types we have
sectionLRList1 = ds_list_create();
sectionLRList2 = ds_list_create();
sectionLTRList1 = ds_list_create();
sectionLTRList2 = ds_list_create();
sectionLBRList1 = ds_list_create();
sectionLBRList2 = ds_list_create();

// store our string representations for our templates in our new lists
scr_initializeLRSections();
scr_initializeLTRSections();
scr_initializeLBRSections();