{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.SiteVerification
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lets you programatically verify ownership of websites or domains with
-- Google.
--
-- /See:/ <https://developers.google.com/site-verification/ Google Site Verification API Reference>
module Network.Google.SiteVerification
    (
    -- * API
      SiteVerificationAPI
    , siteVerificationAPI
    , siteVerificationURL

    -- * Service Methods

    -- * REST Resources

    -- ** SiteVerificationWebResourceDelete
    , module Network.Google.Resource.SiteVerification.WebResource.Delete

    -- ** SiteVerificationWebResourceGet
    , module Network.Google.Resource.SiteVerification.WebResource.Get

    -- ** SiteVerificationWebResourceGetToken
    , module Network.Google.Resource.SiteVerification.WebResource.GetToken

    -- ** SiteVerificationWebResourceInsert
    , module Network.Google.Resource.SiteVerification.WebResource.Insert

    -- ** SiteVerificationWebResourceList
    , module Network.Google.Resource.SiteVerification.WebResource.List

    -- ** SiteVerificationWebResourcePatch
    , module Network.Google.Resource.SiteVerification.WebResource.Patch

    -- ** SiteVerificationWebResourceUpdate
    , module Network.Google.Resource.SiteVerification.WebResource.Update

    -- * Types

    -- ** SiteVerificationWebResourceGettokenRequestSite
    , SiteVerificationWebResourceGettokenRequestSite
    , siteVerificationWebResourceGettokenRequestSite
    , svwrgrsIdentifier
    , svwrgrsType

    -- ** SiteVerificationWebResourceGettokenResponse
    , SiteVerificationWebResourceGettokenResponse
    , siteVerificationWebResourceGettokenResponse
    , svwrgrToken
    , svwrgrMethod

    -- ** SiteVerificationWebResourceListResponse
    , SiteVerificationWebResourceListResponse
    , siteVerificationWebResourceListResponse
    , svwrlrItems

    -- ** SiteVerificationWebResourceResourceSite
    , SiteVerificationWebResourceResourceSite
    , siteVerificationWebResourceResourceSite
    , svwrrsIdentifier
    , svwrrsType

    -- ** SiteVerificationWebResourceGettokenRequest
    , SiteVerificationWebResourceGettokenRequest
    , siteVerificationWebResourceGettokenRequest
    , svwrgrSite
    , svwrgrVerificationMethod

    -- ** SiteVerificationWebResourceResource
    , SiteVerificationWebResourceResource
    , siteVerificationWebResourceResource
    , svwrrOwners
    , svwrrId
    , svwrrSite
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.SiteVerification.WebResource.Delete
import           Network.Google.Resource.SiteVerification.WebResource.Get
import           Network.Google.Resource.SiteVerification.WebResource.GetToken
import           Network.Google.Resource.SiteVerification.WebResource.Insert
import           Network.Google.Resource.SiteVerification.WebResource.List
import           Network.Google.Resource.SiteVerification.WebResource.Patch
import           Network.Google.Resource.SiteVerification.WebResource.Update
import           Network.Google.SiteVerification.Types

{- $resources
TODO
-}

type SiteVerificationAPI =
     WebResourceInsertResource :<|>
       WebResourceListResource
       :<|> WebResourcePatchResource
       :<|> WebResourceGetResource
       :<|> WebResourceGetTokenResource
       :<|> WebResourceDeleteResource
       :<|> WebResourceUpdateResource

siteVerificationAPI :: Proxy SiteVerificationAPI
siteVerificationAPI = Proxy