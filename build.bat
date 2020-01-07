set "VSBASEDIR=%ProgramFiles(x86)%\Microsoft Visual Studio"
set "MSBENT2019=%VSBASEDIR%\2019\Enterprise\MSBuild\Current\Bin\msbuild.exe"
set "MSBPRO2019=%VSBASEDIR%\2019\Professional\MSBuild\Current\Bin\msbuild.exe"
set "MSBCOM2019=%VSBASEDIR%\2019\Community\MSBuild\Current\Bin\msbuild.exe"
set "MSBENT2017=%VSBASEDIR%\2017\Enterprise\MSBuild\15.0\Bin\msbuild.exe"
set "MSBPRO2017=%VSBASEDIR%\2017\Professional\MSBuild\15.0\Bin\msbuild.exe"
set "MSBCOM2017=%VSBASEDIR%\2017\Community\MSBuild\15.0\Bin\msbuild.exe"

if exist "%MSBENT2019%" (
  SET "MSBUILDEXE=%MSBENT2019%"
) else (
  if exist "%MSBPRO2019%" (
    SET "MSBUILDEXE=%MSBPRO2019%"
  ) else (
    if exist "%MSBCOM2019%" (
      SET "MSBUILDEXE=%MSBCOM2019%"
    ) else (
      if exist "%MSBENT2017%" (
        SET "MSBUILDEXE=%MSBENT2017%"
      ) else (
        if exist "%MSBPRO2017%" (
          SET "MSBUILDEXE=%MSBPRO2017%"
        ) else (
          if exist "%MSBCOM2017%" (
            SET "MSBUILDEXE=%MSBCOM2017%"
          )
        )
      )
    )
  )
)

"%MSBUILDEXE%" /m:8 /p:Configuration=Release "System.Configuration.Abstractions.sln"
