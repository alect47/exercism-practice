class ETL

  # def self.transform(old)
  #   hash = {}
  #   old.each {|k, v| v.each {|x| hash[x.downcase] = k}}
  #   hash
  # end

  def self.transform(old)
    old.each_with_object({}) {|(k, v), hash| v.each {|x| hash[x.downcase] = k}}
  end
end
