require "line_breaker"

describe LineBreaker do
  it "does nothing on a line with < 80 characters" do
    line = "a"*80

    formatted_line = LineBreaker.new(line).format

    expect(formatted_line).to eq(line)
  end

  it "breaks a single line over 80 characters into two" do
    line = "a"*80 + " a"

    formatted_line = LineBreaker.new(line).format

    expect(formatted_line).to eq("a"*80 + "\na")
  end

  it "works with paragraphs" do
    paragraphs = <<-LINES.chomp
Jean shorts you probably haven't heard of them farm-to-table, ennui hella American Apparel 8-bit ugh skateboard.

Truffaut Williamsburg Intelligentsia tofu vegan. Scenester Intelligentsia deep v, messenger bag umami Tonx biodiesel PBR Brooklyn
    LINES

    formatted_line = LineBreaker.new(paragraphs).format

    expect(formatted_line).to eq(<<-LINES.chomp)
Jean shorts you probably haven't heard of them farm-to-table, ennui hella
American Apparel 8-bit ugh skateboard.

Truffaut Williamsburg Intelligentsia tofu vegan. Scenester Intelligentsia deep
v, messenger bag umami Tonx biodiesel PBR Brooklyn
    LINES
  end
end