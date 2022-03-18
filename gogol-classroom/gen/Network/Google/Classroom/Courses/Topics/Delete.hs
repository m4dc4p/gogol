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
-- Module      : Network.Google.Classroom.Courses.Topics.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a topic. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not allowed to delete the requested topic or for access errors. * @FAILED_PRECONDITION@ if the requested topic has already been deleted. * @NOT_FOUND@ if no course or topic exists with the requested ID.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.topics.delete@.
module Network.Google.Classroom.Courses.Topics.Delete
  ( -- * Resource
    ClassroomCoursesTopicsDeleteResource,

    -- ** Constructing a Request
    newClassroomCoursesTopicsDelete,
    ClassroomCoursesTopicsDelete,
  )
where

import Network.Google.Classroom.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @classroom.courses.topics.delete@ method which the
-- 'ClassroomCoursesTopicsDelete' request conforms to.
type ClassroomCoursesTopicsDeleteResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "courseId" Core.Text
    Core.:> "topics"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a topic. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not allowed to delete the requested topic or for access errors. * @FAILED_PRECONDITION@ if the requested topic has already been deleted. * @NOT_FOUND@ if no course or topic exists with the requested ID.
--
-- /See:/ 'newClassroomCoursesTopicsDelete' smart constructor.
data ClassroomCoursesTopicsDelete = ClassroomCoursesTopicsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.
    courseId :: Core.Text,
    -- | Identifier of the topic to delete.
    id :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesTopicsDelete' with the minimum fields required to make a request.
newClassroomCoursesTopicsDelete ::
  -- |  Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. See 'courseId'.
  Core.Text ->
  -- |  Identifier of the topic to delete. See 'id'.
  Core.Text ->
  ClassroomCoursesTopicsDelete
newClassroomCoursesTopicsDelete courseId id =
  ClassroomCoursesTopicsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      courseId = courseId,
      id = id,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ClassroomCoursesTopicsDelete
  where
  type Rs ClassroomCoursesTopicsDelete = Empty
  type
    Scopes ClassroomCoursesTopicsDelete =
      '["https://www.googleapis.com/auth/classroom.topics"]
  requestClient ClassroomCoursesTopicsDelete {..} =
    go
      courseId
      id
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      classroomService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ClassroomCoursesTopicsDeleteResource
          )
          Core.mempty