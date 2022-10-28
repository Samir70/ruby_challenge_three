require 'date'
class PasswordManager2
  def initialize
    @manager = []
    @used_passwords = []
    @used_services = []
  end

  def add(service, password)
    # Takes two strings, the service and its password, as arguments
    # Stores the new service and its password
    # Unless the new password is already in use elsewhere
    # Or the service already has a stored password
    if @used_passwords.include?(password)
      return "ERROR: Passwords must be unique"
    elsif @used_services.include?(service)
      return "ERROR: Service names must be unique"
    else
      @manager << { "service" => service, "password" => password, "added_on" => Date.today }
      @used_passwords << password
      @used_services << service
    end
  end

  def remove(service)
    # Takes one string, the name of a service, as an argument
    # Deletes that service and its password
    @manager.filter! { |el| el["service"] != service }
    @used_services.filter! { |el| el != service }
  end

  def services
    # Takes no arguments
    # Returns a list of all the services for which a password has been stored
    # Does not return all the passwords
    return @manager.map { |el| el["service"] }
  end

  def sort_by(attribute)
    # Takes one string, either "service" or "added_on", as an argument
    # Returns the list of services sorted by "service" or "added_on"
    @manager.sort_by! { |el| el[attribute]}
    return services
  end

  def password_for(service)
    # Takes one string, the service, as an argument
    # Returns the password for that service
    index = @manager.index { |el| el["service"] == service }
    return @manager[index]["password"]
  end

  def update(service, new_pass)
    # Takes two strings, a service name and new password, as arguments
    # Updates the password of the service, with the new password
    # Unless the new password is already in use elsewhere
    if @used_passwords.include?(new_pass)
      return "ERROR: Passwords must be unique"
    else
      remove(service)
      add(service, new_pass)
    end
  end
end
