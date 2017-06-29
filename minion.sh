#sudo apt update && sudo apt-get upgrade


function move() {
    # code here
    cd /etc
}
move
#https://blackboard.hanze.nl/webapps/assessment/do/authoring/modifyAssessment?blackboard.platform.security.NonceUtil.nonce=14117a6e-4519-4276-bcef-3ebed4cbcbee&method=modifyAssessment&copyAlignments=false&course_id=_338564_1&assessmentId=_637848_1&sectionId=&questionId=&saveAsNew=false&createAnother=false&assessmentType=Pool&isLinkedQuestion=&referencingQuestionId=
HST="$(hostname)" 
sudo sed -i "/127.0.0.1/ a\127.0.0.1 $HST" /etc/hosts
sudo apt-get install salt-minion -y

function move2() {
    # code here
    cd ~/
}
move2

sudo git clone https://github.com/pietjepuck/saltstack.git
sudo chmod +x ~/saltstack/install.sh  
sudo cp -f saltstack/minion /etc/salt
sudo salt-minion -d


