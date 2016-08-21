require "spec_helper"

describe file("C:/kitchen_salt/example/managed_file.txt") do
	it { should be_file }
	it { should contain "This file was installed and managed by Salt solo via test kitchen." }
end