require 'password_checker'

RSpec.describe 'password' do
    context "returns error if password is not long enough"
        it "fails" do
            password = PasswordChecker.new
            expect { password.check("abcdef") }.to raise_error "Invalid password, must be 8+ characters."
    end
    it "returns true if password is 8+ characters" do
        password = PasswordChecker.new
        expect(password.check("abcdefghi")).to be true
    end
end