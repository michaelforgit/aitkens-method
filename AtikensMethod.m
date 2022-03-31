%Original Author(s):  Michael O'Gorman
%Atiken's Method or Atiken's delta-squared process
pnString = input("Enter pn in terms of x\n");  %User must use '' around equation.  Example:  'cos(1/x)'
pn = inline(pnString, 'x');
p0 = input("Enter p0\n");
iterAmount = input("Enter amount of interations you would like to make\n");
a = [p0]; %Array starts at 1.  p0 = a[1].

 for i = 2 : iterAmount+4
     a(i) = pn(i-1);
 end
 fprintf("\nAtiken's Method p0=%d\n", p0);
 for i = 1: iterAmount+1  %Starts at n = 0 and goes to n = iterAmount;
     res = (a(i) - (((a(i+1) - a(i))^2)/(a(i+2)-2*(a(i+1))+a(i))));
     fprintf("%d | res %.10e\n", i-1, res);
 end
fprintf("\n");


