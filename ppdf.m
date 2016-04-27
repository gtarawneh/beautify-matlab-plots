% export current figure to pdf in high resolution

function ppdf(file, psize)

if nargin<2, psize = [15 10]; end

prepPub(psize);
    
print('-dpdf', '-r2500', file);
 
end
