name "esearch-nodes"
run_list(
  "recipe[dns]", 
  "recipe[iptables]",
  "recipe[java::default]", 
  "recipe[elasticsearch]", 
  "recipe[elasticsearch::plugins]"
)

override_attributes(
    :java => {
      :install_flavor => :openjdk,
      :jdk_version => "7"
    },
    :elasticsearch => {
      :version => "1.0.1",
      :skip_restart => true,
      :cluster_name => "elasticsearch_with_chef",
      :discovery_zen_ping_multicast_enabled => false,
      :discovery_zen_ping_unicast_hosts => ["192.168.33.20","192.168.33.30","192.168.33.40"]
    }
)