# frozen_string_literal: true

require 'rails_helper'
describe CheatSheet do
  context '#create' do
    it 'should create a new cheatsheet' do
      cheatsheet = CheatSheet.create(key_stroke: 'j', result: 'down')
      expect(CheatSheet.all).to include(cheatsheet)
    end
  end
  context '#destroy' do
    it 'should delete cheatsheet' do
      cheatsheet = CheatSheet.create(key_stroke: 'j', result: 'down')
      expect { cheatsheet.delete }.to change(CheatSheet, :count).by(-1)
    end
  end
  context '#random' do
    it 'should return a random cheatsheet' do
      cheatsheet = CheatSheet.random
      expect(cheatsheet.key_stroke).should_not be_nil
    end
  end

  context '#update' do
    it 'should update review' do
      cheatsheet = CheatSheet.random
      cheatsheet.update(key_stroke: 'j', result: 'down')

      expect(cheatsheet.key_stroke).to eq('j')
    end
  end
end
