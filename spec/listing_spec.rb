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

  describe "#mutate" do
    let(:input_array) { [1,2,3] }
    subject { described_class.new(array: input_array).mutate }
    it { is_expected.to be_a Array }
    # bay gio viet test de check array nay phai la bien the cua input_array
    it { expect(subject).to include (1) }
    it { expect(subject).to include (2) }
    it { expect(subject).to include (3) }

    # egh, can't equal input_array leh
    it { is_expected.not_to eq input_array }
  end

  describe "#total_mutation" do
    let(:input_array) { [1,2,3] }
    subject { described_class.new(array: input_array).total_mutations }
    it { is_expected.to eq 6 }
  end
end
