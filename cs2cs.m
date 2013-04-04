function [x,y]=cs2cs(u, v, prj4_params)

  % call cs2cs from matlab
  % inspired by
  % http://marinescience.wiki.otago.ac.nz/Cs2csFromMatlab
  %------------------------------------------------------------------------
  
  % input validation
  %------------------------------------------------------------------------  
  if nargin<3
    error('please provide all params');
  end
  u = u(:);
  v = v(:);
  if length(u)~=length(v)
    error('input coordinates must have the same length');
  end
  
  if ~isempty(u)
    % cs2cs: operating system dependent stuff
    %----------------------------------------------------------------------
    os = computer();
    if strcmp(os(1:5),'PCWIN')
      f = filesep();
      proj_path = [pwd() f 'util' f 'proj' f 'bin'];
      proj_lib_path = [pwd() f 'util' f 'proj' f 'nad'];
      clear f;
      setenv('PATH', [getenv('PATH') ';' proj_path]);
      setenv('PROJ_LIB', proj_lib_path);
    end

    % call cs2cs
    %----------------------------------------------------------------------
    tmp_file1 = tempname(); % infile
    tmp_file2 = tempname(); % outfile
    dlmwrite(tmp_file1, [u, v], 'delimiter', ' ', 'precision', '%.6f');

    [status,result] = system(['cs2cs ' prj4_params ' < ' tmp_file1 ' > ' tmp_file2]);
    if status~=0
      error(['Calling cs2cs: ' result]);
    end

    M = dlmread(tmp_file2);
    x = M(:,1);
    y = M(:,2);

    % cleanup
    %----------------------------------------------------------------------
    delete(tmp_file1);
    delete(tmp_file2);
  else
    x = [];
    y = [];
  end

end %eof