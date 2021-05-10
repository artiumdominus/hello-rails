task :remove_rom_connection => [:environment] do
  ROM.env && ROM.env.disconnect
end

Rake::Task["db:drop"].clear_prerequisites()
Rake::Task["db:drop"].enchance [:remove_rom_connection, :load_config, :check_protected_environments]

Rake::Task["db:reset"].clear_prerequisites()
Rake::Task["db:reset"].enchance [:remove_rom_connection, "db:drop", "db:setup"]