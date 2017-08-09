# docked-vagrant
Vagrant server with docked Mysql, docked mongoDB, docked NodeJS, and docked web portal.


<h3>Specifications</h3>

<ul>
    <li>Box: debian/jessie64</li>
    <li>
        Docker images:<br />
        <ul>
            <li>Mysql</li>
            <li>mongo</li>
            <li>node</li>
            <li>nginx</li>
        </ul>
    </li>
</ul>

<h3>Installation</h3>

<ol>
    <li><a href="https://www.virtualbox.org/wiki/Downloads" >Install Virtual Box VM</a></li>
    <li><a href="https://www.vagrantup.com/downloads.html">Install Vagrant</a></li>
    <li>
        Install NFS (for mounting with synced_folders) on your machine<br />
        Since I'm using ubuntu 16.04 GNOME<br />
        I've installed it with this: <br/>
        <a href="https://www.digitalocean.com/community/tutorials/how-to-set-up-an-nfs-mount-on-ubuntu-16-04">https://www.digitalocean.com/community/tutorials/how-to-set-up-an-nfs-mount-on-ubuntu-16-04</a>
    </li>
</ol>



<h4>Default Local URLs</h4>

<ul>
    <li>
        <a href="johtostic21.com">johtostic21.com</a> - the url of the main site
    </li>
    <li>
        <a href="portal.johtostic21.com">portal.johtostic21.com</a> - the url of the portal to edit the main site's content
    </li>
    <li>
        <a href="njs.johtostic21.com">njs.johtostic21.com</a> - the url of the nodejs REST API backend used by the portal and main site
    </li>
</ul>
