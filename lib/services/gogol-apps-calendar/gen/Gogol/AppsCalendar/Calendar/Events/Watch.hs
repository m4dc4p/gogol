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
-- Module      : Gogol.AppsCalendar.Calendar.Events.Watch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Watch for changes to Events resources.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.events.watch@.
module Gogol.AppsCalendar.Calendar.Events.Watch
    (
    -- * Resource
      CalendarEventsWatchResource

    -- ** Constructing a Request
    , newCalendarEventsWatch
    , CalendarEventsWatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppsCalendar.Types

-- | A resource alias for @calendar.events.watch@ method which the
-- 'CalendarEventsWatch' request conforms to.
type CalendarEventsWatchResource =
     "calendar" Core.:>
       "v3" Core.:>
         "calendars" Core.:>
           Core.Capture "calendarId" Core.Text Core.:>
             "events" Core.:>
               "watch" Core.:>
                 Core.QueryParam "alwaysIncludeEmail" Core.Bool
                   Core.:>
                   Core.QueryParam "iCalUID" Core.Text Core.:>
                     Core.QueryParam "maxAttendees" Core.Int32 Core.:>
                       Core.QueryParam "maxResults" Core.Int32 Core.:>
                         Core.QueryParam "orderBy" EventsWatchOrderBy Core.:>
                           Core.QueryParam "pageToken" Core.Text Core.:>
                             Core.QueryParams "privateExtendedProperty"
                               Core.Text
                               Core.:>
                               Core.QueryParam "q" Core.Text Core.:>
                                 Core.QueryParams "sharedExtendedProperty"
                                   Core.Text
                                   Core.:>
                                   Core.QueryParam "showDeleted" Core.Bool
                                     Core.:>
                                     Core.QueryParam "showHiddenInvitations"
                                       Core.Bool
                                       Core.:>
                                       Core.QueryParam "singleEvents" Core.Bool
                                         Core.:>
                                         Core.QueryParam "syncToken" Core.Text
                                           Core.:>
                                           Core.QueryParam "timeMax"
                                             Core.DateTime'
                                             Core.:>
                                             Core.QueryParam "timeMin"
                                               Core.DateTime'
                                               Core.:>
                                               Core.QueryParam "timeZone"
                                                 Core.Text
                                                 Core.:>
                                                 Core.QueryParam "updatedMin"
                                                   Core.DateTime'
                                                   Core.:>
                                                   Core.QueryParam "alt"
                                                     Core.AltJSON
                                                     Core.:>
                                                     Core.ReqBody '[Core.JSON]
                                                       Channel
                                                       Core.:>
                                                       Core.Post '[Core.JSON]
                                                         Channel

-- | Watch for changes to Events resources.
--
-- /See:/ 'newCalendarEventsWatch' smart constructor.
data CalendarEventsWatch = CalendarEventsWatch
    {
      -- | Deprecated and ignored. A value will always be returned in the email field for the organizer, creator and attendees, even if no real email address is available (i.e. a generated, non-working value will be provided).
      alwaysIncludeEmail :: (Core.Maybe Core.Bool)
      -- | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.
    , calendarId :: Core.Text
      -- | Specifies event ID in the iCalendar format to be included in the response. Optional.
    , iCalUID :: (Core.Maybe Core.Text)
      -- | The maximum number of attendees to include in the response. If there are more than the specified number of attendees, only the participant is returned. Optional.
    , maxAttendees :: (Core.Maybe Core.Int32)
      -- | Maximum number of events returned on one result page. The number of events in the resulting page may be less than this value, or none at all, even if there are more events matching the query. Incomplete pages can be detected by a non-empty nextPageToken field in the response. By default the value is 250 events. The page size can never be larger than 2500 events. Optional.
    , maxResults :: Core.Int32
      -- | The order of the events returned in the result. Optional. The default is an unspecified, stable order.
    , orderBy :: (Core.Maybe EventsWatchOrderBy)
      -- | Token specifying which result page to return. Optional.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: Channel
      -- | Extended properties constraint specified as propertyName=value. Matches only private properties. This parameter might be repeated multiple times to return events that match all given constraints.
    , privateExtendedProperty :: (Core.Maybe [Core.Text])
      -- | Free text search terms to find events that match these terms in any field, except for extended properties. Optional.
    , q :: (Core.Maybe Core.Text)
      -- | Extended properties constraint specified as propertyName=value. Matches only shared properties. This parameter might be repeated multiple times to return events that match all given constraints.
    , sharedExtendedProperty :: (Core.Maybe [Core.Text])
      -- | Whether to include deleted events (with status equals \"cancelled\") in the result. Cancelled instances of recurring events (but not the underlying recurring event) will still be included if showDeleted and singleEvents are both False. If showDeleted and singleEvents are both True, only single instances of deleted events (but not the underlying recurring events) are returned. Optional. The default is False.
    , showDeleted :: (Core.Maybe Core.Bool)
      -- | Whether to include hidden invitations in the result. Optional. The default is False.
    , showHiddenInvitations :: (Core.Maybe Core.Bool)
      -- | Whether to expand recurring events into instances and only return single one-off events and instances of recurring events, but not the underlying recurring events themselves. Optional. The default is False.
    , singleEvents :: (Core.Maybe Core.Bool)
      -- | Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It makes the result of this list request contain only entries that have changed since then. All events deleted since the previous list request will always be in the result set and it is not allowed to set showDeleted to False. There are several query parameters that cannot be specified together with nextSyncToken to ensure consistency of the client state.
      -- 
      -- These are: - iCalUID - orderBy - privateExtendedProperty - q - sharedExtendedProperty - timeMin - timeMax - updatedMin If the syncToken expires, the server will respond with a 410 GONE response code and the client should clear its storage and perform a full synchronization without any syncToken. Learn more about incremental synchronization. Optional. The default is to return all entries.
    , syncToken :: (Core.Maybe Core.Text)
      -- | Upper bound (exclusive) for an event\'s start time to filter by. Optional. The default is not to filter by start time. Must be an RFC3339 timestamp with mandatory time zone offset, for example, 2011-06-03T10:00:00-07:00, 2011-06-03T10:00:00Z. Milliseconds may be provided but are ignored. If timeMin is set, timeMax must be greater than timeMin.
    , timeMax :: (Core.Maybe Core.DateTime')
      -- | Lower bound (exclusive) for an event\'s end time to filter by. Optional. The default is not to filter by end time. Must be an RFC3339 timestamp with mandatory time zone offset, for example, 2011-06-03T10:00:00-07:00, 2011-06-03T10:00:00Z. Milliseconds may be provided but are ignored. If timeMax is set, timeMin must be smaller than timeMax.
    , timeMin :: (Core.Maybe Core.DateTime')
      -- | Time zone used in the response. Optional. The default is the time zone of the calendar.
    , timeZone :: (Core.Maybe Core.Text)
      -- | Lower bound for an event\'s last modification time (as a RFC3339 timestamp) to filter by. When specified, entries deleted since this time will always be included regardless of showDeleted. Optional. The default is not to filter by last modification time.
    , updatedMin :: (Core.Maybe Core.DateTime')
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarEventsWatch' with the minimum fields required to make a request.
newCalendarEventsWatch 
    ::  Core.Text
       -- ^  Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword. See 'calendarId'.
    -> Channel
       -- ^  Multipart request metadata. See 'payload'.
    -> CalendarEventsWatch
newCalendarEventsWatch calendarId payload =
  CalendarEventsWatch
    { alwaysIncludeEmail = Core.Nothing
    , calendarId = calendarId
    , iCalUID = Core.Nothing
    , maxAttendees = Core.Nothing
    , maxResults = 250
    , orderBy = Core.Nothing
    , pageToken = Core.Nothing
    , payload = payload
    , privateExtendedProperty = Core.Nothing
    , q = Core.Nothing
    , sharedExtendedProperty = Core.Nothing
    , showDeleted = Core.Nothing
    , showHiddenInvitations = Core.Nothing
    , singleEvents = Core.Nothing
    , syncToken = Core.Nothing
    , timeMax = Core.Nothing
    , timeMin = Core.Nothing
    , timeZone = Core.Nothing
    , updatedMin = Core.Nothing
    }

instance Core.GoogleRequest CalendarEventsWatch where
        type Rs CalendarEventsWatch = Channel
        type Scopes CalendarEventsWatch =
             '["https://www.googleapis.com/auth/calendar",
               "https://www.googleapis.com/auth/calendar.events",
               "https://www.googleapis.com/auth/calendar.events.readonly",
               "https://www.googleapis.com/auth/calendar.readonly"]
        requestClient CalendarEventsWatch{..}
          = go calendarId alwaysIncludeEmail iCalUID
              maxAttendees
              (Core.Just maxResults)
              orderBy
              pageToken
              (privateExtendedProperty Core.^. Core._Default)
              q
              (sharedExtendedProperty Core.^. Core._Default)
              showDeleted
              showHiddenInvitations
              singleEvents
              syncToken
              timeMax
              timeMin
              timeZone
              updatedMin
              (Core.Just Core.AltJSON)
              payload
              appsCalendarService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CalendarEventsWatchResource)
                      Core.mempty
