a = [1 2; 3 4; 5 6]

% size(a)

a(:, 1)

w = -6 + sqrt(10)*(randn(1,100));

% hist(w)

a = [1 2; 3 4; 5 6]
a = a.^2
b = [7 8 9; 10 11 12]
% plot(a(:, 1), a(:, 2), 'o')

% returns the element (1,1)
a(1, 1)

% returns the matricial product
c = a * b
v = zeros(10:1)

x = [1; 2; 3; 4; 5]
w = eye(5) 
x' * w

clear

v = zeros(10, 1);
for i = 1:10
  for j = 1:10
    v(i) = 1;
  end
end

v
d = c(1:2, 1:3)

vec_1 = [1; 2; 3; 4; 5]
vec_2 = [6; 7; 8; 9; 10]

vec_1_1 = vec_1 + 1

resp = sum(vec_1.*vec_2)

% returns the element at position 2 starting by 1
vec_2(2)

% inner product of two vectors
v_prod = vec_1 * vec_2'




