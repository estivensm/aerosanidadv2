require 'rails_helper'

RSpec.describe "ProgressNotes", type: :request do
  describe "GET /progress_notes" do
    it "works! (now write some real specs)" do
      get progress_notes_path
      expect(response).to have_http_status(200)
    end
  end
end
