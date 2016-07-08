class jira::config{
  
  exec{ 'install':
      command     =>  "/usr/bin/sh /root/$::version.bin",
      require     => jira::download,
      path        => "/usr/bin/"
    
  }
}