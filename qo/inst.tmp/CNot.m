%% -*- texinfo -*-
%% @deftypefn {Function file} {} CNot(@var{size},@var{contrv},@var{targetv})
%% Function @code{CNot} returns controled Not operation on qubits @var{targetv} 
%% controled by @var{contrv}. Size of the result gate is given by @var{size}.
%% @example 
%% @group
%%  CNot (2,[2],[1])
%%  @result{} 
%%  1  0  0  0  
%%  0  0  0  1  
%%  0  0  1  0
%%  0  1  0  0  
%% @end group
%% @end example
%%
%% @end deftypefn
%%
%% @seealso {Not, ControledGate}
%%

function ret = CNot(size,contrv,targetv)
if (nargin ~= 3) 
	usage ('CNot (size, control, targets)');
end

ret = ControlledGate(size, Not, contrv, targetv );

end