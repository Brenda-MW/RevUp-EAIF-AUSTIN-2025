dlq = dlquantizer(netProjected,"ExecutionEnvironment","MATLAB"); 
% use less data to calibrate
dsLocal = subset(ds,1:30); 
r = dlq.calibrate(dsLocal); 
quantizedNet = dlq.quantize(); 

ypred_quantized = predict(quantizedNet,XTest);