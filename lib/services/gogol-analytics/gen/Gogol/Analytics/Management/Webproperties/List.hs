{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Analytics.Management.Webproperties.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists web properties to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webproperties.list@.
module Gogol.Analytics.Management.Webproperties.List
    (
    -- * Resource
      AnalyticsManagementWebpropertiesListResource

    -- ** Constructing a Request
    , newAnalyticsManagementWebpropertiesList
    , AnalyticsManagementWebpropertiesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Analytics.Types

-- | A resource alias for @analytics.management.webproperties.list@ method which the
-- 'AnalyticsManagementWebpropertiesList' request conforms to.
type AnalyticsManagementWebpropertiesListResource =
     "analytics" Core.:>
       "v3" Core.:>
         "management" Core.:>
           "accounts" Core.:>
             Core.Capture "accountId" Core.Text Core.:>
               "webproperties" Core.:>
                 Core.QueryParam "max-results" Core.Int32 Core.:>
                   Core.QueryParam "start-index" Core.Int32 Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] Webproperties

-- | Lists web properties to which the user has access.
--
-- /See:/ 'newAnalyticsManagementWebpropertiesList' smart constructor.
data AnalyticsManagementWebpropertiesList = AnalyticsManagementWebpropertiesList
    {
      -- | Account ID to retrieve web properties for. Can either be a specific account ID or \'~all\', which refers to all the accounts that user has access to.
      accountId :: Core.Text
      -- | The maximum number of web properties to include in this response.
    , maxResults :: (Core.Maybe Core.Int32)
      -- | An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
    , startIndex :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementWebpropertiesList' with the minimum fields required to make a request.
newAnalyticsManagementWebpropertiesList 
    ::  Core.Text
       -- ^  Account ID to retrieve web properties for. Can either be a specific account ID or \'~all\', which refers to all the accounts that user has access to. See 'accountId'.
    -> AnalyticsManagementWebpropertiesList
newAnalyticsManagementWebpropertiesList accountId =
  AnalyticsManagementWebpropertiesList
    { accountId = accountId
    , maxResults = Core.Nothing
    , startIndex = Core.Nothing
    }

instance Core.GoogleRequest
           AnalyticsManagementWebpropertiesList
         where
        type Rs AnalyticsManagementWebpropertiesList =
             Webproperties
        type Scopes AnalyticsManagementWebpropertiesList =
             '["https://www.googleapis.com/auth/analytics",
               "https://www.googleapis.com/auth/analytics.edit",
               "https://www.googleapis.com/auth/analytics.readonly"]
        requestClient
          AnalyticsManagementWebpropertiesList{..}
          = go accountId maxResults startIndex
              (Core.Just Core.AltJSON)
              analyticsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AnalyticsManagementWebpropertiesListResource)
                      Core.mempty
