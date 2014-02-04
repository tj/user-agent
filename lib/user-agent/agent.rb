module UserAgent

  class ParsedUserAgent

    attr_reader :string

    def initialize string
      @string = string.strip
    end

    def name
      ParsedUserAgent.name_for_user_agent string
    end

    def version
      ParsedUserAgent.version_for_user_agent string
    end

    def engine
      ParsedUserAgent.engine_for_user_agent string
    end

    def engine_version
      ParsedUserAgent.engine_version_for_user_agent string
    end

    def os
      ParsedUserAgent.os_for_user_agent string
    end

    def platform
      ParsedUserAgent.platform_for_user_agent string
    end

    def to_s
      string
    end

    def inspect
      "#<ParsedUserAgent:#{name} version:#{version.inspect} engine:\"#{engine.to_s}:#{engine_version}\" os:#{os.to_s.inspect}>"
    end

    def == other
      string == other.string
    end

    def self.engine_version_for_user_agent string
      $1 if string =~ /#{engine_for_user_agent(string)}[\/ ]([\d\w\.\-]+)/i
    end

    def self.version_for_user_agent string
      case name = name_for_user_agent(string)
      when :Chrome ; $1 if string =~ /chrome\/([\d\w\.\-]+)/i
      when :Safari ; $1 if string =~ /version\/([\d\w\.\-]+)/i
      when :PS3    ; $1 if string =~ /([\d\w\.\-]+)\)\s*$/i
      when :PSP    ; $1 if string =~ /([\d\w\.\-]+)\)?\s*$/i
      else           $1 if string =~ /#{name}[\/ ]([\d\w\.\-]+)/i
      end
    end

    def self.engine_for_user_agent string
      case string
      when /webkit/i    ; :webkit
      when /khtml/i     ; :khtml
      when /konqueror/i ; :konqueror
      when /chrome/i    ; :chrome
      when /presto/i    ; :presto
      when /gecko/i     ; :gecko
      when /msie/i      ; :msie
      else                :Unknown
      end
    end

    def self.os_for_user_agent string
      case string
      when /windows nt 6\.0/i             ; :'Windows Vista'
      when /windows nt 6\.\d+/i           ; :'Windows 7'
      when /windows nt 5\.2/i             ; :'Windows 2003'
      when /windows nt 5\.1/i             ; :'Windows XP'
      when /windows nt 5\.0/i             ; :'Windows 2000'
      when /os x (\d+)[._](\d+)/i         ; :"OS X #{$1}.#{$2}"
      when /linux/i                       ; :Linux
      when /wii/i                         ; :Wii
      when /playstation 3/i               ; :Playstation
      when /playstation portable/i        ; :Playstation
      when /\(ipad.*os (\d+)[._](\d+)/i   ; :"iPad OS #{$1}.#{$2}"
      when /\(iphone.*os (\d+)[._](\d+)/i ; :"iPhone OS #{$1}.#{$2}"
      else                                ; :Unknown
      end
    end

    def self.platform_for_user_agent string
      case string
      when /windows/i     ; :Windows
      when /macintosh/i   ; :Macintosh
      when /linux/i       ; :Linux
      when /wii/i         ; :Wii
      when /playstation/i ; :Playstation
      when /ipad/i        ; :iPad
      when /iphone/i      ; :iPhone
      else                  :Unknown
      end
    end

    def self.name_for_user_agent string
      case string
      when /konqueror/i            ; :Konqueror
      when /chrome/i               ; :Chrome
      when /safari/i               ; :Safari
      when /msie/i                 ; :IE
      when /opera/i                ; :Opera
      when /playstation 3/i        ; :PS3
      when /playstation portable/i ; :PSP
      when /firefox/i              ; :Firefox
      else                         ; :Unknown
      end
    end

    @agents = []

    def self.map name, options = {}
      @agents << [name, options]
    end

  end
end
