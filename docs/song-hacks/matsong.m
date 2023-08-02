








% ----------------- Open File -------------------
fid = fopen('songlist.html')
% ----------------- Init Loop -------------------
linecells = {''};
idxline = 0;
tline = '';
% ----------------- Parse XML -------------------
while ischar(tline)
  tline = fgetl(fid);
  if ~isa(tline,'char')
    continue
  end
  % ----------------- Remove HTML Tages -------------------
  try
    tline = erase(tline,'<li class="ui-li ui-li-static ui-body-c">');
    tline = erase(tline,'</li>');
    % tline = strrep(tline,'</li>');
  catch 
    print(['Failed to perform list erase for' tline])
    continue
  end
  idxline = idxline + 1;
  linecells{idxline} = tline;
end
linecells = linecells';
% ----------------- Clean Strings -------------------
linesongs = linecells(cellfun(@(CELLSTR) ~isempty(CELLSTR) && isa(CELLSTR,'char') && length(CELLSTR) > 5,linecells));
% Keep only songs with number code
linesongs = linesongs(cellfun(@(CELLSTR) sum(isstrprop(CELLSTR(1:5),'digit')) == 5,linesongs));
% Split number, song name, artist
linesplits = cellfun(@(CELLSTR) strsplit(CELLSTR,' - '), linesongs,'UniformOutput',false);
% Clean up
linesplits2 = linesplits(cellfun(@(CELLSTR) length(CELLSTR),linesplits) == 3);
% Make table from cells
linetable = cell2table(linesplits2{1})
for idx = 2:length(linesplits2)
  linetable = vertcat(linetable,cell2table(linesplits2{idx}));
end
% Change song num chars to nums
songnums = cellfun(@(CELLSTR) str2num(CELLSTR),linetable{:,1});
% Sort Table
[songsort, idxSort] = sort(songnums,'ascend');
linetableSorted = linetable(idxSort,:);
linetableSorted = addvars(linetableSorted,songsort,'NewVariableName','songum','Before','Var1');
% Remove duplicate song nums
[uninums, idxUni, idxMain] = unique(songsort);
linetableUni = linetableSorted(idxUni,:);

linetableUni.Properties.VariableNames = {'Num_Dbl' 'Num_String' 'Song_Title' 'Song_Artist'};

linetableNums = linetableUni;
[~,idxTitle]= sort(linetableUni{:,'Song_Title'});
linetableTitles = linetableUni(idxTitle,2:end);
[~,idxArtist]= sort(linetableUni{:,'Song_Artist'});
linetableArtist = linetableUni(idxArtist,2:end);

writetable(linetableNums,'linetabNums.xlsx');

cd('song-mds')
cell2md(vertcat({'Song_Num' 'Song_Name' 'Song_Artist'} ,table2cell(linetableTitles)),'outfile','mdtab-titles.md')
cell2md(vertcat({'Song_Num' 'Song_Name' 'Song_Artist'} ,table2cell(linetableArtist)),'outfile','mdtab-artist.md')
cell2md(vertcat({'Song_Num' 'Song_Name' 'Song_Artist'} ,table2cell(linetableNums)),'outfile','mdtab-nums.md')
cd ..

%