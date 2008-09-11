class MinimalDsl

  def set(key, value)
    @@attributes[key] = value
  end

  def self.load(filename)
    @@attributes = {}
    dsl = new
    dsl.instance_eval(File.read(filename), filename)
    validate dsl
    dsl
  end
  
  def self.validate(dsl)
    raise "Application Name required" if dsl.appname.nil?  
  end

  def method_missing(sym, *args)
    @@attributes[sym]
  end

end
