@echo off
curl https://cfacc.pages.dev/products/Universal-Control/downloads | find "exe" > tmp
for /f tokens^=2^ delims^=^" %%a in (tmp) do (
	if defined stop (
		del tmp
		goto go
	) else set "url=https:%%a"&set stop=1
)
:go
for /f "tokens=6 delims=/" %%a in ("%url%") do set "latest=%%a"
curl -# -O https://cfacc.pages.dev/downloads/products/exe/%latest%
%latest%
del %latest%