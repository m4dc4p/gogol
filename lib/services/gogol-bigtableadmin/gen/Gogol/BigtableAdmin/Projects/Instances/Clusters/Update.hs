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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Clusters.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a cluster within an instance. Note that UpdateCluster does not support updating cluster/config.cluster/autoscaling_config. In order to update it, you must use PartialUpdateCluster.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.clusters.update@.
module Gogol.BigtableAdmin.Projects.Instances.Clusters.Update
  ( -- * Resource
    BigtableAdminProjectsInstancesClustersUpdateResource,

    -- ** Constructing a Request
    newBigtableAdminProjectsInstancesClustersUpdate,
    BigtableAdminProjectsInstancesClustersUpdate,
  )
where

import Gogol.BigtableAdmin.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigtableadmin.projects.instances.clusters.update@ method which the
-- 'BigtableAdminProjectsInstancesClustersUpdate' request conforms to.
type BigtableAdminProjectsInstancesClustersUpdateResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Cluster
    Core.:> Core.Put '[Core.JSON] Operation

-- | Updates a cluster within an instance. Note that UpdateCluster does not support updating cluster/config.cluster/autoscaling_config. In order to update it, you must use PartialUpdateCluster.
--
-- /See:/ 'newBigtableAdminProjectsInstancesClustersUpdate' smart constructor.
data BigtableAdminProjectsInstancesClustersUpdate = BigtableAdminProjectsInstancesClustersUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The unique name of the cluster. Values are of the form @projects\/{project}\/instances\/{instance}\/clusters\/a-z*@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Cluster,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesClustersUpdate' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesClustersUpdate ::
  -- |  The unique name of the cluster. Values are of the form @projects\/{project}\/instances\/{instance}\/clusters\/a-z*@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Cluster ->
  BigtableAdminProjectsInstancesClustersUpdate
newBigtableAdminProjectsInstancesClustersUpdate name payload =
  BigtableAdminProjectsInstancesClustersUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigtableAdminProjectsInstancesClustersUpdate
  where
  type
    Rs BigtableAdminProjectsInstancesClustersUpdate =
      Operation
  type
    Scopes
      BigtableAdminProjectsInstancesClustersUpdate =
      '[ "https://www.googleapis.com/auth/bigtable.admin",
         "https://www.googleapis.com/auth/bigtable.admin.cluster",
         "https://www.googleapis.com/auth/bigtable.admin.instance",
         "https://www.googleapis.com/auth/cloud-bigtable.admin",
         "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
         "https://www.googleapis.com/auth/cloud-platform"
       ]
  requestClient
    BigtableAdminProjectsInstancesClustersUpdate {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        bigtableAdminService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  BigtableAdminProjectsInstancesClustersUpdateResource
            )
            Core.mempty
