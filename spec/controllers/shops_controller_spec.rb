require 'rails_helper'

RSpec.describe ShopsController, type: :controller do

    describe 'before actions' do
        describe 'set_shops' do
            it 'is expected to define before action' do
                is_expected.to use_before_action(:set_shops)
            end
        end
    end

  # index action
  describe 'GET #index' do
    before do
      get :index
    end

    it 'is expected to assign shop instance variable' do
      expect(assigns[:shops]).to eq(Shop.all)
    end
  end

  # new action
    describe 'GET #new' do
        before do
            get :new
        end

        it 'is expected to assign user as new instance variable' do
        expect(assigns[:shop]).to be_instance_of(Shop)
        end

        it 'renders new template' do
        is_expected.to render_template(:new)
        end

        it 'renders application layout' do
        is_expected.to render_template(:application)
        end
    end

    # create action 
    describe 'POST #create' do
        before do
            post :create, params: params
        end

        context 'when params are correct' do
        let(:params) { { shop: { name: "Le Collectionist Shop" } } }

            it 'is expected to create new shop successfully' do
                expect(assigns[:shop]).to be_instance_of(Shop)
            end

            it 'is expected to have name assigned to it' do
                expect(assigns[:shop].name).to eq('Le Collectionist Shop')
            end

            it 'is expected to redirect to shops path' do
                response.should redirect_to(shop_path(assigns[:shop]))
            end

        end

        context 'when params are not correct' do
            let(:params) { { shop: { name: '' } } }

            it 'is expected to render new template' do
                is_expected.to redirect_to new_shop_path
            end

            it 'is expected to add errors to name attribute' do
                expect(assigns[:shop].errors[:name]).to eq(['doit être rempli(e)'])
            end
        end
    end
    
end






