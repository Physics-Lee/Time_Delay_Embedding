function plot_2D(time_series_reconstructed,eLag,eDim)

figure;
plot(time_series_reconstructed(:,1), time_series_reconstructed(:,2));
xlabel('Dimension 1');
ylabel('Dimension 2');
title('Time Delay Embedding');
subtitle(sprintf("Estimated delay = %d, Estimated embedding dimension = %d",eLag,eDim));

end