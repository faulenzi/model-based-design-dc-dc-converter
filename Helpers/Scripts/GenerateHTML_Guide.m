% Switch to Documentation folder:
cd([SlPrj.RootFolder,'\Documentation\Step by step guide'])

% Retrieve all .mlx files:
fileStruct = dir('*.mlx');

% Open, execute and convert all of them:
for k=1:1:length(fileStruct)
    matlab.internal.liveeditor.executeAndSave(fileStruct(k).name);
    %retrieve file name:
    [filepath,name,ext] = fileparts(fileStruct(k).name);
    %Export to html
    matlab.internal.liveeditor.openAndConvert(fileStruct(k).name, [name,'.html']);
    disp(['Exporting file nr ',num2str(k),' done!']);
end
clc;
%Go back to work folder
cd(prefs.myWorkFolder);