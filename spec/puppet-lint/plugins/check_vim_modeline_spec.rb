require 'spec_helper'

describe 'vim_modeline' do
  let(:msg) { 'expected vim modeline as last line of file' }

  context 'with fix disabled' do
    context 'code not ending with a vim modeline' do
      let(:code) { "'test'" }

      it 'should detect a single problem' do
        expect(problems).to have(1).problem
      end

      it 'should create a warning' do
        expect(problems).to contain_warning(msg).on_line(1).in_column(6)
      end
    end

    context 'code ending with a vim modeline' do
      let(:code) { "'blah\nblah\n# vim: set ts=2 sw=2 tw=0 et:'\n" }

      it 'should not detect any problems' do
        expect(problems).to have(0).problems
      end
    end
  end
end
