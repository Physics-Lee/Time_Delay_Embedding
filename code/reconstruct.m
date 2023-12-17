function [time_series_reconstructed, eLag, eDim] = reconstruct(time_sery)

% get reconstructed times series and 2 super-parameters
[time_series_reconstructed, eLag, eDim] = phaseSpaceReconstruction(time_sery);
disp(['Estimated delay: ', num2str(eLag)]);
disp(['Estimated embedding dimension: ', num2str(eDim)]);

end