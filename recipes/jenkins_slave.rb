

include_recipe "chocolatey"
include_recipe "webpi"


%w{
    git.install
    DotNet4.5.1
    ruby
    nodejs
    7zip.commandline
    Firefox
    javaruntime
  }.each do |f|
  chocolatey f do
    action :install
  end
end

webpi_product "FSharpVWD11" do
	accept_eula true
	action :install
end
