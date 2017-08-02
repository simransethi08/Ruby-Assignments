#!/usr/bin/ruby


def hash_sorting
 hash={ abc: 'hello', 'another_key' => 123, 4567 => 'third' }
 puts hash.keys.collect{|i| i.to_s}.sort_by{|key| key.length}

end

hash_sorting

