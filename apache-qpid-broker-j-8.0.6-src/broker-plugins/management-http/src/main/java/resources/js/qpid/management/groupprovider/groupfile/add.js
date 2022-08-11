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
define(["dojo/query",
        "dijit/registry",
        "qpid/common/util",
        "dojo/text!groupprovider/groupfile/add.html"], function (query, registry, util, template)
{

    return {
        show: function (data)
        {
            var that = this;
            util.parse(data.containerNode, template, function ()
            {
                var pathWidget = registry.byNode(query(".addGroupProviderPath", data.containerNode)[0]);
                pathWidget.set("disabled", !!(data.data && data.data.id));
                pathWidget.set("value", data.data ? data.data.path : "");

                var caseSensitiveWidget = registry.byNode(query(".caseSensitive", data.containerNode)[0]);
                caseSensitiveWidget.set("checked", data.data && data.data.caseSensitive);

                util.applyToWidgets(data.containerNode, "GroupProvider", "GroupFile", data.data, data.metadata);
            });
        }
    };
});
