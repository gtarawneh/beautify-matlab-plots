function prepPub(psize)

if nargin < 1, psize = [16 16]; end

set(gcf, 'PaperUnits', 'centimeters');

set(gcf, 'PaperPosition', [0 0 psize]); % physical dimensions (cm)

set(gcf, 'PaperSize', psize);

d = printpreview; close(d); % required to add PrintTemplate to fig

changePrintTemplate(gcf);

end

function changePrintTemplate(h)

t = get(h, 'PrintTemplate');

t.FontSize = 8;

t.FontSizeType = 'fixed';

t.LineMinWidth = 0.5;

set(h, 'PrintTemplate', t);

end
