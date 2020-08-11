require 'rails_helper'

describe DocumentCaptureSessionResult do
  describe '.key' do
    it 'generates a key'
  end

  describe '#unload' do
    it 'writes encrypted data to redis'
  end

  describe '.load' do
    it 'reads the unloaded result from the session'
  end
end
