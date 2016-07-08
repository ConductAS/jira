class jira::download(
  $path     = "https://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-software-7.1.9-x64.bin",
  $version  = "atlassian-jira-software-7.1.9-x64",
  
)
{
  exec { "download_jira":
    command =>  "wget ${path}",
    path    =>  "/usr/bin/",
    creates =>  "/root/${version}.bin",
    }
   file {"/root/${version}.bin":
    owner   =>  root,
    group   =>  root,
    mode    =>  '0755',
    }
}
