[eg,gene_symbol]= xlsread('gene_exp.xlsx','sheet1','A8566:AAC8568');
eg=eg';
%gene_symbol=gene_symbol';

[em,miRNA]= xlsread('miRNA_exp.xlsx','sheet1','A2:ZY1871');
em=em';
miRNA=miRNA';

[rho,pvalue]=corr(eg, em, 'type', 'spearman');