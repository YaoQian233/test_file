N = 8 --���̴�С

--��飨n��c���Ƿ񲻻ᱻ����
function isplaceok(a,n,c)
    for i = 1, n-1 do   --����ûһ���Ѿ������õĻʺ�
      if(a[i] == c)or   --ͬһ�У�
        (a[i]-i == c-n)or --ͬһ�Խ��ߣ�
        (a[i]+i==c+n)then  --ͬһ�Խ���
      return false  --λ�ûᱻ����
      end
        
    end
    return true  --���ᱻ������λ����Ч
end


--��ӡ����
function printsolution(a)
  for i = 1, N do   --����ÿһ��
    for j =1,N do   --��ÿһ��
      --�����X����-�������һ���ո�
      io.write(a[i] == j and "X" or "-"," ")  
    end
    io.write("\n")
  end
  io.write("\n")
end

--�Ѵӡ�n������N�������лʺ�������̡�a����
function addqueen(a,n)
    if n>N then  --�Ƿ����еĻʺ󶼱����ú��ˣ�
        printsolution(a)
    else --���Է��õ�n���ʺ�
        for c=1,N do
            if isplaceok(a,n,c) then
                a[n] = c --�ѵ�n���ʺ�ŵ���c��
                addqueen(a,n+1)
                
            end
        end
        
    end
    
end

--���г���
addqueen({},1)