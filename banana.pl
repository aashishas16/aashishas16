% Moves
mv(st(mid, on_box, mid, no_banana), grasp, st(mid, on_box, mid, has_banana)).
mv(st(Pos, on_floor, Pos, Banana), climb, st(Pos, on_box, Pos, Banana)).
mv(st(P1, on_floor, P1, Banana), push(P1, P2), st(P2, on_floor, P2, Banana)).
mv(st(P1, on_floor, Box, Banana), walk(P1, P2), st(P2, on_floor, Box, Banana)).

% Goal condition
goal(st(_, _, _, has_banana)). % Monkey has the banana.
goal(Curr) :-
    mv(Curr, Act, Next),       % Perform a move.
    write(Act), write(" -> "), write(Next), nl, % Log action and new state.
    goal(Next).                % Check recursively if the goal can be reached.

% Solve the problem
solve :-
    Init = st(door, on_floor, window, no_banana), % Initial state.
    goal(Init). % Start solving from the initial state.



# move(state(middle, on_box, middle, does_not_have_banana), grasp, state(middle, on_box, middle, has_banana)).
# move(state(Position, on_floor, Position, BananaStatus), climb, state(Position, on_box, Position, BananaStatus)).
# move(state(Position1, on_floor, Position1, BananaStatus), push(Position1, Position2), state(Position2, on_floor, Position2, BananaStatus)).
# move(state(Position1, on_floor, BoxPosition, BananaStatus), walk(Position1, Position2), state(Position2, on_floor, BoxPosition, BananaStatus)).

# % Goal condition
# can_get_banana(state(_, _, _, has_banana)). % Goal state where the monkey has the banana.
# can_get_banana(CurrentState) :-
#     move(CurrentState, Action, NewState),      % Perform a move.
#     write(Action), write(" -> "), write(NewState), nl, % Log the action and new state.
#     can_get_banana(NewState).                 % Recursively check if the goal can be reached.

# % Solve the problem
# solve :-
#     InitialState = state(at_door, on_floor, at_window, does_not_have_banana), % Define the initial state.
#     can_get_banana(InitialState). % Start solving from the initial state.  