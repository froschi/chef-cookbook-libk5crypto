packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libk5crypto3
  /
when "precise"
  packages |= %w/
    libk5crypto3
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
