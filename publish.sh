rm -rf "./publish-output" & dotnet restore "./src/TeamCityTheatre.sln" && dotnet clean "./src/TeamCityTheatre.sln" --configuration Release --verbosity normal && cd "./src/TeamCityTheatre.Web" && npm install && npm run build:release && cd .. && cd .. && dotnet publish "./src/TeamCityTheatre.Web/TeamCityTheatre.Web.csproj" --configuration Release --verbosity normal --output "./../../publish-output"