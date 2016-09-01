#!/bin/sh
# Debug
# go test -run=TestSteadyPerfMutilateSweepMulti -InstanceConfigPath="ES_mutilate_K31_V233_128G_ManyTests_Proxy" -OffServAddr="10.0.0.10" -ClientServerLink="10.0.0.10:10.0.0.10" -ServerTerminateOptions="TerminateOnly" -timeout 100h -Recipients="James.Ho@omnitier.com" 

# TestBasicYCSBMem(common.BasicExecuteBenchmarkPhases, "TestBasicYCSBMem", "Basic_ycsb")
# Basic_ycsb, 
#Read file ../JSON/InstanceConfig/Basic_ycsb.json
#0: ServerJSONFile []string = [Skyriver_memcached_DualPool_128G_Eviction]
#1: Comments string = Simple YCSB test
#2: BenchmarkConfig
#	ClientJSONFile []string : [ycsb_ascii_numactl]
#	PhaseJSONFile []string : [ycsb_simple]
#3: CompatibilityConfig
#	ClientType string : 
#	AppsTestJSONFile []string : []
#4: ProxyConfig
#	ProxyJSONFile []string : []

#go test -run=TestBasicYCSBMem -timeout 900h -OffServAddr=10.0.0.10 -ClientServerLink=10.0.0.10:10.0.0.10 -ServerTerminateOptions="TerminateOnly" -Recipients="James.Ho@omnitier.com" 

#********************************************************
#0: ServerJSONFile []string = [Skyriver_memcached_DualPool_128G_Eviction]
#1: Comments string = Simple Memaslap test
#2: BenchmarkConfig
#	ClientJSONFile []string : [memaslap_ascii]
#	PhaseJSONFile []string : [memaslap_simple]
#3: CompatibilityConfig
#	ClientType string : 
#	AppsTestJSONFile []string : []
#4: ProxyConfig
#	ProxyJSONFile []string : []
#
# ../JSON/ServerConfig/Skyriver_memcached_DualPool_128G_Eviction.json
# ../JSON/ClientConfig/memaslap_ascii.json
# ../JSON/PhaseJSONFile/memaslap_simple.json

go test -run=TestBasicMemaslap -timeout 900h -OffServAddr=10.0.0.10 -ClientServerLink=10.0.0.10:10.0.0.10 -ServerTerminateOptions="TerminateOnly" -Recipients="James.Ho@omnitier.com"

