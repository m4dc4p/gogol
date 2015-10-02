{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Spectrum.Paws.NotifySpectrumUse
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Notifies the database that the device has selected certain frequency
-- ranges for transmission. Only to be invoked when required by the
-- regulator. The Google Spectrum Database does not operate in domains that
-- require notification, so this always yields an UNIMPLEMENTED error.
--
-- /See:/ <http://developers.google.com/spectrum Google Spectrum Database API Reference> for @SpectrumPawsNotifySpectrumUse@.
module Network.Google.Resource.Spectrum.Paws.NotifySpectrumUse
    (
    -- * REST Resource
      PawsNotifySpectrumUseResource

    -- * Creating a Request
    , pawsNotifySpectrumUse'
    , PawsNotifySpectrumUse'

    -- * Request Lenses
    , pnsuQuotaUser
    , pnsuPawsNotifySpectrumUseRequest
    , pnsuPrettyPrint
    , pnsuUserIP
    , pnsuKey
    , pnsuOAuthToken
    , pnsuFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Spectrum.Types

-- | A resource alias for @SpectrumPawsNotifySpectrumUse@ which the
-- 'PawsNotifySpectrumUse'' request conforms to.
type PawsNotifySpectrumUseResource =
     "notifySpectrumUse" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] PawsNotifySpectrumUseRequest :>
                       Post '[JSON] PawsNotifySpectrumUseResponse

-- | Notifies the database that the device has selected certain frequency
-- ranges for transmission. Only to be invoked when required by the
-- regulator. The Google Spectrum Database does not operate in domains that
-- require notification, so this always yields an UNIMPLEMENTED error.
--
-- /See:/ 'pawsNotifySpectrumUse'' smart constructor.
data PawsNotifySpectrumUse' = PawsNotifySpectrumUse'
    { _pnsuQuotaUser                    :: !(Maybe Text)
    , _pnsuPawsNotifySpectrumUseRequest :: !PawsNotifySpectrumUseRequest
    , _pnsuPrettyPrint                  :: !Bool
    , _pnsuUserIP                       :: !(Maybe Text)
    , _pnsuKey                          :: !(Maybe Key)
    , _pnsuOAuthToken                   :: !(Maybe OAuthToken)
    , _pnsuFields                       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsNotifySpectrumUse'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnsuQuotaUser'
--
-- * 'pnsuPawsNotifySpectrumUseRequest'
--
-- * 'pnsuPrettyPrint'
--
-- * 'pnsuUserIP'
--
-- * 'pnsuKey'
--
-- * 'pnsuOAuthToken'
--
-- * 'pnsuFields'
pawsNotifySpectrumUse'
    :: PawsNotifySpectrumUseRequest -- ^ 'PawsNotifySpectrumUseRequest'
    -> PawsNotifySpectrumUse'
pawsNotifySpectrumUse' pPnsuPawsNotifySpectrumUseRequest_ =
    PawsNotifySpectrumUse'
    { _pnsuQuotaUser = Nothing
    , _pnsuPawsNotifySpectrumUseRequest = pPnsuPawsNotifySpectrumUseRequest_
    , _pnsuPrettyPrint = True
    , _pnsuUserIP = Nothing
    , _pnsuKey = Nothing
    , _pnsuOAuthToken = Nothing
    , _pnsuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pnsuQuotaUser :: Lens' PawsNotifySpectrumUse' (Maybe Text)
pnsuQuotaUser
  = lens _pnsuQuotaUser
      (\ s a -> s{_pnsuQuotaUser = a})

-- | Multipart request metadata.
pnsuPawsNotifySpectrumUseRequest :: Lens' PawsNotifySpectrumUse' PawsNotifySpectrumUseRequest
pnsuPawsNotifySpectrumUseRequest
  = lens _pnsuPawsNotifySpectrumUseRequest
      (\ s a -> s{_pnsuPawsNotifySpectrumUseRequest = a})

-- | Returns response with indentations and line breaks.
pnsuPrettyPrint :: Lens' PawsNotifySpectrumUse' Bool
pnsuPrettyPrint
  = lens _pnsuPrettyPrint
      (\ s a -> s{_pnsuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pnsuUserIP :: Lens' PawsNotifySpectrumUse' (Maybe Text)
pnsuUserIP
  = lens _pnsuUserIP (\ s a -> s{_pnsuUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pnsuKey :: Lens' PawsNotifySpectrumUse' (Maybe Key)
pnsuKey = lens _pnsuKey (\ s a -> s{_pnsuKey = a})

-- | OAuth 2.0 token for the current user.
pnsuOAuthToken :: Lens' PawsNotifySpectrumUse' (Maybe OAuthToken)
pnsuOAuthToken
  = lens _pnsuOAuthToken
      (\ s a -> s{_pnsuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pnsuFields :: Lens' PawsNotifySpectrumUse' (Maybe Text)
pnsuFields
  = lens _pnsuFields (\ s a -> s{_pnsuFields = a})

instance GoogleAuth PawsNotifySpectrumUse' where
        authKey = pnsuKey . _Just
        authToken = pnsuOAuthToken . _Just

instance GoogleRequest PawsNotifySpectrumUse' where
        type Rs PawsNotifySpectrumUse' =
             PawsNotifySpectrumUseResponse
        request = requestWithRoute defReq spectrumURL
        requestWithRoute r u PawsNotifySpectrumUse'{..}
          = go _pnsuQuotaUser (Just _pnsuPrettyPrint)
              _pnsuUserIP
              _pnsuKey
              _pnsuOAuthToken
              _pnsuFields
              (Just AltJSON)
              _pnsuPawsNotifySpectrumUseRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PawsNotifySpectrumUseResource)
                      r
                      u