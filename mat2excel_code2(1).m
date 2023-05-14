clear
array=["bed","chair","clap","cloth","eat","hair","shoe","stair","teeth","walk","wash","write","zip"];
for i = 1:21
    for j = 1:12
        k = array(j);
        s1 = 'C:\Users\XueruiWang\Desktop\20230511_code\HR_IMU_falldetection_dataset-master\HR_IMU_falldetection_dataset-master\subject_';
        s2 = num2str(i,'%02d');
        s3 = '\non-fall\';
        s4 = k;
        s5 = '.mat';
        ss = strcat(s1,s2,s3,s4,s5);
        if exist(ss,'file')
            load(ss);
            year=time(:,1);
            month=time(:,2);
            day=time(:,3);
            hour=time(:,4);
            minute=time(:,5);
            second=time(:,6);
            T = table(ax,ay,az,dpitch,droll,dyaw,heart,year,month,day,hour,minute,second,w,x,y,z);
            T;
            s6 = '.xls';
            sf = strcat(s1,s2,s3,s4,s6);
            writetable(T,sf) ;
        end
    end
end
