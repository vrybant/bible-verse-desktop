program bibleverse;

uses
  Math,
  FMX.Forms,
  UnitMain in 'UnitMain.pas' {FormMain},
  UnitAbout in 'UnitAbout.pas' {FormAbout},
  UnitHint in 'UnitHint.pas' {FormHint},
  UnitLang in 'UnitLang.pas',
  UnitLib in 'UnitLib.pas',
  UnitList in 'UnitList.pas';

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

