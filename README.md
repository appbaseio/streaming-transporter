# streaming-transporter

Docker Image for [compose/transporter](https://github.com/compose/transporter) including the data adapters for the AWS kinesis and [appbase.io](https://appbase.io/)

***

### Running this container

To run this container simple run the following command:

```
docker run -d -e TRANSPORTPIPE="Source({type: \"kinesis\", awsaccesskey: \"XXX\", awssecretkey: \"XXX\", awsregionname: \"us-east-1\", streamname: \"appbase_test\", sharditeratortype: \"TRIM_HORIZON\"}).save({type: \"appbase\", username: \"XXX\", password: \"XXX\", namespace: \"test_123.appbase_test\"})" trans1
```

###Docker Image
```
docker pull rishiloyola/streaming-transporter
```
Find the image over here - [dockerhub](https://hub.docker.com/r/rishiloyola/streaming-transporter/)
