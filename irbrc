require 'irb/completion'
require 'irb/ext/save-history'

ARGV.concat [ "--readline" ]

# number of entries in the list
IRB.conf[:SAVE_HISTORY] = 500

# Store results in home directory with specified file name
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"

IRB.conf[:PROMPT_MODE] = :SIMPLE
