// Copyright (c) 2023, WSO2 LLC. (http://www.wso2.com).

// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at

// http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/http;

listener http:Listener httpListener = new (9595);

service / on httpListener {

    isolated resource function get [string fhirType](string searchParams) returns json[]|error {

        //todo: implement search
        return [
            {
                resourceType: "Patient",
                id: "1234",
                name: [
                    {
                        given: ["John"],
                        family: "Doe"
                    }
                ],
                birthDate: "2009-01-01"
            },
            {
                resourceType: "Patient",
                id: "5678",
                name: [
                    {
                        given: ["Jane"],
                        family: "Williams"
                    }
                ],
                birthDate: "2009-10-01"
            }
        ];
    }

    isolated resource function get [string fhirType]/[string id]() returns json|error {

        //todo: implement get-by-id
        return {
            resourceType: "Patient",
            id: "1234",
            name: [
                {
                    given: ["John"],
                    family: "Doe"
                }
            ],
            birthDate: "2009-01-01"
        };
    }

    isolated resource function post [string fhirType]() returns json|error {

        //todo: implement create
        return {
            resourceType: "Patient",
            id: "1234",
            name: [
                {
                    given: ["John"],
                    family: "Doe"
                }
            ],
            birthDate: "2009-01-01"
        };
    }
}
