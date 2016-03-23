RSpec.describe Listing do
  describe "initialize" do
    subject { described_class.new(array: []) }
    it { is_expected.to be_a Listing }
  end

  describe "#build" do
    context "with 3 numbers" do
      let(:input_array) { [1,2,3] }
      subject { described_class.new(array: input_array).build }
      it { is_expected.to be_a Array }
      it { expect(subject[0]).to eq input_array }
      it { expect(subject).to include [3,2,1] }
      it { expect(subject).to include [1,3,2] }
      it { expect(subject).to include [2,3,1] }
      it { expect(subject.size).to eq 6 }
    end

    context "with 5 numbers" do
      let(:input_array) { [1,2,3,4,5] }
      subject { described_class.new(array: input_array).build }
      it { is_expected.to be_a Array }
      it { expect(subject[0]).to eq input_array }
      it { expect(subject).to include [5,4,3,2,1] }
      it { expect(subject).to include [3,4,5,2,1] }
    end
  end
end
