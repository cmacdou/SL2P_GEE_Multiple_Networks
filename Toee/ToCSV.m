function ToCSV(parameter_file)
load(fullfile(['Report_' parameter_file '\Class_1\' parameter_file '.mat']),'Def_Base','Results','ResultsIncertitudes');
%load(fullfile('Report_s2_sl2p_single_or_prosail_deciduous_broadleaf_forest\Class_1\s2_sl2p_weiss_or_prosail2.mat'),'Def_Base','Results', 'Perf_Theo');

P3 = fieldnames(Results.NNT3);
P= P3{3};
sp2lTOee(P, Def_Base, Results);
sp2lTOee_error(P,Def_Base,ResultsIncertitudes);

end
