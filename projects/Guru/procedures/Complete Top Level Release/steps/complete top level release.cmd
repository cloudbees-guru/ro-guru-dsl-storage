
IFS=$'\n'

# Iterate over list of Subreleases
for subRelease in $(ectool getSubreleases "SubRelease Template" "$[/myJob/releaseName]" | grep "<releaseName>"   | cut -d ">" -f 2 | cut -d "<" -f 1 |sort -r)
do
    ectool completeRelease --projectName "$[/myJob/projectName]" --releaseName "${subRelease}"
done

sleep 5 && ectool completeRelease --projectName "$[/myJob/projectName]" --releaseName "$[/myJob/ReleaseName]" &

