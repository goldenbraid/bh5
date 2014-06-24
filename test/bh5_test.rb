require_relative "test_helper"

test "with correct credentials" do
	client = Bh5::Client.new ENV["BH5_USERNAME"], ENV["BH5_PASSWORD"]
	assert client.authenticated?
	
	# Fetching existing resources
	assert client.fetch(:user, :id => 3670).is_a? Hash

	# Fetching non-existing resources
	assert_raise(Bh5::APIError) { client.fetch(:bogus, :id => 3670) }
end

test "with incorrect credentials" do
	assert_raise(Bh5::AuthError) { Bh5::Client.new "", "" }

	client = Bh5::Client.new
	assert (not client.authenticated?)

	# Fetching existing resources
	assert_raise(Bh5::AuthError) { client.fetch(:user, :id => 3670) }

	# Fetching non-existing resources
	assert_raise(Bh5::AuthError) { client.fetch(:bogus, :id => 3670) }
end
