# This is Battle Simulator for Unicorogue.
# For only 1 on 1 battle and no fields.

require 'pry'

# business logic
module BSim 
   def self.hello(name)
     "Hello #{name}!"
   end

   # TODO write domain logic
 end

 # helloというコマンドを定義する
 Pry.commands.block_command 'hello' do |*args|
   args.map{|name| output.puts Sample.hello(name)}
 end

 # pry標準のhelpはあえて潰してよけいなものを見せない
 Pry.commands.block_command 'help' do
   output.puts "hello [name...] : say hello"
 end

 # プロンプトをいじると専用アプリっぽさが増す
 Pry.prompt = [
   proc{"bs> "},
     proc{"bs* "},
   ]

 puts "help でヘルプ。exit で終了。\n\n"
pry

