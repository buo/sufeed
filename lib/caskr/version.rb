class Version
  include Comparable
  attr :major, :minor, :tiny, :build

  def initialize(s)
    @str = s
    parse(s)
  end

  def parse(s)
    a = s.split(/[\.\-_]/)
    @major = a[0].to_i if a.length > 0
    @minor = a[1].to_i if a.length > 1
    @tiny = a[2].to_i if a.length > 2
    @build = a[3] if a.length > 3

    @major = 0 unless @major
    @minor = 0 unless @minor
    @tiny = 0 unless @tiny
    @build = 0 unless @build
  end

  def <=>(other)
    return major <=> other.major if major != other.major
    return minor <=> other.minor if minor != other.minor
    tiny <=> other.tiny
  end

  def to_s
    return @str
  end
end
