package microsoft.aspnet.signalr.client;

import java.util.Calendar;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class KeepAliveData {
    private long mCheckInterval;
    private double mKeepAliveWarnAt = 0.6666666666666666d;
    private long mLastKeepAlive;
    private long mTimeout;
    private long mTimeoutWarning;

    public KeepAliveData(long j) {
        setTimeout(j);
        setTimeoutWarning((long) (j * this.mKeepAliveWarnAt));
        setCheckInterval((j - getTimeoutWarning()) / 3);
        setLastKeepAlive(Calendar.getInstance().getTimeInMillis());
    }

    public long getLastKeepAlive() {
        return this.mLastKeepAlive;
    }

    public void setLastKeepAlive(long j) {
        this.mLastKeepAlive = j;
    }

    public long getTimeout() {
        return this.mTimeout;
    }

    public void setTimeout(long j) {
        this.mTimeout = j;
    }

    public long getTimeoutWarning() {
        return this.mTimeoutWarning;
    }

    public void setTimeoutWarning(long j) {
        this.mTimeoutWarning = j;
    }

    public long getCheckInterval() {
        return this.mCheckInterval;
    }

    public void setCheckInterval(long j) {
        this.mCheckInterval = j;
    }
}
