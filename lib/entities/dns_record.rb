module Intrigue
module Entity
class DnsRecord < Intrigue::Model::Entity

  def self.metadata
    {
      :name => "DnsRecord",
      :description => "TODO"
    }
  end

  def validate_entity
    return (name =~ _dns_regex)
  end

  def primary
    false
  end

  def detail_string
    "OS: #{details["os"].to_a.first}"
  end

end
end
end
