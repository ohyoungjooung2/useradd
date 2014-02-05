useradd Cookbook
================
 This cookbook recipe is for adding many users for developers or other groups
 Maybe useful for sysadmins. Not sufficient. 


Requirements
------------

 This is very simple recipe by using bash provider, DSL template and cookbook_file.
 So, just need to install Chef server and workstation.
 1. I used ubuntu server 12.04
 2. Need to install ruby. Mostly ubuntu 1204 server comes with ruby installation.

Attributes
----------
 There is not special attributes yet

e.g.
#### useradd::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['useradd']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### useradd::default
In chef client just do below command.
chef-client -o useradd

You could do above like "ssh -t -i keyfile sudouser@hostname_or_ip 'sudo sudouser chef-client -o useradd'"


Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
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
