@echo off

@Set location=
If not exist "input-cache\org.hl7.fhir.publisher.jar" (
   If not exist "..\org.hl7.fhir.publisher.jar" (
      @ECHO IG Publisher is not in input-cache or parent folder...
      goto:download2cache
   ) else (
	@ECHO IG Publisher FOUND in parent folder
        @Set location=parent
	@goto:upgrade
)
) else (
   @ECHO IG Publisher FOUND in input-cache
   @Set location=cache
   @goto:upgrade
)

PAUSE

goto:eof

:download2cache
  @MKDIR input-cache
rem   @ECHO IG Publisher is not in input-cache or parent folder...
  @ECHO Downloading most recent publisher to input-cache- it's ~100 MB, so this may take a bit
  @POWERSHELL -command (new-object System.Net.WebClient).DownloadFile(\"https://fhir.github.io/latest-ig-publisher/org.hl7.fhir.publisher.jar\",\"input-cache\org.hl7.fhir.publisher.jar\")
goto:eof

:upgrade
Echo starting upgrade
set /p overwrite="Overwrite? "
if /I "%overwrite%"=="Y" (
  echo yes, upgrade
  echo %location%
if /I "%location%"=="cache" (
      echo upgrade on the cache
  	  goto:download2cache
    ) else (
	  echo upgrade parent
	goto:download2parent
	)	
  )	

goto:eof

:download2parent
  @ECHO Downloading most recent publisher to input-cache- it's ~100 MB, so this may take a bit
  @POWERSHELL -command (new-object System.Net.WebClient).DownloadFile(\"https://fhir.github.io/latest-ig-publisher/org.hl7.fhir.publisher.jar\",\"..\org.hl7.fhir.publisher.jar\")

:eof
