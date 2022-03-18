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
-- Module      : Gogol.AndroidEnterprise.Storelayoutpages.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a store page.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.storelayoutpages.delete@.
module Gogol.AndroidEnterprise.Storelayoutpages.Delete
    (
    -- * Resource
      AndroidEnterpriseStorelayoutpagesDeleteResource

    -- ** Constructing a Request
    , newAndroidEnterpriseStorelayoutpagesDelete
    , AndroidEnterpriseStorelayoutpagesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidEnterprise.Types

-- | A resource alias for @androidenterprise.storelayoutpages.delete@ method which the
-- 'AndroidEnterpriseStorelayoutpagesDelete' request conforms to.
type AndroidEnterpriseStorelayoutpagesDeleteResource
     =
     "androidenterprise" Core.:>
       "v1" Core.:>
         "enterprises" Core.:>
           Core.Capture "enterpriseId" Core.Text Core.:>
             "storeLayout" Core.:>
               "pages" Core.:>
                 Core.Capture "pageId" Core.Text Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Delete '[Core.JSON] ()

-- | Deletes a store page.
--
-- /See:/ 'newAndroidEnterpriseStorelayoutpagesDelete' smart constructor.
data AndroidEnterpriseStorelayoutpagesDelete = AndroidEnterpriseStorelayoutpagesDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the enterprise.
    , enterpriseId :: Core.Text
      -- | The ID of the page.
    , pageId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseStorelayoutpagesDelete' with the minimum fields required to make a request.
newAndroidEnterpriseStorelayoutpagesDelete 
    ::  Core.Text
       -- ^  The ID of the enterprise. See 'enterpriseId'.
    -> Core.Text
       -- ^  The ID of the page. See 'pageId'.
    -> AndroidEnterpriseStorelayoutpagesDelete
newAndroidEnterpriseStorelayoutpagesDelete enterpriseId pageId =
  AndroidEnterpriseStorelayoutpagesDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , enterpriseId = enterpriseId
    , pageId = pageId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidEnterpriseStorelayoutpagesDelete
         where
        type Rs AndroidEnterpriseStorelayoutpagesDelete = ()
        type Scopes AndroidEnterpriseStorelayoutpagesDelete =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient
          AndroidEnterpriseStorelayoutpagesDelete{..}
          = go enterpriseId pageId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              androidEnterpriseService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidEnterpriseStorelayoutpagesDeleteResource)
                      Core.mempty
