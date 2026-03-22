package microsoft.aspnet.signalr.client;

import java.util.Calendar;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class HeartbeatMonitor {
    private ScheduledThreadPoolExecutor mExecutor;
    private KeepAliveData mKeepAliveData;
    private Runnable mOnTimeout;
    private Runnable mOnWarning;
    private boolean mTimedOut = false;
    private boolean mHasBeenWarned = false;
    private boolean mStopped = true;
    private Object mSync = new Object();

    public void start(KeepAliveData keepAliveData, final ConnectionBase connectionBase) {
        if (keepAliveData == null) {
            throw new IllegalArgumentException("keepAliveData cannot be null");
        }
        if (this.mKeepAliveData != null) {
            stop();
        }
        synchronized (this.mSync) {
            this.mKeepAliveData = keepAliveData;
            this.mTimedOut = false;
            this.mHasBeenWarned = false;
            this.mStopped = false;
            long checkInterval = this.mKeepAliveData.getCheckInterval();
            this.mExecutor = new ScheduledThreadPoolExecutor(1);
            this.mExecutor.scheduleAtFixedRate(new Runnable() { // from class: microsoft.aspnet.signalr.client.HeartbeatMonitor.1
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (HeartbeatMonitor.this.mSync) {
                        if (!HeartbeatMonitor.this.mStopped && connectionBase.getState() == ConnectionState.Connected) {
                            long timeInMillis = Calendar.getInstance().getTimeInMillis() - HeartbeatMonitor.this.mKeepAliveData.getLastKeepAlive();
                            if (timeInMillis >= HeartbeatMonitor.this.mKeepAliveData.getTimeout()) {
                                if (!HeartbeatMonitor.this.mTimedOut) {
                                    HeartbeatMonitor.this.mTimedOut = true;
                                    HeartbeatMonitor.this.mOnTimeout.run();
                                }
                            } else if (timeInMillis >= HeartbeatMonitor.this.mKeepAliveData.getTimeoutWarning()) {
                                if (!HeartbeatMonitor.this.mHasBeenWarned) {
                                    HeartbeatMonitor.this.mHasBeenWarned = true;
                                    HeartbeatMonitor.this.mOnWarning.run();
                                }
                            } else {
                                HeartbeatMonitor.this.mHasBeenWarned = false;
                                HeartbeatMonitor.this.mTimedOut = false;
                            }
                        }
                    }
                }
            }, checkInterval, checkInterval, TimeUnit.MILLISECONDS);
        }
    }

    public void stop() {
        if (!this.mStopped) {
            synchronized (this.mSync) {
                this.mStopped = true;
                if (this.mExecutor != null) {
                    this.mExecutor.shutdown();
                    this.mExecutor = null;
                }
            }
        }
    }

    public void beat() {
        synchronized (this.mSync) {
            if (this.mKeepAliveData != null) {
                this.mKeepAliveData.setLastKeepAlive(Calendar.getInstance().getTimeInMillis());
            }
        }
    }

    public Runnable getOnWarning() {
        return this.mOnWarning;
    }

    public void setOnWarning(Runnable runnable) {
        this.mOnWarning = runnable;
    }

    public Runnable getOnTimeout() {
        return this.mOnTimeout;
    }

    public void setOnTimeout(Runnable runnable) {
        this.mOnTimeout = runnable;
    }

    public KeepAliveData getKeepAliveData() {
        return this.mKeepAliveData;
    }

    public void setKeepAliveData(KeepAliveData keepAliveData) {
        this.mKeepAliveData = keepAliveData;
    }
}
