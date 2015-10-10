Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision :shell,
    :inline => "sudo apt-get update && sudo apt-get -y install build-essential git ruby1.9.3 nodejs && sudo gem install jekyll jekyll-redirect-from rdiscount --no-ri --no-rdoc"
  config.vm.network "forwarded_port", guest: 4000, host: 8808,
     auto_correct: true
end
