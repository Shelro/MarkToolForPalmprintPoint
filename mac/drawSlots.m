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
    x3 = marks(slots(i,3),1);
    y3 = marks(slots(i,3),2);
    x4 = marks(slots(i,4),1);
    y4 = marks(slots(i,4),2);

    sideLength = 240;
    vec = [x3-x2, y3-y2]*[0, -1; 1, 0];
    vec = vec / norm(vec);
    
    handles.markLines = [handles.markLines;...
        plot([x2+vec(1)*sideLength/2, x2-vec(1)*sideLength/2, x3-vec(1)*sideLength/2, x3+vec(1)*sideLength/2], ...
        [y2+vec(2)*sideLength/2, y2-vec(2)*sideLength/2, y3-vec(2)*sideLength/2, y3+vec(2)*sideLength/2], 'k', 'LineWidth', 1),...
        plot([x2+vec(1)*sideLength/2,x3+vec(1)*sideLength/2],[y2+vec(2)*sideLength/2, y3+vec(2)*sideLength/2], 'k', 'LineWidth', 1),...
        plot([x1, x4],[y1, y4], 'k', 'LineWidth', 1)];
    set(handles.TableInfo, 'String', '');
end

end

