module SportDB

class Opts

  def create=(boolean)
    @create = boolean
  end

  def create?
    return false if @create.nil?   # default create flag is false
    @create == true
  end
  

  def generate=(boolean)
    @generate = boolean
  end

  def generate?
    return false if @generate.nil?   # default generate flag is false
    @generate == true
  end
  
  def event=(value)
    @event = value
  end
  
  def event
    @event   # NB: option has no default; return nil  ## || '.'
  end  
  

  def delete=(boolean)
    @delete = boolean
  end

  def delete?
    return false if @delete.nil?   # default create flag is false
    @delete == true
  end


  # use loader? (that is, built-in seed data)
  def load=(boolean)
    @load = boolean
  end

  def load?
    return false if @load.nil?   # default create flag is false
    @load == true
  end


  def output_path=(value)
    @output_path = value
  end
  
  def output_path
    @output_path || '.'
  end
  

  def data_path=(value)
    @data_path = value
  end

  def data_path
    @data_path || '.'
  end


end # class Opts

end # module SportDB