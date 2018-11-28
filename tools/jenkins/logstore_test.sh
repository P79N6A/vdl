#run test case
cd $WORKSPACE/src/gitlab.tools.vipshop.com/distributedstorage/ds-vdl/logstore
go test -v -run ^Test -jenkinsWorkspace="$WORKSPACE/logstore" | go2xunit -output $WORKSPACE/testreport/t_logstore_test.xml