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
-- Module      : Gogol.Compute.TargetHttpsProxies.SetCertificateMap
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the Certificate Map for TargetHttpsProxy.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.targetHttpsProxies.setCertificateMap@.
module Gogol.Compute.TargetHttpsProxies.SetCertificateMap
  ( -- * Resource
    ComputeTargetHttpsProxiesSetCertificateMapResource,

    -- ** Constructing a Request
    ComputeTargetHttpsProxiesSetCertificateMap (..),
    newComputeTargetHttpsProxiesSetCertificateMap,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.targetHttpsProxies.setCertificateMap@ method which the
-- 'ComputeTargetHttpsProxiesSetCertificateMap' request conforms to.
type ComputeTargetHttpsProxiesSetCertificateMapResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "targetHttpsProxies"
    Core.:> Core.Capture "targetHttpsProxy" Core.Text
    Core.:> "setCertificateMap"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              TargetHttpsProxiesSetCertificateMapRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Changes the Certificate Map for TargetHttpsProxy.
--
-- /See:/ 'newComputeTargetHttpsProxiesSetCertificateMap' smart constructor.
data ComputeTargetHttpsProxiesSetCertificateMap = ComputeTargetHttpsProxiesSetCertificateMap
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: TargetHttpsProxiesSetCertificateMapRequest,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    requestId :: (Core.Maybe Core.Text),
    -- | Name of the TargetHttpsProxy resource whose CertificateMap is to be set. The name must be 1-63 characters long, and comply with RFC1035.
    targetHttpsProxy :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeTargetHttpsProxiesSetCertificateMap' with the minimum fields required to make a request.
newComputeTargetHttpsProxiesSetCertificateMap ::
  -- |  Multipart request metadata. See 'payload'.
  TargetHttpsProxiesSetCertificateMapRequest ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the TargetHttpsProxy resource whose CertificateMap is to be set. The name must be 1-63 characters long, and comply with RFC1035. See 'targetHttpsProxy'.
  Core.Text ->
  ComputeTargetHttpsProxiesSetCertificateMap
newComputeTargetHttpsProxiesSetCertificateMap payload project targetHttpsProxy =
  ComputeTargetHttpsProxiesSetCertificateMap
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      project = project,
      requestId = Core.Nothing,
      targetHttpsProxy = targetHttpsProxy,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeTargetHttpsProxiesSetCertificateMap
  where
  type
    Rs ComputeTargetHttpsProxiesSetCertificateMap =
      Operation
  type
    Scopes
      ComputeTargetHttpsProxiesSetCertificateMap =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient
    ComputeTargetHttpsProxiesSetCertificateMap {..} =
      go
        project
        targetHttpsProxy
        xgafv
        accessToken
        callback
        requestId
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        computeService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ComputeTargetHttpsProxiesSetCertificateMapResource
            )
            Core.mempty