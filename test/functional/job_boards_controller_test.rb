require 'test_helper'

class JobBoardsControllerTest < ActionController::TestCase
  setup do
    @job_board = job_boards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_boards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_board" do
    assert_difference('JobBoard.count') do
      post :create, job_board: { CompanyLogo: @job_board.CompanyLogo, CompanyName: @job_board.CompanyName, FullDesc: @job_board.FullDesc, JobDesc: @job_board.JobDesc, JobTitle: @job_board.JobTitle, Location: @job_board.Location, PostedDate: @job_board.PostedDate }
    end

    assert_redirected_to job_board_path(assigns(:job_board))
  end

  test "should show job_board" do
    get :show, id: @job_board
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job_board
    assert_response :success
  end

  test "should update job_board" do
    put :update, id: @job_board, job_board: { CompanyLogo: @job_board.CompanyLogo, CompanyName: @job_board.CompanyName, FullDesc: @job_board.FullDesc, JobDesc: @job_board.JobDesc, JobTitle: @job_board.JobTitle, Location: @job_board.Location, PostedDate: @job_board.PostedDate }
    assert_redirected_to job_board_path(assigns(:job_board))
  end

  test "should destroy job_board" do
    assert_difference('JobBoard.count', -1) do
      delete :destroy, id: @job_board
    end

    assert_redirected_to job_boards_path
  end
end
