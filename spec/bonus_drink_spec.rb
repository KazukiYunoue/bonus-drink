require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  describe "#total_count_for" do
    let(:total_count_for) { BonusDrink.total_count_for(number) }
    subject { total_count_for }
    context "when argument is 0" do
      let(:number) { 0 }
      it { is_expected.to eq 0 }
    end
    context "when argument is 1" do
      let(:number) { 1 }
      it { is_expected.to eq 1 }
    end
    context "when argument is 3" do
      let(:number) { 3 }
      it { is_expected.to eq 4 }
    end
    context "when argument is 11" do
      let(:number) { 11 }
      it { is_expected.to eq 16 }
    end
    context "when argument is 100" do
      let(:number) { 100 }
      it { is_expected.to eq 149 }
    end
    context "when argument is -1" do
      let(:number) { -1 }
      it { expect { subject }.to raise_error(ArgumentError) }
    end
  end
end
