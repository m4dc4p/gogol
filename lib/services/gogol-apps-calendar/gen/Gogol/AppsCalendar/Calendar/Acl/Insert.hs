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
-- Module      : Gogol.AppsCalendar.Calendar.Acl.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an access control rule.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.acl.insert@.
module Gogol.AppsCalendar.Calendar.Acl.Insert
    (
    -- * Resource
      CalendarAclInsertResource

    -- ** Constructing a Request
    , newCalendarAclInsert
    , CalendarAclInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppsCalendar.Types

-- | A resource alias for @calendar.acl.insert@ method which the
-- 'CalendarAclInsert' request conforms to.
type CalendarAclInsertResource =
     "calendar" Core.:>
       "v3" Core.:>
         "calendars" Core.:>
           Core.Capture "calendarId" Core.Text Core.:>
             "acl" Core.:>
               Core.QueryParam "sendNotifications" Core.Bool Core.:>
                 Core.QueryParam "alt" Core.AltJSON Core.:>
                   Core.ReqBody '[Core.JSON] AclRule Core.:>
                     Core.Post '[Core.JSON] AclRule

-- | Creates an access control rule.
--
-- /See:/ 'newCalendarAclInsert' smart constructor.
data CalendarAclInsert = CalendarAclInsert
    {
      -- | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.
      calendarId :: Core.Text
      -- | Multipart request metadata.
    , payload :: AclRule
      -- | Whether to send notifications about the calendar sharing change. Optional. The default is True.
    , sendNotifications :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarAclInsert' with the minimum fields required to make a request.
newCalendarAclInsert 
    ::  Core.Text
       -- ^  Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword. See 'calendarId'.
    -> AclRule
       -- ^  Multipart request metadata. See 'payload'.
    -> CalendarAclInsert
newCalendarAclInsert calendarId payload =
  CalendarAclInsert
    { calendarId = calendarId
    , payload = payload
    , sendNotifications = Core.Nothing
    }

instance Core.GoogleRequest CalendarAclInsert where
        type Rs CalendarAclInsert = AclRule
        type Scopes CalendarAclInsert =
             '["https://www.googleapis.com/auth/calendar"]
        requestClient CalendarAclInsert{..}
          = go calendarId sendNotifications
              (Core.Just Core.AltJSON)
              payload
              appsCalendarService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy CalendarAclInsertResource)
                      Core.mempty
