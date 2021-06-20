- hosts: testhosts
  user: opc
  become: True
  tasks:
    - name: Install The latest yum updates 
      yum:
        skip_broken: yes
        name: "*"
        state: latest
