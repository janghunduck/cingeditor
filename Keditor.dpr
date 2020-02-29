program Keditor;

uses
  FastMM4 in 'Lib\FastMM\FastMM4.pas',
  Forms,
  main in 'CoreSource\main.pas' {KeditorMainForm},
  cCoreFlag in 'CoreSource\KeCore\cCoreFlag.pas',
  KeGlobal in 'CoreSource\KeFreeCommon\KeGlobal.pas',
  KeFreeUtil in 'CoreSource\KeFreeCommon\KeFreeUtil.pas',
  KeCoreUIManager in 'CoreSource\KeCore\KeCoreUIManager.pas',
  KeCoreManager in 'CoreSource\KeCore\KeCoreManager.pas',
  KeCoreEvent in 'CoreSource\KeCore\KeCoreEvent.pas',
  KeCorePanelManager in 'CoreSource\KeCore\KeCorePanelManager.pas',
  KeCoreMenu in 'CoreSource\KeCore\KeCoreMenu.pas',
  Kedit in 'CoreSource\KeCore\Kedit.pas',
  KeSynKeditor in 'CoreSource\KeCore\KeSynKeditor.pas',
  KeToolButton in 'CoreSource\KeCore\KeToolButton.pas',
  KeAndFreeTemplatesDlg in 'CoreSource\KeFreeForm\KeAndFreeTemplatesDlg.pas' {KeAndFreeTemplatesDialog},
  KeFreeTemplates in 'CoreSource\KeFreeCommon\KeFreeTemplates.pas',
  KeStatusBar in 'CoreSource\KeCore\KeStatusBar.pas',
  UFind in 'CoreSource\KeForm\UFind.pas' {Find},
  UReplace in 'CoreSource\KeForm\UReplace.pas' {Replace},
  KeAbout in 'CoreSource\KeFreeForm\KeAbout.pas' {AboutForm},
  Dialogs,
  SysUtils,
  kDlgSaveFTP in 'CoreSource\KeForm\kDlgSaveFTP.pas' {DlgSaveFTP},
  NotesFrm in 'CoreSource\KeForm\NotesFrm.pas' {NotesForm},
  cDiagramFrame in 'Source\Diagram\RtfdDiagram\cDiagramFrame.pas' {DiagramFrame: TFrame},
  cRtfdDiagramFrame in 'Source\Diagram\RtfdDiagram\cRtfdDiagramFrame.pas' {Frame1: TFrame},
  cCaptureFrame in 'CoreSource\KeForm\cCaptureFrame.pas' {CaptureFrame: TFrame},
  KeFTPFrame in 'CoreSource\KeForm\Frame\KeFTPFrame.pas' {FTPFrame: TFrame},
  cFTPFrm in 'Source\FTP\cFTPFrm.pas' {FTPForm},
  KeDWSDlg in 'CoreSource\KeForm\KeDWSDlg.pas' {DWSForm},
  cFTPTitleInsertFrm in 'Source\FTP\cFTPTitleInsertFrm.pas' {FTPTitleInsertForm},
  KeFloweditorFrm in 'CoreSource\KeForm\KeFloweditorFrm.pas' {FloweditorFrm},
  cSearchSolutionFrm in 'CoreSource\KeForm\cSearchSolutionFrm.pas' {SearchSolutionFrm},
  KeIeEditorFrm in 'CoreSource\KeForm\KeIeEditorFrm.pas' {IeEditorFrm},
  cStatementFrm in 'CoreSource\KeForm\cStatementFrm.pas' {StatementFrm},
  KeSymbolDlg in 'CoreSource\KeForm\KeSymbolDlg.pas' {SymbolDialog},
  frmBookMark in 'CoreSource\KeForm\frmBookMark.pas' {BookMarkFrm},
  uiConfigHTML in 'CoreSource\KeForm\uiConfigHTML.pas' {EnvHTMLForm},
  uiConfigPAS in 'CoreSource\KeForm\uiConfigPAS.pas' {EnvPASForm},
  uiConfigPHP in 'CoreSource\KeForm\uiConfigPHP.pas' {ConfigPHPForm},
  KeUiConfigs in 'CoreSource\KeForm\KeUiConfigs.pas' {ConfigsForm},
  KeMainSplashDlg in 'CoreSource\KeFreeForm\KeMainSplashDlg.pas' {FrmMainTogle},
  cBoatLayerFrmCtrl in 'CoreSource\FreeCore\cBoatLayerFrmCtrl.pas',
  FreeBoatCoreEvent in 'CoreSource\FreeCore\FreeBoatCoreEvent.pas',
  VRMLUnit in 'CoreSource\FreeCore\VRMLUnit.pas',
  FreeBoatHelp in 'CoreSource\FreeCore\FreeBoatHelp.pas',
  FasterList in 'CoreSource\FreeCore\FasterList.pas',
  FreeShipUnit in 'CoreSource\FreeCore\FreeShipUnit.pas',
  FreeGeometry in 'CoreSource\FreeCore\FreeGeometry.pas',
  FreeGraphic in 'CoreSource\FreeCore\FreeGraphic.pas',
  FreeVec3 in 'CoreSource\FreeCore\FreeVec3.pas',
  FreeMatrix in 'CoreSource\FreeCore\FreeMatrix.pas',
  FreeBoundBox in 'CoreSource\FreeCore\FreeBoundBox.pas',
  FreeTemplateManagerFrm in 'CoreSource\FreeForm\FreeTemplateManagerFrm.pas' {TransTemplateFrm},
  FreeLayerFrm in 'CoreSource\FreeForm\FreeLayerFrm.pas' {BoatLayerFrm},
  FreeMainFrm in 'CoreSource\FreeForm\FreeMainFrm.pas' {BoatFrm},
  FreeHullformWindow in 'CoreSource\FreeForm\FreeHullformWindow.pas' {FreeHullWindow},
  FreeCubeDlg in 'CoreSource\FreeForm\FreeCubeDlg.pas' {FreeCubeDialog},
  FreeGridDlg in 'CoreSource\FreeForm\FreeGridDlg.pas' {FreeGridDialog},
  FreeGridPlaneDlg in 'CoreSource\FreeForm\FreeGridPlaneDlg.pas' {FreeGridPlaneDialog},
  FreeHalfEllipsoidDlg in 'CoreSource\FreeForm\FreeHalfEllipsoidDlg.pas' {FreeHalfEllipsoidDialog},
  FreeCylinderDlg in 'CoreSource\FreeForm\FreeCylinderDlg.pas' {FreeCylinderDialog},
  FreeRotateDlg in 'CoreSource\FreeForm\FreeRotateDlg.pas' {FreeRotateDialog},
  FreeUndoHistoryDlg in 'CoreSource\FreeForm\FreeUndoHistoryDlg.pas' {FreeUndoHistoryDialog},
  FreeNewModelDlg in 'CoreSource\FreeForm\FreeNewModelDlg.pas' {FreeNewModelDialog},
  FreeNewKoreaModelDlg in 'CoreSource\FreeForm\FreeNewKoreaModelDlg.pas' {FreeNewKoreaModelDialog},
  FreeSelectLayersDlg in 'CoreSource\FreeForm\FreeSelectLayersDlg.pas' {FreeSelectLayersDialog},
  FreeControlPointFrm in 'CoreSource\FreeForm\FreeControlPointFrm.pas' {FreeControlPointForm},
  FreeMirrorPlaneDlg in 'CoreSource\FreeForm\FreeMirrorPlaneDlg.pas' {FreeMirrorPlaneDialog},
  FreeProjectSettingsDlg in 'CoreSource\FreeForm\FreeProjectSettingsDlg.pas' {FREEProjectSettingsDialog},
  FreePreferencesDlg in 'CoreSource\FreeForm\FreePreferencesDlg.pas' {FreePreferencesDialog},
  FreeLinesplanFrm in 'CoreSource\FreeForm\FreeLinesplanFrm.pas' {FreeLinesplanForm},
  FreeLinesplanFrme in 'CoreSource\FreeForm\FreeLinesplanFrme.pas' {FreeLinesplanFrame: TFrame},
  FreeInsertPlaneDlg in 'CoreSource\FreeForm\FreeInsertPlaneDlg.pas' {FreeInsertPlaneDialog},
  FreeKeelWizardDlg in 'CoreSource\FreeForm\FreeKeelWizardDlg.pas' {FreeKeelWizardDialog},
  FreeCalcplanFrme in 'CoreSource\FreeForm\FreeCalcplanFrme.pas' {FreeCalcplanFrame: TFrame},
  FreeCalcplanFrm in 'CoreSource\FreeForm\FreeCalcplanFrm.pas' {FreeCalcplanForm},
  FreePlugins in 'CoreSource\FreeCore\FreePlugins.pas',
  FreePluginsTWindow in 'CoreSource\FreeForm\FreePluginsTWindow.pas' {FreePluginsWindow},
  FreePluginsEditorDlg in 'CoreSource\FreeForm\FreePluginsEditorDlg.pas' {PluginsEditorDialog},
  FreeProgressDlg in 'CoreSource\FreeForm\FreeProgressDlg.pas' {FreeProgressDialog},
  KeFreePeerClient in 'CoreSource\FreeServer\KeFreePeerClient.pas',
  KeFindInFilesDlg in 'CoreSource\KeForm\KeFindInFilesDlg.pas' {KeFindInFilesDialog},
  KeDprParser in 'CoreSource\KeCore\KeDprParser.pas',
  KePasParser in 'CoreSource\KeCore\KePasParser.pas',
  KeFindResultDlg in 'CoreSource\KeForm\KeFindResultDlg.pas' {KeFindResultDialog},
  KeFindInFilesThread in 'CoreSource\KeCore\KeFindInFilesThread.pas',
  KeTestDlg in 'CoreSource\KeForm\KeTestDlg.pas' {KeTestDialog},
  KeSendedTextDlg in 'CoreSource\KeForm\KeSendedTextDlg.pas' {KeSendedTextDialog},
  KeProjectModuleDlg in 'CoreSource\KeForm\KeProjectModuleDlg.pas' {KeProjectModuleDialog},
  KeModuleConfigDlg in 'CoreSource\KeForm\KeModuleConfigDlg.pas' {ModuleConfigDialog},
  KeErlangScaner in 'CoreSource\KeCore\KeErlangScaner.pas',
  KeComponents in 'CoreSource\KeCore\KeComponents.pas',
  KeProjectOptDlg in 'CoreSource\KeForm\KeProjectOptDlg.pas' {ProjectOptDlg},
  KeCompilerManagerDlg in 'CoreSource\KeForm\KeCompilerManagerDlg.pas' {CompilerManagerDialog},
  KeErlangCrashViewerDlg in 'CoreSource\KeForm\KeErlangCrashViewerDlg.pas' {ErlangCrashViewerDialog},
  KeSingleRunDlg in 'CoreSource\KeForm\KeSingleRunDlg.pas' {SingleRunDlg},
  KeProjectLinkDlg in 'CoreSource\KeForm\KeProjectLinkDlg.pas' {ProjectLinkDlg},
  KeNewSourceDlg in 'CoreSource\KeForm\KeNewSourceDlg.pas' {KeNewSourceDialog},
  KeNewProjectDlg in 'CoreSource\KeForm\KeNewProjectDlg.pas' {KeNewProjectDialog},
  KeSourceTreeDlg in 'CoreSource\KeForm\KeSourceTreeDlg.pas' {KeSourceTreeDialog},
  KeCompiledRunDlg in 'CoreSource\KeForm\KeCompiledRunDlg.pas' {KeCompiledRunDialog},
  KeCompileDlg in 'CoreSource\KeForm\KeCompileDlg.pas' {KeCompileDialog},
  KeCompileMessagesDlg in 'CoreSource\KeForm\KeCompileMessagesDlg.pas' {CompileMessagesDialog},
  KeditPopupmenu in 'CoreSource\KeCore\KeditPopupmenu.pas',
  KeSourceTreePopupmenu in 'CoreSource\KeCore\KeSourceTreePopupmenu.pas',
  KeProjectTreePopmenu in 'CoreSource\KeCore\KeProjectTreePopmenu.pas',
  KeDirtreePopmenu in 'CoreSource\KeCore\KeDirtreePopmenu.pas',
  KeCompiler in 'CoreSource\KeCore\KeCompiler.pas',
  KeCompilerXml in 'CoreSource\KeCore\KeCompilerXml.pas',
  KeConsoleExe in 'CoreSource\KeCore\KeConsoleExe.pas',
  KeProjectManager in 'CoreSource\KeCore\KeProjectManager.pas',
  KeProjectXml in 'CoreSource\KeCore\KeProjectXml.pas',
  KeProjectFileXml in 'CoreSource\KeCore\KeProjectFileXml.pas',
  KeNewProjectErlangFrame in 'CoreSource\KeForm\Frame\KeNewProjectErlangFrame.pas' {NewProjectErlangFrame: TFrame},
  KeNewProjectTclFrame in 'CoreSource\KeForm\Frame\KeNewProjectTclFrame.pas' {NewProjectTclFrame: TFrame},
  KeNewProjectFPCFrame in 'CoreSource\KeForm\Frame\KeNewProjectFPCFrame.pas' {NewProjectFPCFrame: TFrame},
  KeNewProjectJavaFrame in 'CoreSource\KeForm\Frame\KeNewProjectJavaFrame.pas' {NewProjectJavaFrame: TFrame},
  KeSource in 'CoreSource\KeCore\KeSource.pas',
  KeNewProjectHtmlFrame in 'CoreSource\KeForm\Frame\KeNewProjectHtmlFrame.pas' {NewProjectHtmlFrame: TFrame},
  KeFolderProjectDlg in 'CoreSource\KeForm\KeFolderProjectDlg.pas' {FolderProjectDialog},
  KeProjectDeleteDlg in 'CoreSource\KeForm\KeProjectDeleteDlg.pas' {ProjectDeleteDialog},
  KeBreastButton in 'CoreSource\KeCore\KeBreastButton.pas',
  KeProjectCompileDlg in 'CoreSource\KeForm\KeProjectCompileDlg.pas' {ProjectCompileDialog},
  KeFilesearchThread in 'CoreSource\KeCore\KeFilesearchThread.pas',
  KePluginsDlg in 'CoreSource\KeForm\KePluginsDlg.pas' {PluginsDlg},
  KePluginsManager in 'CoreSource\KeCore\KePluginsManager.pas',
  KeAsciiTableDlg in 'CoreSource\KeForm\KeAsciiTableDlg.pas' {AsciiTableDialog},
  KeSourceformatterDlg in 'CoreSource\KeForm\KeSourceformatterDlg.pas' {SourceformatterDialog},
  KeAutoUpgrader in 'CoreSource\KeUpgrade\KeAutoUpgrader.pas',
  KeAutoUpgraderDlg in 'CoreSource\KeUpgrade\KeAutoUpgraderDlg.pas' {AutoUpgraderDialog},
  KeKeystrokeDlg in 'CoreSource\KeForm\KeKeystrokeDlg.pas' {KeystrokeDialog},
  KeTree in 'CoreSource\KeFreeCommon\KeTree.pas',
  FlowAlignDlg in 'CoreSource\KeFlow\FlowAlignDlg.pas' {AlignDialog},
  FlowDesignProp in 'CoreSource\KeFlow\FlowDesignProp.pas' {DesignerProperties},
  FlowNodeProp in 'CoreSource\KeFlow\FlowNodeProp.pas' {NodeProperties},
  FlowSizeDlg in 'CoreSource\KeFlow\FlowSizeDlg.pas' {SizeDialog},
  FlowMarginsProp in 'CoreSource\KeFlow\FlowMarginsProp.pas' {MarginDialog},
  FlowLinkProp in 'CoreSource\KeFlow\FlowLinkProp.pas' {LinkProperties},
  FlowObjectProp in 'CoreSource\KeFlow\FlowObjectProp.pas' {ObjectProperties},
  CingGutter in 'CoreSource\KeCore\CingGutter.pas',
  CingTextDrawer in 'CoreSource\KeCore\CingTextDrawer.pas',
  CingEdit in 'CoreSource\KeCore\CingEdit.pas',
  KeCompilerlibDlg in 'CoreSource\KeForm\KeCompilerlibDlg.pas' {KeCompilerlibDlg},
  KeDock in 'CoreSource\KeCore\KeDock.pas',
  KeXmlManager in 'CoreSource\KeCore\KeXmlManager.pas';

