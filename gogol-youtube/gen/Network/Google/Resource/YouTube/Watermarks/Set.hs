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
-- Module      : Network.Google.Resource.YouTube.Watermarks.Set
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Uploads a watermark image to YouTube and sets it for a channel.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeWatermarksSet@.
module Network.Google.Resource.YouTube.Watermarks.Set
    (
    -- * REST Resource
      WatermarksSetResource

    -- * Creating a Request
    , watermarksSet'
    , WatermarksSet'

    -- * Request Lenses
    , wsQuotaUser
    , wsPrettyPrint
    , wsUserIP
    , wsChannelId
    , wsMedia
    , wsOnBehalfOfContentOwner
    , wsKey
    , wsInvideoBranding
    , wsOAuthToken
    , wsFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeWatermarksSet@ which the
-- 'WatermarksSet'' request conforms to.
type WatermarksSetResource =
     "watermarks" :>
       "set" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "channelId" Text :>
                 QueryParam "onBehalfOfContentOwner" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           MultipartRelated '[JSON] InvideoBranding Body :>
                             Post '[JSON] ()

-- | Uploads a watermark image to YouTube and sets it for a channel.
--
-- /See:/ 'watermarksSet'' smart constructor.
data WatermarksSet' = WatermarksSet'
    { _wsQuotaUser              :: !(Maybe Text)
    , _wsPrettyPrint            :: !Bool
    , _wsUserIP                 :: !(Maybe Text)
    , _wsChannelId              :: !Text
    , _wsMedia                  :: !Body
    , _wsOnBehalfOfContentOwner :: !(Maybe Text)
    , _wsKey                    :: !(Maybe Key)
    , _wsInvideoBranding        :: !InvideoBranding
    , _wsOAuthToken             :: !(Maybe OAuthToken)
    , _wsFields                 :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WatermarksSet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wsQuotaUser'
--
-- * 'wsPrettyPrint'
--
-- * 'wsUserIP'
--
-- * 'wsChannelId'
--
-- * 'wsMedia'
--
-- * 'wsOnBehalfOfContentOwner'
--
-- * 'wsKey'
--
-- * 'wsInvideoBranding'
--
-- * 'wsOAuthToken'
--
-- * 'wsFields'
watermarksSet'
    :: Text -- ^ 'channelId'
    -> Body -- ^ 'media'
    -> InvideoBranding -- ^ 'InvideoBranding'
    -> WatermarksSet'
watermarksSet' pWsChannelId_ pWsMedia_ pWsInvideoBranding_ =
    WatermarksSet'
    { _wsQuotaUser = Nothing
    , _wsPrettyPrint = True
    , _wsUserIP = Nothing
    , _wsChannelId = pWsChannelId_
    , _wsMedia = pWsMedia_
    , _wsOnBehalfOfContentOwner = Nothing
    , _wsKey = Nothing
    , _wsInvideoBranding = pWsInvideoBranding_
    , _wsOAuthToken = Nothing
    , _wsFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
wsQuotaUser :: Lens' WatermarksSet' (Maybe Text)
wsQuotaUser
  = lens _wsQuotaUser (\ s a -> s{_wsQuotaUser = a})

-- | Returns response with indentations and line breaks.
wsPrettyPrint :: Lens' WatermarksSet' Bool
wsPrettyPrint
  = lens _wsPrettyPrint
      (\ s a -> s{_wsPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
wsUserIP :: Lens' WatermarksSet' (Maybe Text)
wsUserIP = lens _wsUserIP (\ s a -> s{_wsUserIP = a})

-- | The channelId parameter specifies the YouTube channel ID for which the
-- watermark is being provided.
wsChannelId :: Lens' WatermarksSet' Text
wsChannelId
  = lens _wsChannelId (\ s a -> s{_wsChannelId = a})

wsMedia :: Lens' WatermarksSet' Body
wsMedia = lens _wsMedia (\ s a -> s{_wsMedia = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. The onBehalfOfContentOwner parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The CMS account that the user authenticates with must be linked
-- to the specified YouTube content owner.
wsOnBehalfOfContentOwner :: Lens' WatermarksSet' (Maybe Text)
wsOnBehalfOfContentOwner
  = lens _wsOnBehalfOfContentOwner
      (\ s a -> s{_wsOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
wsKey :: Lens' WatermarksSet' (Maybe Key)
wsKey = lens _wsKey (\ s a -> s{_wsKey = a})

-- | Multipart request metadata.
wsInvideoBranding :: Lens' WatermarksSet' InvideoBranding
wsInvideoBranding
  = lens _wsInvideoBranding
      (\ s a -> s{_wsInvideoBranding = a})

-- | OAuth 2.0 token for the current user.
wsOAuthToken :: Lens' WatermarksSet' (Maybe OAuthToken)
wsOAuthToken
  = lens _wsOAuthToken (\ s a -> s{_wsOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
wsFields :: Lens' WatermarksSet' (Maybe Text)
wsFields = lens _wsFields (\ s a -> s{_wsFields = a})

instance GoogleAuth WatermarksSet' where
        authKey = wsKey . _Just
        authToken = wsOAuthToken . _Just

instance GoogleRequest WatermarksSet' where
        type Rs WatermarksSet' = ()
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u WatermarksSet'{..}
          = go _wsQuotaUser (Just _wsPrettyPrint) _wsUserIP
              (Just _wsChannelId)
              _wsMedia
              _wsOnBehalfOfContentOwner
              _wsKey
              _wsOAuthToken
              _wsFields
              (Just AltJSON)
              _wsInvideoBranding
          where go
                  = clientWithRoute
                      (Proxy :: Proxy WatermarksSetResource)
                      r
                      u