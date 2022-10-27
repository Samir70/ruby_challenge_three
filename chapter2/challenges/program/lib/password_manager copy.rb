# validity checker from chapter 1
def valid?(password)
    return password.length > 7 && password.count('!@$%&') > 0
end

class PasswordManager
    def initialize
        # The passwords will be stored in hash
        # The keys are services
        # The values are the passwords 
        # This hash will need to be stored in an instance variable
    end
    def add(service, password)
        # Takes two strings, the service and its password, as arguments
        # Stores the new service and its password (if password is valid)
    end
    
    def password_for(service)
        # Takes one string, the service, as an argument
        # Returns the password for that service
    end
    
    def services
        # Takes no arguments
        # Returns a list of all the services for which a password has been stored
        # Does not return all the passwords
    end
end
