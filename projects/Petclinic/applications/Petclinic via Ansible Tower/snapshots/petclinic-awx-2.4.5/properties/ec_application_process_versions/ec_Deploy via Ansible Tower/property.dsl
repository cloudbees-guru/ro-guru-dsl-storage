import java.io.File

def propertyContent = new File(propsDir, 'ec_Deploy via Ansible Tower.txt').text

property 'ec_Deploy via Ansible Tower', value: '{"revisionId":565158,"timestamp":1646146153615,"id":"e385daac-997b-11ec-9d61-42010a840017"}'
