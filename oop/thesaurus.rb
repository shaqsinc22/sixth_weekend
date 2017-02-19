# Create a thesaurus program. To create it, you will create two classes, Thesaurus and Entry.
# A Thesaurus will contain many Entries. An Entry contains three primary attributes:
# word, synonymns, and antonyms. Your application should contain the following features:
# 1. The ability to add new words to a Thesaurus.
# 2. The ability to delete a word from a Thesaurus. 
# 3. The ability to look up a word's synonyms.
# 4. The ability to look up a word's antonyms.
# 5. The ability to add a synonym to a word.
# 6. The ability to add an antonym to a word.
#
# Part of the challenge is to determine which functionality belongs in the Thesaurus class,
# and which belongs in the Entry class.


class Thesaurus
  def initialize(entry)
    @entries = []
    @entry = entry
    @entries << @entry
  end


  def save_entry(entry)
    @entries << entry
  end

  def add_word
    puts "Please type a word you would like to add!"
    word = gets.chomp
    new_entry = {word: word, synonyms: [], antonyms: []}
    entry = Entry.new(new_entry)
    @entries << entry
    puts "Your new word has been added!"
  end

  def delete_entry
   puts "Which number would you like to delete!"
   view_all_entries
   choice = gets.chomp.to_i
   @entries.delete_at(choice)
   puts "Your entry has been deleted!"
  end

  def find_synonyms
    view_all_entries
    puts "Which number would you like to view the synonyms of?"
    choice = gets.chomp.to_i
    puts "Here are the synonyms:"
    p @entries[choice].synonyms
  end

  def find_antonyms
    view_all_entries
    puts "Which number would you like to view the antonyms of?"
    choice = gets.chomp.to_i
    puts "Here are the antonyms:"
    p @entries[choice].antonyms
  end

  def add_synonym
    view_all_entries
    puts "Which number would you like to add a synonym to?"
    choice = gets.chomp.to_i
    puts "Perfect, what is the word you would like to add?"
    snynonym = gets.chomp
    @entries[choice].synonyms << snynonym
    puts "New Synonym has been added, here is the new list:"
    puts "Synonyms are now: #{@entries[choice].synonyms}"
  end

  def add_antonym
    view_all_entries
    puts "Which number would you like to add a antonym to?"
    choice = gets.chomp.to_i
    puts "Perfect, what is the word you would like to add?"
    antonym = gets.chomp
    @entries[choice].antonyms << antonym
    puts "New Antonym has been added, here is the new list:"
    puts "Antonyms are now: #{@entries[choice].antonyms}"
  end

  def view_all_entries
    count = 0
    @entries.each do |entry|
      puts "#{count}   Word: '#{entry.word}'"
      puts "Synonyms: '#{entry.synonyms}'"
      puts "Antonyms: '#{entry.antonyms}'"
      puts "-------------------------------"
      count += 1
    end
  end
end


class Entry < Thesaurus
  attr_accessor :word, :synonyms, :antonyms
  def initialize(input_options)
    @word = input_options[:word]
    @synonyms = input_options[:synonyms]
    @antonyms = input_options[:antonyms]
  end
end



entry = Entry.new(
                  word: "good",
                  synonyms: ["well", "right"],
                  antonyms: ["bad", "evil"]
                  )

second_entry = Entry.new(
                        word: "shy",
                        synonyms: ["afraid", "scared"],
                        antonyms: ["outgoing", "confident"]
                        )

third_entry = Entry.new(
                        word: "happy",
                        synonyms: ["excited", "positive"],
                        antonyms: ["upset", "sad"]
                        )

thesaurus = Thesaurus.new(entry)

thesaurus.save_entry(second_entry)
thesaurus.save_entry(third_entry)
# thesaurus.add_word
# thesaurus.find_synonyms
# thesaurus.find_antonyms
# thesaurus.add_synonym
# thesaurus.add_antonym
# thesaurus.delete_entry
# thesaurus.view_all_entries


