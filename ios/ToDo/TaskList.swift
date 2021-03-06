////////////////////////////////////////////////////////////////////////////
//
// Copyright 2018 Realm Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
////////////////////////////////////////////////////////////////////////////

import RealmSwift

class TaskList: Object {
    
    @objc dynamic var listId: String = UUID().uuidString
    @objc dynamic var name: String = ""
    @objc dynamic var owner: String = ""
    
    let items = List<Item>()
    
    override static func primaryKey() -> String? {
        return "listId"
    }
    
}

