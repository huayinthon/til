Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision :shell,
    :inline => "screen -dmS screen_name bash -c 'cd /vagrant;jekyll serve --host 0.0.0.0'"
  config.vm.network "forwarded_port", guest: 4000, host: 8808,
     auto_correct: true
end
