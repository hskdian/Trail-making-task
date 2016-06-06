rand('state',sum(100*clock));
Screen('Preference', 'SkipSyncTests', 1)

wPtr = 0;
[wPtr,rect]=Screen('OpenWindow',wPtr,[], [0,0,500,500]);
%[wPtr,rect]=Screen('OpenWindow',wPtr,[], []);

screens=Screen('Screens');
screenNumber=max(screens);

white=WhiteIndex(screenNumber);


fixation1=imread('C:/Users/EyeLink/Desktop/PkStuff/IanStuff/TA.jpg');
fixation1_tex=Screen('MakeTexture', wPtr, fixation1);


Screen(wPtr, 'FillRect', white);
Screen('DrawTexture', wPtr, fixation1_tex, [], [0 0 500 500]);
Screen('Flip', wPtr);
x = getclicks


Screen('Close', wPtr); %closes screen