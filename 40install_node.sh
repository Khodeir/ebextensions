#!/bin/bash
#==============================================================================
# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Amazon Software License (the "License"). You may not use
# this file except in compliance with the License. A copy of the License is
# located at
#
#       http://aws.amazon.com/asl/
#
# or in the "license" file accompanying this file. This file is distributed on
# an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, express or
# implied. See the License for the specific language governing permissions
# and limitations under the License.
#==============================================================================

set -xe

/opt/elasticbeanstalk/containerfiles/ebnode.py --action node-install
# Update npm
cd /opt/elasticbeanstalk/node-install/node-v4.4.3-linux-x64/bin/ && /opt/elasticbeanstalk/node-install/node-v4.4.3-linux-x64/bin/npm update npm -g
