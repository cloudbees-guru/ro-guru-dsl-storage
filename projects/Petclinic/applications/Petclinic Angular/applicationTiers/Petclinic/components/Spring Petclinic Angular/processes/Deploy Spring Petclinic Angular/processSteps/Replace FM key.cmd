echo "Environment key is: $[FMenvironmentKey]"

sed -i s/"<putyourkeyhere>"/"$[FMenvironmentKey]"/g /opt/petclinic/spring-petclinic-angular/src/main.ts

cat /opt/petclinic/spring-petclinic-angular/src/main.ts