{$R *.res}

function CheckingParam(): Boolean;
var
  i : integer;
begin
  result := true;
  for i := 1 to ParamCount() do
  begin
    if not FileExists(ParamStr(i)) then
    begin
      result := false;
    end;
  end;
end;

var
  i : Integer;
  stText : String;

begin
  // 현재 Editor 윈도우가 실행되어 있는지 검사.
  // 있으면 기존 윈도우에서 연다.

  if ParamCount() > 0 then
    if not CheckingParam() then exit;

  Application.Initialize;

  Application.CreateForm(TKeditorMainForm, KeditorMainForm);
  Application.CreateForm(TFrmMainTogle, FrmMainTogle);
  Application.CreateForm(TFreePluginsWindow, FreePluginsWindow);
  Application.CreateForm(TSingleRunDlg, SingleRunDlg);
  Application.CreateForm(TProjectLinkDlg, ProjectLinkDlg);
  Application.CreateForm(TKeAndFreeTemplatesDialog, KeAndFreeTemplatesDialog);
  //Application.CreateForm(TNotesForm, NotesForm);
  //Application.CreateForm(TStatementFrm, StatementFrm);
  //Application.CreateForm(TSymbolFrm, SymbolFrm);

  Application.CreateForm(TFreeKeelWizardDialog, FreeKeelWizardDialog);
  Application.CreateForm(TFreeCylinderDialog, FreeCylinderDialog);
  Application.CreateForm(TFreeRotateDialog, FreeRotateDialog);
  Application.CreateForm(TFreeUndoHistoryDialog, FreeUndoHistoryDialog);
  Application.CreateForm(TFreeNewModelDialog, FreeNewModelDialog);
  Application.CreateForm(TFreeNewKoreaModelDialog, FreeNewKoreaModelDialog);
  Application.CreateForm(TFreeSelectLayersDialog, FreeSelectLayersDialog);
  Application.CreateForm(TFreeControlPointForm, FreeControlPointForm);
  Application.CreateForm(TFreeMirrorPlaneDialog, FreeMirrorPlaneDialog);
  Application.CreateForm(TEnvHTMLForm, EnvHTMLForm);
  Application.CreateForm(TEnvPASForm, EnvPASForm);
  Application.CreateForm(TConfigPHPForm, ConfigPHPForm);
  Application.CreateForm(TConfigsForm, ConfigsForm);
  Application.CreateForm(TFREEProjectSettingsDialog, FREEProjectSettingsDialog);
  Application.CreateForm(TFreeInsertPlaneDialog, FreeInsertPlaneDialog);
  Application.CreateForm(TKeCompileDialog, KeCompileDialog);
  Application.CreateForm(TCompileMessagesDialog, CompileMessagesDialog);
  Application.CreateForm(TKeNewProjectDialog, KeNewProjectDialog);
  Application.CreateForm(TKeNewSourceDialog, KeNewSourceDialog);
  Application.CreateForm(TKeTestDialog, KeTestDialog);

  if ParamCount() > 1 then
  begin
    for i := 1 to ParamCount() do
      stText := stText + ParamStr(i) + '|';
    KEditorMainForm.ContextMenuData.getContextMenus(stText)
  end else if ParamCount() = 1 then
    KEditorMainForm.ContextMenuData.getContextMenus(ParamStr(1)); 

  Application.CreateForm(TKeAndFreeTemplatesDialog, KeAndFreeTemplatesDialog);
  Application.CreateForm(TFind, Find);
  Application.CreateForm(TReplace, Replace);
  Application.CreateForm(TAboutForm, AboutForm);

  Application.Run;

end.
