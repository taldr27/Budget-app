require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/deal_groups", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # DealGroup. As you add validations to DealGroup, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      DealGroup.create! valid_attributes
      get deal_groups_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      deal_group = DealGroup.create! valid_attributes
      get deal_group_url(deal_group)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_deal_group_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      deal_group = DealGroup.create! valid_attributes
      get edit_deal_group_url(deal_group)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new DealGroup" do
        expect {
          post deal_groups_url, params: { deal_group: valid_attributes }
        }.to change(DealGroup, :count).by(1)
      end

      it "redirects to the created deal_group" do
        post deal_groups_url, params: { deal_group: valid_attributes }
        expect(response).to redirect_to(deal_group_url(DealGroup.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new DealGroup" do
        expect {
          post deal_groups_url, params: { deal_group: invalid_attributes }
        }.to change(DealGroup, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post deal_groups_url, params: { deal_group: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested deal_group" do
        deal_group = DealGroup.create! valid_attributes
        patch deal_group_url(deal_group), params: { deal_group: new_attributes }
        deal_group.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the deal_group" do
        deal_group = DealGroup.create! valid_attributes
        patch deal_group_url(deal_group), params: { deal_group: new_attributes }
        deal_group.reload
        expect(response).to redirect_to(deal_group_url(deal_group))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        deal_group = DealGroup.create! valid_attributes
        patch deal_group_url(deal_group), params: { deal_group: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested deal_group" do
      deal_group = DealGroup.create! valid_attributes
      expect {
        delete deal_group_url(deal_group)
      }.to change(DealGroup, :count).by(-1)
    end

    it "redirects to the deal_groups list" do
      deal_group = DealGroup.create! valid_attributes
      delete deal_group_url(deal_group)
      expect(response).to redirect_to(deal_groups_url)
    end
  end
end
