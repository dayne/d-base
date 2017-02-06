task default: :accept

desc 'Run all acceptance tests'
task accept: [:lint, :unit]

desc 'Run linting tools -- foodcritic and rubocop'
task :lint do
  abort('You must bump the cookbook version') unless bumped_metadata?
  sh 'chef exec foodcritic -X spec .'
  sh 'chef exec cookstyle'
end

desc 'Run unit tests with ChefSpec'
task :unit do
  sh 'chef exec rspec --color -fd'
end

desc 'Run functional tests with Serverspec'
task :functional do
  sh 'chef exec kitchen test -c'
end

# rubocop:disable all
namespace :kitchen do
  desc 'Create default aws kitchen yaml'
  task :aws do
    require 'yaml'
    yml = {
      "driver" =>  {
        "name" => "ec2",
        "region" => "us-west-2",
        "shared_credentials_profile" => "default",
        "aws_ssh_key_id" => "id_rsa-aws-kitchen",
        "security_group_ids" => ['test-kitchen'],
        "destroy" => "always"
      },
      "platform" => {
        "name" => ['centos-6']
      },
      "transport" => {
        "ssh_key" => "<%=ENV['HOME']%>/.ssh/id_rsa-aws"
      }
    }

    File.open('.kitchen.aws.yml', 'w') do |f|
      f << yml.to_yaml
    end
  end
end
# rubocop:enable all

# Based on delivery-truck
def bumped_metadata?
  require 'chef'
  files_to_check = %w(
    metadata\.(rb|json)
    Berksfile
    Berksfile\.lock
    Policyfile\.rb
    Policyfile\.lock\.json
    recipes\/.*
    attributes\/.*
    libraries\/.*
    files\/.*
    templates\/.*
  ).join('|')

  if changed_files.any? { |f| /^(#{files_to_check})/ =~ f }
    metadata = Chef::Cookbook::Metadata.new
    metadata.from_file('metadata.rb')
    base_metadata = Chef::Cookbook::Metadata.new
    base_metadata.from_file(base_metadata_file)
    FileUtils.safe_unlink(base_metadata_file)
    base_metadata.nil? ||
      metadata.version > base_metadata.version
  else
    true
  end
end

def changed_files
  shell_out!('git diff --name-only origin/master').stdout.chomp.split('\n')
end

def base_metadata_file
  File.open('base_metadata.rb', 'w') do |f|
    f << shell_out!('git show origin/master:metadata.rb').stdout.chomp
  end unless File.exist?('base_metadata.rb')
  'base_metadata.rb'
end

def shell_out!(command)
  require 'mixlib/shellout'
  cmd = Mixlib::ShellOut.new(command)
  cmd.run_command
end
