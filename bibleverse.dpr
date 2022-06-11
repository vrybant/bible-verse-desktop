program bibleverse;

uses
  FMX.Forms,
  Math,
  unitmain in 'unitmain.pas' {FormMain},
  unitabout in 'unitabout.pas' {FormAbout},
  unithint in 'unithint.pas' {FormHint},
  unitlang in 'unitlang.pas',
  unitlib in 'unitlib.pas',
  unitlist in 'unitlist.pas',
  unitfontdlg in 'unitfontdlg.pas';

{$R *.res}

begin
  if not CreateMutex('BibleVerseMutexName') then Exit;

  SetExceptionMask(exAllArithmeticExceptions);
  // ��������� ������ Floating point division by zero
  // ������� ���������� � Windows 7 ��� Virtual Box

  Application.Initialize;
  Application.Title := 'Bible Verse Desktop';
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormAbout, FormAbout);
  Application.CreateForm(TFormHint, FormHint);
  Application.Run;

  CloseMutex;
end.

