#!/bin/bash
 
docker create --name streaming_dataset --security-opt "apparmor=cloudsuitemedia-streamingdataset_profile" cloudsuite/media-streaming:dataset
docker run -d --name streaming_server --volumes-from streaming_dataset --net streaming_network --security-opt "apparmor=cloudsuitemedia-streamingserver_profile" cloudsuite/media-streaming:server
docker run -t --name streaming_client1 -v /output:/output --volumes-from streaming_dataset --net streaming_network --security-opt "apparmor=cloudsuitemedia-streamingclient1_profile" cloudsuite/media-streaming:client streaming_server











































































































































































































