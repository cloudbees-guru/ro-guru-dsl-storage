import java.io.File

def propertyContent = new File(propsDir, 'ec_Deploy via Ansible Tower.txt').text

property 'ec_Deploy via Ansible Tower', value: '{"revisionId":null,"timestamp":0,"id":"211ae67e-4bb8-11ed-a3a2-863e9e280319"}'
