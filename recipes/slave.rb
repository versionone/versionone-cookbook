

include_recipe "chocolatey"
include_recipe "webpi"

chocolatey "git.install"
chocolatey "ruby1.9"
chocolatey "ruby.devkit.ruby193"
chocolatey "nodejs.install"
chocolatey "7zip.commandline"
chocolatey "Firefox"
chocolatey "javaruntime"

webpi_product "FSharpVWD11" do
	accept_eula true
	action :install
end

BUILDTOOLS_EXE = "#{Chef::Config[:file_cache_path]}/microsoft_build_tools_2013__BuildTools_Full.exe" 

remote_file BUILDTOOLS_EXE do
  source "http://download.microsoft.com/download/9/B/B/9BB1309E-1A8F-4A47-A6C5-ECF76672A3B3/BuildTools_Full.exe"
end

execute "install MS Build tools 2013" do
  command "#{BUILDTOOLS_EXE} /q"
  only_if { File.exists? BUILDTOOLS_EXE }
end









