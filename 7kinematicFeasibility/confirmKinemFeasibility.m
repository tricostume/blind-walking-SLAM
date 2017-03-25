function boundKinemMap = confirmKinemFeasibility( boundKinemMap )
    % The lower feasVal, the "more feasible" the trajectory. Naturally it
    % must be zero for accepting the geometric path into kinematic planning phase.
 feasValVel = sum([boundKinemMap.flags.Fvel1p, boundKinemMap.flags.Fvel1m,...
               boundKinemMap.flags.Fvel2p, boundKinemMap.flags.Fvel2m, ...
               boundKinemMap.flags.Fvel3p, boundKinemMap.flags.Fvel3m, ...
               boundKinemMap.flags.Fvel4p, boundKinemMap.flags.Fvel4m, ... 
               boundKinemMap.flags.Fvel5p, boundKinemMap.flags.Fvel5m, ...
               boundKinemMap.flags.Fvel6p, boundKinemMap.flags.Fvel6m]);
 feasValAcc = sum([boundKinemMap.flags.Facc1p, boundKinemMap.flags.Facc1m,...
               boundKinemMap.flags.Facc2p, boundKinemMap.flags.Facc2m, ...
               boundKinemMap.flags.Facc3p, boundKinemMap.flags.Facc3m, ...
               boundKinemMap.flags.Facc4p, boundKinemMap.flags.Facc4m, ... 
               boundKinemMap.flags.Facc5p, boundKinemMap.flags.Facc5m, ...
               boundKinemMap.flags.Facc6p, boundKinemMap.flags.Facc6m]);
  boundKinemMap.feasValVel = feasValVel;
  boundKinemMap.feasValAcc = feasValAcc;
    if feasValVel ~=0
       warning(['feasValVel = ', num2str(feasValVel)]);
    end
    if feasValAcc ~=0
       warning(['feasValAcc = ', num2str(feasValAcc)]);
    end
end