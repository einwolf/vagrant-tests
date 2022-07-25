Vagrant.configure("2") do |config|
  # This is an evaluation statement
  # .box is an string attribute
  config.vm.box = "debian/stretch64"

  # This is a method call
  # .synced_folder is a method that takes two positional arguments ('synced_folder', '/vagrant'), 
  # followed by some keyword arguments (disabled: true)
  config.vm.synced_folder 'synced_folder', '/vagrant', disabled: true

  # This is a method call, followed by a "do ... end" block
  # .provider is a method that takes one positional argument (:libvirt)
  config.vm.provider :libvirt do |node|
    # These are two evaluation statements
    node.cpus = 4
    node.memory = 4096
  end
end
