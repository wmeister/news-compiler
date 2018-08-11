require "./main.rb"
require "test/unit"

class Tests < Test::Unit::TestCase
  def setup
    @n = "./data/test.txt"
    @n.freeze!    
    Dir.mkdir("./data") unless File.directory? "./data"
    @f = File.open(@n, "w"){|f|f.write "hello\nworld\n"}
  end
  
  def teardown    
    File.delete(@n)
  end
  
  def test_slurp
    puts file.inspect
    assert_equal(["foo\n"], file.slurp("./test.txt"))
  end
  
  def test_slurp2
    assert_equal("foo\n", file.slurp2("./test.txt"))
  end
  
  def test_date
    d = file.dates(@n)
    assrt_not_nil d
    assert_equal d.created, @f.ctime
    assert_equal d.updated, @f.utime
  end
end