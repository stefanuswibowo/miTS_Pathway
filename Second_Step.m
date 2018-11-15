outputfilename = input('Input the output filename: ','s')
c=[];
a=gene_symbol(:,1);
[mirna_rows,mirna_ncols]=size(miRNA);
[gene_symbol_rows,gene_symbol_ncols]=size(gene_symbol);

for x=1:mirna_ncols,
b=pvalue(:,x);
b=num2cell(b);
mirna_T=miRNA(1,x);
for k=2:gene_symbol_rows,mirna_T=[mirna_T;miRNA(1,x)];end;
c=[c;mirna_T a b];
end;

[nrows,ncols]=size(c);
fid = fopen(outputfilename,'w');
for row=1:nrows
    fprintf(fid, '%s\t%s\t%6.17f\r\n', c{row,:});
end
fclose(fid);