class ApplicationController < ActionController::API

    def encode_token(payload)
        JWT.encode(payload, 'my_s3cr3t')
      end
    
      def decoded_token(token)
        # token => "eyJhbGciOiJIUzI1NiJ9.eyJiZWVmIjoic3RlYWsifQ._IBTHTLGX35ZJWTCcY30tLmwU9arwdpNVxtVU0NpAuI"
    
        JWT.decode(token, 'my_s3cr3t')[0]
        # JWT.decode => [{ "beef"=>"steak" }, { "alg"=>"HS256" }]
        # [0] gives us the payload { "beef"=>"steak" }
      end
end
