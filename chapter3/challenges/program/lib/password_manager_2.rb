class PasswordManager2
  def initialize
  end

  def add(service, password)
    # Takes two strings, the service and its password, as arguments
    # Stores the new service and its password
    # Unless the new password is already in use elsewhere
    # Or the service already has a stored password
  end

  def remove(service)
    # Takes one string, the name of a service, as an argument
    # Deletes that service and its password
  end

  def services
    # Takes no arguments
    # Returns a list of all the services for which a password has been stored
    # Does not return all the passwords
  end

  def sort_by(attribute)
    # Takes one string, either "service" or "added_on", as an argument
    # Returns the list of services sorted by "service" or "added_on"
  end

  def password_for(service)
    # Takes one string, the service, as an argument
    # Returns the password for that service
  end

  def update(service, new_pass)
    # Takes two strings, a service name and new password, as arguments
    # Updates the password of the service, with the new password
    # Unless the new password is already in use elsewhere
  end
end
