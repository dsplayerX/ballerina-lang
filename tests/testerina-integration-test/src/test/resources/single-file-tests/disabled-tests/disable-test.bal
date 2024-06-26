// Copyright (c) 2020 WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
//
// WSO2 Inc. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/test;

// This test should not run
@test:Config{
    enable:false //test comment
}
function testDisableFunc1 () {
    test:assertTrue(false, msg = "this test is not expected to run");
}

// This test should run
@test:Config{
    enable:true
}
function testDisableFunc2 () {
    test:assertTrue(true);
}

// Test without enable attribute. This should run.
@test:Config{
}
function testDisableFunc3 () {
    test:assertFalse(false);
}

@test:Config {
    "enable": false
}
function testDisableFunc4() {
    test:assertTrue(false, msg = "this test is not expected to run");
}

@test:Config {
    // this is an intentional comment
    enable: false
}
function testDisableFunc5() {
    test:assertTrue(false, msg = "this test is not expected to run");
}

@ test:Config { // space after @ is intentional
    enable: false
}
function testDisableFunc6() {
    test:assertTrue(false, msg = "this test is not expected to run");
}
