function play(A, strategy)
    % Strategy adjustment
    if strcmp(strategy, 'maxmin')
        disp('Analysis for MaxMin strategy:');
        A_mod = A';
    else
        disp('Analysis for MinMax strategy:');
        A_mod = A;
    end

    fprintf('A_mod = \n');
    disp(A_mod);

    % Calculate safety levels and strategies
    row_maxima = max(A_mod, [], 2);
    col_minima = min(A_mod, [], 1);
    fprintf('row_maxima = \n');
    disp(row_maxima);
    fprintf('col_minima = \n');
    disp(col_minima);

    S_D1 = min(row_maxima);
    safe_strategies1 = find(row_maxima == S_D1);

    S_D2 = max(col_minima);
    safe_strategies2 = find(col_minima == S_D2);

    % Display results
    fprintf('\nFirst Player Safety Level: %d\n', S_D1);
    fprintf('First Player Safe Strategies: %s\n', mat2str(safe_strategies1));

    fprintf('Second Player Safety Level: %d\n', S_D2);
    fprintf('Second Player Safe Strategies: %s\n\n', mat2str(safe_strategies2));

    % Saddle point check
    if abs(S_D1 - S_D2) < eps
        disp('Saddle point exists.');
        fprintf('Safety Level: %d\n', S_D2);
    else
        disp('Saddle point does not exist.');
    end
end

function demo()
    % A = [
    %      3   5  2;
    %      7   1  6;
    %      4   8  3;
    %      2   6  5
    % ];

    A = [
        0 3 1 0 0 0;
        5 3 4 6 5 4;
        1 0 1 0 0 0;
        7 5 4 7 9 6;
        4 5 4 7 8 7;
        5 7 4 5 6 5
    ];



    fprintf('----------START---------\n');
    play(A, 'maxmin');
    fprintf('-------------------\n');
    play(A, 'minmax');
end

demo();