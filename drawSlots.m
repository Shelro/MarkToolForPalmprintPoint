function handles = drawSlots( handles, slots, marks )
%DRAWSLOTS Draw slots

for i = 1:size(slots,1)
    if slots(i,1)>size(marks,1)||slots(i,2)>size(marks,1)
        set(handles.TableInfo, 'String', 'Invalid Point in Table');
        continue;
    end
    
    x1 = marks(slots(i,1),1);
    y1 = marks(slots(i,1),2);
    x2 = marks(slots(i,2),1);
    y2 = marks(slots(i,2),2);
    x0 = (x1+x2)/2;
    y0 = (y1+y2)/2;

    vec = [x2-x1, y2-y1]*[0, -1; 1, 0];
    sideLength = norm(vec);
    vec = vec / norm(vec);
    
    vec1 = [vec(1)+vec(2), vec(2)-vec(1)];
    vec2 = [vec(1)-vec(2), vec(1)+vec(2)];
    
    handles.markLines = [handles.markLines;...
        plot([x0-vec(1)*sideLength*0.8, x0+vec(1)*sideLength*0.8],[y0-vec(2)*sideLength*0.8, y0+vec(2)*sideLength*0.8],  'k', 'LineWidth', 1),...
        plot([x0+vec(1)*sideLength*0.8-50*vec2(1),x0+vec(1)*sideLength*0.8],[y0+vec(2)*sideLength*0.8-50*vec2(2),y0+vec(2)*sideLength*0.8], 'k', 'LineWidth', 1),...
        plot([x0+vec(1)*sideLength*0.8-50*vec1(1),x0+vec(1)*sideLength*0.8],[y0+vec(2)*sideLength*0.8-50*vec1(2),y0+vec(2)*sideLength*0.8], 'k', 'LineWidth', 1),...
        plot([1.3*x1-0.3*x2, 1.3*x2-0.3*x1],[1.3*y1-0.3*y2, 1.3*y2-0.3*y1], 'k', 'LineWidth', 1),...
        plot([1.3*x2-0.3*x1-50*vec2(1),1.3*x2-0.3*x1],[1.3*y2-0.3*y1-50*vec2(2),1.3*y2-0.3*y1], 'k', 'LineWidth', 1),...
        plot([1.3*x2-0.3*x1+50*vec1(1),1.3*x2-0.3*x1],[1.3*y2-0.3*y1+50*vec1(2),1.3*y2-0.3*y1], 'k', 'LineWidth', 1)];
    set(handles.TableInfo, 'String', '');
end

end

