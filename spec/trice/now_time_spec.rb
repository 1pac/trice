require 'spec_helper'

describe Trice::NowTime do
  describe '.get' do
    context 'Trice.use_time_with_zone is true' do
      before  { expect(Trice).to receive(:use_time_with_zone).and_return(true) }
      specify { expect(Trice::NowTime.get.class).to eq ActiveSupport::TimeWithZone }
    end

    context 'Trice.use_time_with_zone is false' do
      before  { expect(Trice).to receive(:use_time_with_zone).and_return(false) }
      specify { expect(Trice::NowTime.get.class).to eq Time }
    end
  end
end
