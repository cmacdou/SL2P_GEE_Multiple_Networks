function ShortCut()
[x,class_name] = xlsread('sl2p_indextable.xlsx','Sheet1', 'A13:C14');
%[x,class_name] = xlsread('sl2p_indextable.xlsx','Prosail', 'A1:C11');


for x= 1:2

parameter_file = class_name{x,2};    
%xlswrite(s2_sl20_single_or_prosail,parameter_file,'Start','B4');
%status=SL2PD(s2_sl20_single_or_prosail,0,1);
status = SL2PD(parameter_file,1,1);
ToCSV(parameter_file);
end
 