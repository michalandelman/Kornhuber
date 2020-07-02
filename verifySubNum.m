%   Verify that the subject number that was inserted is correct by 
%   double-checking it

subjectNum_temp1 = input('Please insert the participant code\n');
subjectNum_temp2 = input('Please insert again the participant code\n');

if subjectNum_temp1 == subjectNum_temp2
    subjectNum = subjectNum_temp1;
else
    disp('sorry, we need to begin again');
    verifySubNum;
end
