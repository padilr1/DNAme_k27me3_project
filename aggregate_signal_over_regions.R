aggregate_signal_over_regions = function(signal, regions, FUN = mean) {
  regions$score = as.numeric(NA)
  regions$counts = as.numeric(NA)
  overlaps = findOverlaps(signal, regions)
  averagedSignal = aggregate(score(signal[queryHits(overlaps)]), 
                             list(subjectHits(overlaps)), FUN)
  regions$score[averagedSignal[,1]] = averagedSignal[,2]
  regions$counts = countOverlaps(regions, signal[queryHits(overlaps)])
  regions
}

