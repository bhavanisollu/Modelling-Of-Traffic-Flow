function r = nf( u, v )
    for i = 1:length(u)
        if (u(i) >= v(i))
            if ((u(i)+v(i))/2 > 0)
                u1(i)=u(i);
            else
                u1(i)=v(i);
            end
        else
            if (u(i)>0)
                u1(i)=u(i);
            else if (v(i)<0)
                u1(i)=v(i);
            else
                u1(i)=0;
            end
        end
    end
r = f(u1);
end

