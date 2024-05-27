class DoneStatus
	def to_s = "done"
	def done? = true
	def chatty_string = "I'm done"
end

class StartedStatus
	def to_s = "start"
	def chatty_string = "I'm start"
end

class DefinedStatus
	def to_s = "defined"
	def chatty_string = "I'm not even started"
end


class Status 
  def self.for(status)
    case status
      when "done" then DoneStatus.new
      when "start" then StartedStatus.new
      when "defined" then DefinedStatus.new
    end
  end

  def done? = false

  def chatty_string = raise NotImplementedError
end

status = Status.for("done")
puts status

status = Status.for("defined")
status_chatty = status.chatty_string
puts status_chatty