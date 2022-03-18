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
-- Module      : Gogol.AdExchangeBuyer.PretargetingConfig.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing pretargeting config. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.pretargetingConfig.patch@.
module Gogol.AdExchangeBuyer.PretargetingConfig.Patch
    (
    -- * Resource
      AdExchangeBuyerPretargetingConfigPatchResource

    -- ** Constructing a Request
    , newAdExchangeBuyerPretargetingConfigPatch
    , AdExchangeBuyerPretargetingConfigPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdExchangeBuyer.Types

-- | A resource alias for @adexchangebuyer.pretargetingConfig.patch@ method which the
-- 'AdExchangeBuyerPretargetingConfigPatch' request conforms to.
type AdExchangeBuyerPretargetingConfigPatchResource =
     "adexchangebuyer" Core.:>
       "v1.4" Core.:>
         "pretargetingconfigs" Core.:>
           Core.Capture "accountId" Core.Int64 Core.:>
             Core.Capture "configId" Core.Int64 Core.:>
               Core.QueryParam "alt" Core.AltJSON Core.:>
                 Core.ReqBody '[Core.JSON] PretargetingConfig Core.:>
                   Core.Patch '[Core.JSON] PretargetingConfig

-- | Updates an existing pretargeting config. This method supports patch semantics.
--
-- /See:/ 'newAdExchangeBuyerPretargetingConfigPatch' smart constructor.
data AdExchangeBuyerPretargetingConfigPatch = AdExchangeBuyerPretargetingConfigPatch
    {
      -- | The account id to update the pretargeting config for.
      accountId :: Core.Int64
      -- | The specific id of the configuration to update.
    , configId :: Core.Int64
      -- | Multipart request metadata.
    , payload :: PretargetingConfig
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerPretargetingConfigPatch' with the minimum fields required to make a request.
newAdExchangeBuyerPretargetingConfigPatch 
    ::  Core.Int64
       -- ^  The account id to update the pretargeting config for. See 'accountId'.
    -> Core.Int64
       -- ^  The specific id of the configuration to update. See 'configId'.
    -> PretargetingConfig
       -- ^  Multipart request metadata. See 'payload'.
    -> AdExchangeBuyerPretargetingConfigPatch
newAdExchangeBuyerPretargetingConfigPatch accountId configId payload =
  AdExchangeBuyerPretargetingConfigPatch
    {accountId = accountId, configId = configId, payload = payload}

instance Core.GoogleRequest
           AdExchangeBuyerPretargetingConfigPatch
         where
        type Rs AdExchangeBuyerPretargetingConfigPatch =
             PretargetingConfig
        type Scopes AdExchangeBuyerPretargetingConfigPatch =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient
          AdExchangeBuyerPretargetingConfigPatch{..}
          = go accountId configId (Core.Just Core.AltJSON)
              payload
              adExchangeBuyerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AdExchangeBuyerPretargetingConfigPatchResource)
                      Core.mempty
