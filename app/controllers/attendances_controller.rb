class AttendancesController < ApplicationController
  def new; end

  def create
    # params.permit!
    @mark = Attendance.new(params_new)
    # @mark = Attendance.new(params[:attendee_id, :attended_event_id])

    if @mark.save
      redirect_to event_path(@mark.attended_event_id)
    else
      redirect_to root_path, alert: 'Event Full'
    end
    # render plain: params_new.inspect
  end
  # end

  def index; end

  def show; end

  private

  def params_new
    params.permit(:attendee_id, :attended_event_id)
  end
end
