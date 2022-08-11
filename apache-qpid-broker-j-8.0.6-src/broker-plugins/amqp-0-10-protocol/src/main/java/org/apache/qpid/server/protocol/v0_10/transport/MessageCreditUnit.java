/*
 *
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 *
 */

package org.apache.qpid.server.protocol.v0_10.transport;


public enum MessageCreditUnit {

    MESSAGE((short) 0),
    BYTE((short) 1);

    private final short value;

    MessageCreditUnit(short value)
    {
        this.value = value;
    }

    public short getValue()
    {
        return value;
    }

    public static MessageCreditUnit get(short value)
    {
        switch (value)
        {
        case (short) 0: return MESSAGE;
        case (short) 1: return BYTE;
        default: throw new IllegalArgumentException("no such value: " + value);
        }
    }
}
