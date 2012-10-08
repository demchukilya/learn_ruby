class XmlDocument
  def initialize structured=false
    @struct=structured
  end

  def opt_interpret opts
    opts ? " " + opts.inject([]){ |memo, obj| memo << "#{obj[0]}='#{obj[1]}'" }.join(" ") : "";
  end

  def val_interpret tag, val, opts
    if val == nil
      "<#{ tag + (opt_interpret opts) }/>"
    elsif @struct
      "<#{ tag + (opt_interpret opts) }>#{ (val.call).split("\n").inject(""){ |memo, str| memo + "\n  "+str } }\n</#{ tag }>\n"
    else
      "<#{ tag + (opt_interpret opts) }>#{ val.call }</#{ tag }>"
    end
  end

  def method_missing name, *args, &block
    val_interpret name.to_s, block, args[0]
  end
end