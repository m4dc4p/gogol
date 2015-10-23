{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.YouTube.Captions.Download
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Downloads a caption track. The caption track is returned in its original
-- format unless the request specifies a value for the tfmt parameter and
-- in its original language unless the request specifies a value for the
-- tlang parameter.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.captions.download@.
module Network.Google.Resource.YouTube.Captions.Download
    (
    -- * REST Resource
      CaptionsDownloadResource

    -- * Creating a Request
    , captionsDownload
    , CaptionsDownload

    -- * Request Lenses
    , capaOnBehalfOf
    , capaTlang
    , capaOnBehalfOfContentOwner
    , capaId
    , capaTfmt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.captions.download@ method which the
-- 'CaptionsDownload' request conforms to.
type CaptionsDownloadResource =
     "youtube" :>
       "v3" :>
         "captions" :>
           Capture "id" Text :>
             QueryParam "onBehalfOf" Text :>
               QueryParam "tlang" Text :>
                 QueryParam "onBehalfOfContentOwner" Text :>
                   QueryParam "tfmt" CaptionsDownloadTfmt :>
                     QueryParam "alt" AltJSON :> Get '[JSON] ()
       :<|>
       "youtube" :>
         "v3" :>
           "captions" :>
             Capture "id" Text :>
               QueryParam "onBehalfOf" Text :>
                 QueryParam "tlang" Text :>
                   QueryParam "onBehalfOfContentOwner" Text :>
                     QueryParam "tfmt" CaptionsDownloadTfmt :>
                       QueryParam "alt" AltMedia :>
                         Get '[OctetStream] Stream

-- | Downloads a caption track. The caption track is returned in its original
-- format unless the request specifies a value for the tfmt parameter and
-- in its original language unless the request specifies a value for the
-- tlang parameter.
--
-- /See:/ 'captionsDownload' smart constructor.
data CaptionsDownload = CaptionsDownload
    { _capaOnBehalfOf             :: !(Maybe Text)
    , _capaTlang                  :: !(Maybe Text)
    , _capaOnBehalfOfContentOwner :: !(Maybe Text)
    , _capaId                     :: !Text
    , _capaTfmt                   :: !(Maybe CaptionsDownloadTfmt)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CaptionsDownload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'capaOnBehalfOf'
--
-- * 'capaTlang'
--
-- * 'capaOnBehalfOfContentOwner'
--
-- * 'capaId'
--
-- * 'capaTfmt'
captionsDownload
    :: Text -- ^ 'capaId'
    -> CaptionsDownload
captionsDownload pCapaId_ =
    CaptionsDownload
    { _capaOnBehalfOf = Nothing
    , _capaTlang = Nothing
    , _capaOnBehalfOfContentOwner = Nothing
    , _capaId = pCapaId_
    , _capaTfmt = Nothing
    }

-- | ID of the Google+ Page for the channel that the request is be on behalf
-- of
capaOnBehalfOf :: Lens' CaptionsDownload (Maybe Text)
capaOnBehalfOf
  = lens _capaOnBehalfOf
      (\ s a -> s{_capaOnBehalfOf = a})

-- | The tlang parameter specifies that the API response should return a
-- translation of the specified caption track. The parameter value is an
-- ISO 639-1 two-letter language code that identifies the desired caption
-- language. The translation is generated by using machine translation,
-- such as Google Translate.
capaTlang :: Lens' CaptionsDownload (Maybe Text)
capaTlang
  = lens _capaTlang (\ s a -> s{_capaTlang = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. The onBehalfOfContentOwner parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The actual CMS account that the user authenticates with must be
-- linked to the specified YouTube content owner.
capaOnBehalfOfContentOwner :: Lens' CaptionsDownload (Maybe Text)
capaOnBehalfOfContentOwner
  = lens _capaOnBehalfOfContentOwner
      (\ s a -> s{_capaOnBehalfOfContentOwner = a})

-- | The id parameter identifies the caption track that is being retrieved.
-- The value is a caption track ID as identified by the id property in a
-- caption resource.
capaId :: Lens' CaptionsDownload Text
capaId = lens _capaId (\ s a -> s{_capaId = a})

-- | The tfmt parameter specifies that the caption track should be returned
-- in a specific format. If the parameter is not included in the request,
-- the track is returned in its original format.
capaTfmt :: Lens' CaptionsDownload (Maybe CaptionsDownloadTfmt)
capaTfmt = lens _capaTfmt (\ s a -> s{_capaTfmt = a})

instance GoogleRequest CaptionsDownload where
        type Rs CaptionsDownload = ()
        requestClient CaptionsDownload{..}
          = go _capaId _capaOnBehalfOf _capaTlang
              _capaOnBehalfOfContentOwner
              _capaTfmt
              (Just AltJSON)
              youTubeService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy CaptionsDownloadResource)
                      mempty

instance GoogleRequest
         (MediaDownload CaptionsDownload) where
        type Rs (MediaDownload CaptionsDownload) = Stream
        requestClient (MediaDownload CaptionsDownload{..})
          = go _capaId _capaOnBehalfOf _capaTlang
              _capaOnBehalfOfContentOwner
              _capaTfmt
              (Just AltMedia)
              youTubeService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy CaptionsDownloadResource)
                      mempty
