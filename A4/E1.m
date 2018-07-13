k = [1 2 3 4 5 6 7 8]
P = .19
r = 1.89
Pk = [.19;.36;.69;1.3;2.5;4.7;8.5;14]
for i = 1:100
    pk = P*r.^(k-1)
    F = Pk-pk'
    J = [k.*P.*r.^(k-1)]';
    J(:,2) = r.^k
    d = J\-F
    r = r + d(1)
    P = P + d(2)
    norm(F)
    i
end
g = P*r.^k
g = g'
plot(k(1:6),Pk(1:6))
hold on
plot(k(1:6),g(1:6))
hold off