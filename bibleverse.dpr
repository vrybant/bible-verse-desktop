program bibleverse;

uses
  Math,
  FMX.Forms,
  UnitMain in 'unitmain.pas' {FormMain},
  UnitAbout in 'unitabout.pas' {FormAbout},
  UnitHint in 'unithint.pas' {FormHint},
  UnitLang in 'unitlang.pas',
  UnitLib in 'unitlib.pas',
  UnitList in 'unitlist.pas';

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

