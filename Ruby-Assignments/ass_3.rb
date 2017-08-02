#!/usr/bin/ruby


family_tree = Hash.new
family_tree = {
	'parent1' => 'child1',
	'parent2' => ['child1', 'child2' => ['grandchild2']],
	'parent3' => ['child1']
}

space = String.new('')						#storing space in variable
flag = false							#checking flag for spaces

def accessTree(family_tree)					#iterating over tree
  family_tree.each do |parent,child|
    puts "#{$space}#{parent}"
    
    $space = "#{$space}\t"
    if child.is_a?(Array)					#checking for array
      child.each do |element|
        if element.is_a?(Hash)					#checking for inner hash in array	
            $flag = true
            accessTree(element)					#recursion
        else
          puts "#{$space}#{element}"				#for single child
        end  
      end
    elsif child.is_a?(Hash)					#checking for hash as a child
        $flag = true
        accessTree(child)					#recursion
    else
      $flag = false
      puts "#{$space}#{child}"
    end
      if  $flag == false					#setting spaces according to hierarchy
        $space = ""
      else  
        $flag = false
      end
   end
end

accessTree(family_tree)

