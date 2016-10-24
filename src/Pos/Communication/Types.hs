{-# LANGUAGE ConstraintKinds #-}

-- | Types used for communication.

module Pos.Communication.Types
       ( ResponseMode

       -- * Request types
       , module Mpc
       , module Block
       , module Tx
       ) where

import           Control.TimeWarp.Rpc          (MonadResponse)
-- import           Universum

import           Pos.Communication.Types.Block as Block
import           Pos.Communication.Types.Mpc   as Mpc
import           Pos.Communication.Types.Tx    as Tx
import           Pos.WorkMode                  (WorkMode)

type ResponseMode m = (WorkMode m, MonadResponse m)
