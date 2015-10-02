{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Storage.BucketAccessControls.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an ACL entry on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageBucketAccessControlsUpdate@.
module Network.Google.Resource.Storage.BucketAccessControls.Update
    (
    -- * REST Resource
      BucketAccessControlsUpdateResource

    -- * Creating a Request
    , bucketAccessControlsUpdate'
    , BucketAccessControlsUpdate'

    -- * Request Lenses
    , bacuQuotaUser
    , bacuPrettyPrint
    , bacuUserIP
    , bacuBucket
    , bacuKey
    , bacuBucketAccessControl
    , bacuOAuthToken
    , bacuEntity
    , bacuFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageBucketAccessControlsUpdate@ which the
-- 'BucketAccessControlsUpdate'' request conforms to.
type BucketAccessControlsUpdateResource =
     "b" :>
       Capture "bucket" Text :>
         "acl" :>
           Capture "entity" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] BucketAccessControl :>
                             Put '[JSON] BucketAccessControl

-- | Updates an ACL entry on the specified bucket.
--
-- /See:/ 'bucketAccessControlsUpdate'' smart constructor.
data BucketAccessControlsUpdate' = BucketAccessControlsUpdate'
    { _bacuQuotaUser           :: !(Maybe Text)
    , _bacuPrettyPrint         :: !Bool
    , _bacuUserIP              :: !(Maybe Text)
    , _bacuBucket              :: !Text
    , _bacuKey                 :: !(Maybe Key)
    , _bacuBucketAccessControl :: !BucketAccessControl
    , _bacuOAuthToken          :: !(Maybe OAuthToken)
    , _bacuEntity              :: !Text
    , _bacuFields              :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketAccessControlsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bacuQuotaUser'
--
-- * 'bacuPrettyPrint'
--
-- * 'bacuUserIP'
--
-- * 'bacuBucket'
--
-- * 'bacuKey'
--
-- * 'bacuBucketAccessControl'
--
-- * 'bacuOAuthToken'
--
-- * 'bacuEntity'
--
-- * 'bacuFields'
bucketAccessControlsUpdate'
    :: Text -- ^ 'bucket'
    -> BucketAccessControl -- ^ 'BucketAccessControl'
    -> Text -- ^ 'entity'
    -> BucketAccessControlsUpdate'
bucketAccessControlsUpdate' pBacuBucket_ pBacuBucketAccessControl_ pBacuEntity_ =
    BucketAccessControlsUpdate'
    { _bacuQuotaUser = Nothing
    , _bacuPrettyPrint = True
    , _bacuUserIP = Nothing
    , _bacuBucket = pBacuBucket_
    , _bacuKey = Nothing
    , _bacuBucketAccessControl = pBacuBucketAccessControl_
    , _bacuOAuthToken = Nothing
    , _bacuEntity = pBacuEntity_
    , _bacuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bacuQuotaUser :: Lens' BucketAccessControlsUpdate' (Maybe Text)
bacuQuotaUser
  = lens _bacuQuotaUser
      (\ s a -> s{_bacuQuotaUser = a})

-- | Returns response with indentations and line breaks.
bacuPrettyPrint :: Lens' BucketAccessControlsUpdate' Bool
bacuPrettyPrint
  = lens _bacuPrettyPrint
      (\ s a -> s{_bacuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bacuUserIP :: Lens' BucketAccessControlsUpdate' (Maybe Text)
bacuUserIP
  = lens _bacuUserIP (\ s a -> s{_bacuUserIP = a})

-- | Name of a bucket.
bacuBucket :: Lens' BucketAccessControlsUpdate' Text
bacuBucket
  = lens _bacuBucket (\ s a -> s{_bacuBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bacuKey :: Lens' BucketAccessControlsUpdate' (Maybe Key)
bacuKey = lens _bacuKey (\ s a -> s{_bacuKey = a})

-- | Multipart request metadata.
bacuBucketAccessControl :: Lens' BucketAccessControlsUpdate' BucketAccessControl
bacuBucketAccessControl
  = lens _bacuBucketAccessControl
      (\ s a -> s{_bacuBucketAccessControl = a})

-- | OAuth 2.0 token for the current user.
bacuOAuthToken :: Lens' BucketAccessControlsUpdate' (Maybe OAuthToken)
bacuOAuthToken
  = lens _bacuOAuthToken
      (\ s a -> s{_bacuOAuthToken = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
bacuEntity :: Lens' BucketAccessControlsUpdate' Text
bacuEntity
  = lens _bacuEntity (\ s a -> s{_bacuEntity = a})

-- | Selector specifying which fields to include in a partial response.
bacuFields :: Lens' BucketAccessControlsUpdate' (Maybe Text)
bacuFields
  = lens _bacuFields (\ s a -> s{_bacuFields = a})

instance GoogleAuth BucketAccessControlsUpdate' where
        authKey = bacuKey . _Just
        authToken = bacuOAuthToken . _Just

instance GoogleRequest BucketAccessControlsUpdate'
         where
        type Rs BucketAccessControlsUpdate' =
             BucketAccessControl
        request = requestWithRoute defReq storageURL
        requestWithRoute r u BucketAccessControlsUpdate'{..}
          = go _bacuQuotaUser (Just _bacuPrettyPrint)
              _bacuUserIP
              _bacuBucket
              _bacuKey
              _bacuOAuthToken
              _bacuEntity
              _bacuFields
              (Just AltJSON)
              _bacuBucketAccessControl
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BucketAccessControlsUpdateResource)
                      r
                      u