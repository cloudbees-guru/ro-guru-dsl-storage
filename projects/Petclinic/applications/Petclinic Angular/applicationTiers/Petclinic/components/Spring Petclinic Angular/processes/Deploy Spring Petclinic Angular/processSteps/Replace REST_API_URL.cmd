
sed -i "s/REST_API_URL: .*/REST_API_URL: 'http:\/\/$[/myResource/REST_API_URL]:8557\/petclinic\/api\/'/g" /opt/petclinic/spring-petclinic-angular/src/environments/environment.ts