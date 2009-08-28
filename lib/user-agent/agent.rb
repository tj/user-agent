
class Agent
  
  ##
  # User agent string.
  
  attr_reader :string
  
  ##
  # Initialize with user agent _string_.
  
  def initialize string
    @string = string
  end
  
  #--
  # Instance methods
  #++
  
  ##
  # User agent name symbol.
  
  def name
    Agent.name_for_user_agent string
  end
  
  ##
  # User agent version.
  
  def version
    Agent.version_for_user_agent string
  end
  
  ##
  # User agent engine symbol.
  
  def engine
    Agent.engine_for_user_agent string
  end
  
  ##
  # User agent engine version string.
  
  def engine_version
    Agent.engine_version_for_user_agent string
  end
  
  ##
  # User agent os symbol.
  
  def os
    Agent.os_for_user_agent string
  end
  
  ##
  # User agent string.
  
  def to_s
    string
  end
  
  ##
  # Inspect.
  
  def inspect
    "#<Agent:#{name} version:#{version.inspect} engine:\"#{engine.to_s}:#{engine_version}\" os:#{os.to_s.inspect}>"
  end
  
  ##
  # Check if the agent is the same as _other_ agent.
  
  def == other
    self.string == other.string
  end
  
  #--
  # Class methods
  #++
  
  ##
  # Return engine version for user agent _string_.
  
  def self.engine_version_for_user_agent string
    $1 if string =~ /#{engine_for_user_agent(string)}[\/ ]([\d\w\.]+)/i
  end
  
  ##
  # Return version for user agent _string_.
  
  def self.version_for_user_agent string
    case string
    when /safari/i ; $1 if string =~ /version\/([\d\w\.]+)/i
    when /msie/i   ; $1 if string =~ /msie\s*([\d\w\.]+)/i
    when /opera/i  ; $1 if string =~ /opera[\/ ]([\d\w\.]+)/i
    end
  end
  
  ##
  # Return engine symbol for user agent _string_.
  
  def self.engine_for_user_agent string
    case string
    when /chrome/i    ; :chrome
    when /konqueror/i ; :konqueror
    when /webkit/i    ; :webkit
    when /presto/i    ; :presto
    when /gecko/i     ; :gecko
    when /msie/i      ; :msie
    else                :unknown
    end
  end
  
  ##
  # Return the os for user agent _string_.
  
  def self.os_for_user_agent string
    case string
    when /windows nt 6\.0/i     ; :'Windows Vista'
    when /windows nt 6\.\d+/i   ; :'Windows 7'
    when /windows nt 5\.2/i     ; :'Windows 2003'
    when /windows nt 5\.1/i     ; :'Windows XP'
    when /windows nt 5\.0/i     ; :'Windows 2000'
    when /os x (\d+)[._](\d+)/i ; :"OS X #{$1}.#{$2}"
    when /linux/i               ; :Linux
    when /wii/i                 ; :Wii
    else                        ; :Unknown
    end
  end
  
  ##
  # Return name for user agent _string_.
  
  def self.name_for_user_agent string
    case string
    when /chrome/i ; :Chrome
    when /safari/i ; :Safari
    when /msie/i   ; :IE
    when /opera/i  ; :Opera
    else           ; :Unknown
    end
  end
  
  @agents = []
  
  ##
  # Map agent _name_ to _options_.
  
  def self.map name, options = {}
    @agents << [name, options]
  end

end
