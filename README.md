# ImageMagick

1. Clone https://github.com/ImageMagick/ImageMagick-Windows
2. Run "CloneRepositories.cmd"
3. Build release of "VisualMagick\configure\configure.sln"
4. Run "VisualMagick\configure\configure.exe"
5. Build release of created sln in "VisualMagick" folder
6. **Update code to fix work of external crash handler**
  - ImageMagick\MagickCore\nt-base.c (comment SetUnhandledExceptionFilter)
  - Make sure that establish_signal_handlers always false
7. Use CollectImageMagickRelease.sh to collect release files
8. Zip ImageMagick folder in Release folder
