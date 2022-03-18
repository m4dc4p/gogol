{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.SiteVerification
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Verifies ownership of websites or domains with Google.
--
-- /See:/ <https://developers.google.com/site-verification/ Google Site Verification API Reference>
module Network.Google.SiteVerification
  ( -- * Configuration
    siteVerificationService,

    -- * OAuth Scopes
    siteVerificationScope,
    siteVerificationVerify_OnlyScope,

    -- * Resources

    -- ** siteVerification.webResource.delete
    SiteVerificationWebResourceDeleteResource,
    newSiteVerificationWebResourceDelete,
    SiteVerificationWebResourceDelete,

    -- ** siteVerification.webResource.get
    SiteVerificationWebResourceGetResource,
    newSiteVerificationWebResourceGet,
    SiteVerificationWebResourceGet,

    -- ** siteVerification.webResource.getToken
    SiteVerificationWebResourceGetTokenResource,
    newSiteVerificationWebResourceGetToken,
    SiteVerificationWebResourceGetToken,

    -- ** siteVerification.webResource.insert
    SiteVerificationWebResourceInsertResource,
    newSiteVerificationWebResourceInsert,
    SiteVerificationWebResourceInsert,

    -- ** siteVerification.webResource.list
    SiteVerificationWebResourceListResource,
    newSiteVerificationWebResourceList,
    SiteVerificationWebResourceList,

    -- ** siteVerification.webResource.patch
    SiteVerificationWebResourcePatchResource,
    newSiteVerificationWebResourcePatch,
    SiteVerificationWebResourcePatch,

    -- ** siteVerification.webResource.update
    SiteVerificationWebResourceUpdateResource,
    newSiteVerificationWebResourceUpdate,
    SiteVerificationWebResourceUpdate,

    -- * Types

    -- ** SiteVerificationWebResourceGettokenRequest
    SiteVerificationWebResourceGettokenRequest (..),
    newSiteVerificationWebResourceGettokenRequest,

    -- ** SiteVerificationWebResourceGettokenRequest_Site
    SiteVerificationWebResourceGettokenRequest_Site (..),
    newSiteVerificationWebResourceGettokenRequest_Site,

    -- ** SiteVerificationWebResourceGettokenResponse
    SiteVerificationWebResourceGettokenResponse (..),
    newSiteVerificationWebResourceGettokenResponse,

    -- ** SiteVerificationWebResourceListResponse
    SiteVerificationWebResourceListResponse (..),
    newSiteVerificationWebResourceListResponse,

    -- ** SiteVerificationWebResourceResource
    SiteVerificationWebResourceResource (..),
    newSiteVerificationWebResourceResource,

    -- ** SiteVerificationWebResourceResource_Site
    SiteVerificationWebResourceResource_Site (..),
    newSiteVerificationWebResourceResource_Site,
  )
where

import Network.Google.SiteVerification.Types
import Network.Google.SiteVerification.WebResource.Delete
import Network.Google.SiteVerification.WebResource.Get
import Network.Google.SiteVerification.WebResource.GetToken
import Network.Google.SiteVerification.WebResource.Insert
import Network.Google.SiteVerification.WebResource.List
import Network.Google.SiteVerification.WebResource.Patch
import Network.Google.SiteVerification.WebResource.Update
