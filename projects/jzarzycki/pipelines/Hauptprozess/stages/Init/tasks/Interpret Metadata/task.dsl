import java.io.File


task 'Interpret Metadata', {
  description = '''Ausführen eines Scripts, das die Metadaten interpretiert und die Werte
inputRequired (boolean), responsibleUsers (Liste von Usern) und operator
(Liste aus den Werten &quot;grz&quot;, &quot;r-it&quot; und &quot;rics&quot;) daraus extrahiert.'''
  actualParameter = [
    'commandToRun': new File(projectDir, "./pipelines/Hauptprozess/stages/Init/tasks/Interpret Metadata.groovy").text,
    'shellToUse': 'ec-groovy',
  ]
  projectName = 'jzarzycki'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
