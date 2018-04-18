provides :powershell_custom

property :name, String, name_property: true
property :code, String

action :execute do
  converge_by("executing PowerShell script: #{new_resource.name}") do
    execution = powershell_exec(new_resource.code)
    puts "\n#{execution.errors}" if execution.error?
    puts execution.result
  end
end
