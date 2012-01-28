require 'test_helper'

class VehiclesControllerTest < ActionController::TestCase

  context "on get index" do
    setup { get :index }
    should respond_with :success
  end
  
  for format in ['json', 'xml']
    context "on post create as #{format}" do
      setup do
        @driver = Factory(:driver)
        post :create, format: format, vehicle: Factory.attributes_for(:vehicle, driver_id: @driver.id)
      end
    
      should respond_with :succes
    end
  
    context "on put update as #{format}" do
      setup do
        @driver = Factory(:driver)
        @vehicle = Factory(:vehicle, driver: @driver)
        put :update, format: format, id: @vehicle.id, vehicle: Factory.attributes_for(:vehicle)
      end
    
      should respond_with :success
    end
  
    context "on delete destroy" do
      setup do
        @driver = Factory(:driver)
        @vehicle = Factory(:vehicle, driver: @driver)
        delete :destroy, format: format, id: @vehicle.id
      end
    
      should respond_with :success
    end
  end

end
