class LineBreaker
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def format
    paragraphs = text.split("\n\n")

    paragraphs.map do |paragraph|
      format_lines(paragraph)
    end.join("\n\n")
  end

  def format_lines(line)
    if line.length <= 80
      line
    else
      line.gsub(/(.{1,80})(\s+|$)/, "\\1\n")
    end.chomp
  end
end