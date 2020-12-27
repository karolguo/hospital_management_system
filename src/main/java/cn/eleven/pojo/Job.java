package cn.eleven.pojo;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-09-18 19:27
 * 职称
 */
public class Job {
    private Integer jobId ;
    private String jobName ;//职称名 例如医生，专家，主治医师等
    private double jobFee;

    @Override
    public String toString() {
        return "Job{" +
                "jobId=" + jobId +
                ", jobName='" + jobName + '\'' +
                ", jobFee=" + jobFee +
                '}';
    }

    public Integer getJobId() {
        return jobId;
    }

    public void setJobId(Integer jobId) {
        this.jobId = jobId;
    }

    public String getJobName() {
        return jobName;
    }

    public void setJobName(String jobName) {
        this.jobName = jobName;
    }

    public double getJobFee() {
        return jobFee;
    }

    public void setJobFee(double jobFee) {
        this.jobFee = jobFee;
    }
}

