# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_reader :email_string
    attr_accessor :email_array
    def initialize(email_string)
        @email_string = email_string
    end 

    def parse 
        self.email_array = self.email_string.split(/[,\s]+/)
        self.email_array.uniq
    end
   
end