Facter.add(:rbenv_ruby) do
  setcode do
   `/usr/bin/which ruby`.chomp
  end
end

Facter.add(:rbenv_ruby_home) do
  setcode do
  File.dirname(`/usr/bin/which ruby`).chomp!('bin')
  end
end
