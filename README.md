useradd Cookbook
================
 This cookbook recipe is for adding many users for developers or other groups
 Maybe useful for sysadmins


Requirements
------------

 This is very simple recipe by using bash provider, DSL template and cookbook_file.
 So, just need to install Chef server and workstation.
 1. I used ubuntu server 12.04
 2. Need to install ruby. Mostly ubuntu 1204 server comes with ruby installation.

Attributes
----------
 There is no special attributes yet


Usage
-----

1. add the your public key into as files/default/authorized_keys
2. In chef client just do below command.
chef-client -o useradd

You could do above like "ssh -t -i keyfile sudouser@hostname_or_ip 'sudo sudouser chef-client -o useradd'" from your central or knife server. 


Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Author : ohyoungjooung@gmail.com
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
