function [ ] = Traveling_PlotTrip(L, trip, names, saving)

  f = fopen('Trip.csv', 'w');
  for t = trip
    fprintf(f, '%s,%3.9f,%3.9f\n', names{t}, L(t,1), L(t,2));
  end
  fclose(f);

  system(['Rscript Traveling_PlotTrip.R ' saving])

end
