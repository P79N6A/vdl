#run cases
cd $WORKSPACE/src/gitlab.tools.vipshop.com/distributedstorage/ds-vdl/consensus/rafthttp
go test -v  | go2xunit -output $WORKSPACE/testreport/t_rafthttp_test.xml