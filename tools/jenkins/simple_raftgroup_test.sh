#run cases


cd $WORKSPACE/src/gitlab.tools.vipshop.com/distributedstorage/ds-vdl/consensus/raftgroup

#run fsm
go test -v -run ^TestApply_ | go2xunit -output $WORKSPACE/testreport/t_raft_group_fsm_test.xml

#run log stream integration test
go test -v -run ^TestLogStreamIT -jenkinsTest=true -jenkinsWorkspace="$WORKSPACE" | go2xunit -output $WORKSPACE/testreport/t_logstream_wrapper_test.xml

#run raft group integration test
go test -v -run ^TestRGITBasic_ -jenkinsTest=true -jenkinsWorkspace="$WORKSPACE" | go2xunit -output $WORKSPACE/testreport/t_raft_group_normal_test.xml

#run membership integration test
go test -v -run ^TestMembership_ -jenkinsTest=true -jenkinsWorkspace="$WORKSPACE" | go2xunit -output $WORKSPACE/testreport/t_membership_integration_test.xml


# membership unit
cd $WORKSPACE/src/gitlab.tools.vipshop.com/distributedstorage/ds-vdl/consensus/raftgroup/membership

#run membership unit
go test -v -run ^Test | go2xunit -output $WORKSPACE/testreport/t_raft_group_membership_unit_test.xml
