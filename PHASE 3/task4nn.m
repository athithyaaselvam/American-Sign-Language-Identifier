load newFeatureMatrix;
finalTrainingData = [];
finalTestData=[];
classLabel = [];



for i = 1:10
    [nr,nc] = size(newFeatureMatrix{i});
    nm =  newFeatureMatrix{i};
    numTrainRecord = round((nr/37)*10);
    trainingData = nm(1:numTrainRecord,:);
    finalTrainingData{i} = trainingData;
    TrainingClassLabel{i}(1:numTrainRecord,1) = 1; 
end

for i = 1:10
    [numClassTrainRecordrow,numClassTrainRecordCol] = size(finalTrainingData{i});
    numOtherClassRec = round(numClassTrainRecordrow/9);
    
    for j = 1:10
        if i ~= j
           otherClassRec = finalTrainingData{j}(1:numOtherClassRec,:);
           finalTrainingData{i} = [finalTrainingData{i};otherClassRec];
        end
    end
    TrainingClassLabel{i}(numClassTrainRecordrow+1:numClassTrainRecordrow+(numOtherClassRec*9),1) = 0; 
end


userNum = 14;

for i = 1:10
    [nr,nc] = size(newFeatureMatrix{i});
    eachUserData = round(nr/37);
    currentUserData = eachUserData*userNum;
    finalTestData{i} = newFeatureMatrix{i}(currentUserData:currentUserData+eachUserData,:);
    TestclassLabel{i}(1:eachUserData+1,1) = 1;
end

for i = 1:10
    [numClassTestRecordrow,numClassTestRecordCol] = size(finalTestData{i});
    numOtherClassRec = round(numClassTestRecordrow/9);
    
    for j = 1:10
        if i ~= j
           otherClassRec = finalTestData{j}(1:numOtherClassRec,:);
           finalTestData{i} = [finalTestData{i};otherClassRec];
          
        end
    end
     TestclassLabel{i}(numClassTestRecordrow+1:numClassTestRecordrow+(numOtherClassRec*9),1) = 0;
end


classLabel = 10;

classTrainingData = finalTrainingData{classLabel};
classTestData = finalTestData{classLabel};
finaTrainingLabel = TrainingClassLabel{classLabel}(:,1);
finalTestLabel = TestclassLabel{classLabel}(:,1);

    
totalData = [classTrainingData;classTestData];
totalResultLabel = [finaTrainingLabel;finalTestLabel];
           
           
           
           
           
           
           
           
    
