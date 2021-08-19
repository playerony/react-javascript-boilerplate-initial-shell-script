appNameTarget="<app-name>"
appAuthorTarget="<app-author>"
appShortcutTarget="<app-shortcut>"
appRepositoryTarget="<app-repository>"
appDescriptionTarget="<app-description>"

defaultProjectName="React Javascript Boilerplate"
defaultProjectShortcut="react-javascript-boilerplate"
defaultProjectDescription="Minimal javascript boilerplate for React apps."
defaultProjectAuthor="Paweł Wojtasiński <pawel.wojtasinski.1995@gmail.com>"
defaultProjectRepository="git@github.com:playerony/react-javascript-boilerplate.git"

read -p "Enter project name (default: '$defaultProjectName'): " userInputProjectName
read -p "Enter project shortcut (default: '$defaultProjectShortcut'): " userInputProjectShortcut
read -p "Enter project description (default: '$defaultProjectDescription'): " userInputProjectDescription
read -p "Enter project author (default: '$defaultProjectAuthor'): " userInputProjectAuthor
read -p "Enter project repository (default: '$defaultProjectRepository'): " userInputProjectRepository

verifyUserInput() {
  local userInputValue="$1"
  local defaultValue="$2"

  if [[ $userInputValue != "" ]];
  then
    retval=$userInputValue
  else
    retval=$defaultValue
  fi
} 

verifyUserInput "$userInputProjectName" "$defaultProjectName"
projectName=$retval

verifyUserInput "$userInputProjectShortcut" "$defaultProjectShortcut"
projectShortcut=$retval

verifyUserInput "$userInputProjectDescription" "$defaultProjectDescription"
projectDescription=$retval

verifyUserInput "$userInputProjectAuthor" "$defaultProjectAuthor"
projectAuthor=$retval

verifyUserInput "$userInputProjectRepository" "$defaultProjectRepository"
projectRepository=$retval

echo "Project name: $projectName"
echo "Project shortcut: $projectShortcut"
echo "Project description: $projectDescription"
echo "Project author: $projectAuthor"
echo "Project repository: $projectRepository"
