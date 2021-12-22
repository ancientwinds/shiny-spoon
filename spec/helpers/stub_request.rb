# frozen_string_literal: true

module StubRequest
  def stub(method = :get, request_matcher = //, response_fixture: nil, status_code: 200, additional_headers: {})
    expected_body = response_fixture ? File.read("spec/fixtures/#{response_fixture}.json") : nil
    stub_request(method, request_matcher)
      .to_return(body: expected_body,
                 headers: { content_type: 'application/json', **additional_headers },
                 status: status_code)
  end
end

RSpec.configure do |c|
  c.include StubRequest
end