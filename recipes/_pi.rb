# us keyboard
replace_or_add "us keyboard" do
  path "/etc/default/keyboard"
  pattern "XKBLAYOUT"
  line 'XKBLAYOUT="US"'
end
