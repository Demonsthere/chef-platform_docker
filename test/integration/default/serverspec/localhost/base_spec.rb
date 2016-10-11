require_relative '../spec_helper'

# ----------------------------
# base specs
# ----------------------------#
users = %w(vagrant)

describe package('docker-engine') do
  it { should be_installed }
end

describe process('dockerd') do
  it { should be_running }
end

users.each do |usr|
  describe user(usr) do
    it { should belong_to_group 'docker' }
  end
end
