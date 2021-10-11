#Blocks can be “explicit” or “implicit”.
#Explicit means that you give it a name in your parameter list.
#You can pass an explicit block to another method or save it into a variable to use later.

def explicit_block(&block)
    block.call # same as yield
end
  
explicit_block { puts "Explicit block called" }

#If you try to yield without a block you will get a no block given (yield) error.
#You can check if a block has been passed in with the block_given? method.

def do_something_with_block
    return "No block given" unless block_given?
    yield
end

do_something_with_block
