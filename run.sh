export MPS_SAMPLE_PATH=/project/projectaria_sandbox/mps_sample
export BASE_URL="https://www.projectaria.com/async/sample/download/?bucket=mps&filename="
mkdir -p $MPS_SAMPLE_PATH

export OPTIONS="-C - -O -L"
curl -o $MPS_SAMPLE_PATH/sample.vrs $OPTIONS "${BASE_URL}sample.vrs"
curl -o $MPS_SAMPLE_PATH/slam.zip $OPTIONS "${BASE_URL}slam_v1_1_0.zip"
curl -o $MPS_SAMPLE_PATH/eye_gaze.zip $OPTIONS "${BASE_URL}eye_gaze_v3_1_0.zip"
curl -o $MPS_SAMPLE_PATH/hand_tracking.zip $OPTIONS "${BASE_URL}hand_tracking_v2_0_0.zip"

unzip -o $MPS_SAMPLE_PATH/eye_gaze.zip  -d $MPS_SAMPLE_PATH
unzip -o $MPS_SAMPLE_PATH/slam.zip -d $MPS_SAMPLE_PATH
unzip -o $MPS_SAMPLE_PATH/hand_tracking.zip  -d $MPS_SAMPLE_PATH
