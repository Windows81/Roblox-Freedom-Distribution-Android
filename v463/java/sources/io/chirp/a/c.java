package io.chirp.a;

import android.content.Context;
import android.media.AudioRecord;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Handler;
import android.os.Process;
import android.util.Log;
import io.chirp.a.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f7931a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f7933c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AudioTrack f7934d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AudioRecord f7935e;
    private Context h;
    private Handler i;
    private d j;
    private byte[] k;
    private byte[] l;
    private byte[] m;
    private f n;
    private boolean o;
    private boolean p;
    private AudioRecord.OnRecordPositionUpdateListener q = new AudioRecord.OnRecordPositionUpdateListener() { // from class: io.chirp.a.c.3
        @Override // android.media.AudioRecord.OnRecordPositionUpdateListener
        public void onMarkerReached(AudioRecord audioRecord) {
        }

        @Override // android.media.AudioRecord.OnRecordPositionUpdateListener
        public void onPeriodicNotification(AudioRecord audioRecord) {
            while (c.this.n != null && c.this.p && c.this.n.b(c.this.m, c.this.f7932b) > 0) {
                try {
                    c.this.j.processShortsInput(c.this.m);
                } catch (f.a unused) {
                    return;
                }
            }
        }
    };
    private b f = new b().d();
    private a g = new a().a(this.f.b()).b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f7932b = this.f.c();

    public c() {
        int iA = this.g.a();
        this.f7933c = iA;
        this.f7931a = iA * 32;
        this.k = new byte[iA];
        int i = this.f7932b;
        this.l = new byte[i];
        this.m = new byte[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        if (this.o) {
            Log.d("ChirpAudioManager", str);
        }
    }

    private void e() {
        AudioTrack audioTrack = this.f7934d;
        if (audioTrack == null) {
            return;
        }
        try {
            audioTrack.stop();
        } catch (IllegalStateException e2) {
            a(" IllegalStateException cleanupAudioPlayer: " + e2.getMessage());
        }
        this.f7934d.release();
    }

    private void f() {
        AudioRecord audioRecord = this.f7935e;
        if (audioRecord == null) {
            return;
        }
        try {
            audioRecord.stop();
        } catch (IllegalStateException e2) {
            a(" IllegalStateException cleanupAudioRecord: " + e2.getMessage());
        }
        this.f7935e.release();
    }

    private boolean g() {
        return Build.VERSION.SDK_INT < 23 || this.h.checkSelfPermission("android.permission.RECORD_AUDIO") == 0;
    }

    public e a() {
        try {
            a("ChirpAudioManager startListening - audioRecorder.startRecording ");
            this.f7935e.startRecording();
            a("ChirpAudioManager startAudioLoop - starting audio loop");
            if (this.j == null) {
                return new e(120, "AudioBufferCallback not set.");
            }
            this.p = true;
            if (this.f7934d != null) {
                try {
                    a("ChirpAudioManager startListening - audioPlayer.play ");
                    this.f7934d.play();
                    new Thread(new Runnable() { // from class: io.chirp.a.c.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Process.setThreadPriority(-19);
                            while (c.this.p) {
                                c cVar = c.this;
                                cVar.k = cVar.j.processShortsOutput(c.this.k);
                                c.this.f7934d.write(c.this.k, 0, c.this.f7933c);
                            }
                            Thread.currentThread().interrupt();
                        }
                    }).start();
                } catch (IllegalStateException e2) {
                    d();
                    return new e(120, "IllegalStateException audioPlayer.play(): " + e2.getMessage());
                }
            }
            new Thread(new Runnable() { // from class: io.chirp.a.c.2
                @Override // java.lang.Runnable
                public void run() {
                    c cVar;
                    StringBuilder sb;
                    String message;
                    Process.setThreadPriority(-19);
                    while (c.this.p) {
                        try {
                            c.this.n.a(c.this.l, c.this.f7935e.read(c.this.l, 0, c.this.f7932b));
                        } catch (f.a e3) {
                            cVar = c.this;
                            sb = new StringBuilder();
                            sb.append("ChirpAudioManager startListening - inRingBuffer.put ");
                            message = e3.getMessage();
                            sb.append(message);
                            cVar.a(sb.toString());
                        } catch (Exception e4) {
                            cVar = c.this;
                            sb = new StringBuilder();
                            sb.append("ChirpAudioManager inAudioThread - inRingBuffer.put ");
                            message = e4.getMessage();
                            sb.append(message);
                            cVar.a(sb.toString());
                        }
                    }
                    Thread.currentThread().interrupt();
                }
            }).start();
            return new e(0, "No error.");
        } catch (IllegalStateException e3) {
            d();
            return new e(120, "IllegalStateException audioRecorder.startRecording(): " + e3.getMessage());
        }
    }

    public e a(Context context, Handler handler, boolean z) {
        this.i = handler;
        this.h = context;
        if (!g()) {
            d();
            return new e(120, "Microphone permission is required");
        }
        try {
            this.f7935e = this.g.c();
            if (z) {
                try {
                    this.f7934d = this.f.e();
                } catch (IllegalArgumentException e2) {
                    d();
                    return new e(120, "IllegalArgumentException setupAudioPlayer: " + e2.getMessage());
                }
            }
            this.f7935e.setRecordPositionUpdateListener(this.q, handler);
            this.f7935e.setPositionNotificationPeriod(this.f7932b);
            this.n = new f(this.f7931a);
            return new e(0, "No error.");
        } catch (IllegalArgumentException e3) {
            d();
            return new e(120, "IllegalArgumentException setupAudioRecorder: " + e3.getMessage());
        }
    }

    public void a(d dVar) {
        this.j = dVar;
    }

    public e b() {
        this.p = false;
        f fVar = this.n;
        if (fVar != null) {
            fVar.a();
        }
        try {
            a("ChirpAudioManager stopAudioLoop - audioRecorder.stop ");
            this.f7935e.stop();
            try {
                a("ChirpAudioManager stopAudioLoop - audioPlayer.stop ");
                this.f7934d.stop();
                return new e(0, "No error.");
            } catch (IllegalStateException e2) {
                d();
                return new e(120, "IllegalStateException audioPlayer.stop(): " + e2.getMessage());
            }
        } catch (IllegalStateException e3) {
            d();
            return new e(120, "IllegalStateException audioRecorder.stop(): " + e3.getMessage());
        }
    }

    public int c() {
        return this.f.b();
    }

    public void d() {
        a("ChirpAudioManager cleanup ");
        e();
        f();
        this.n = null;
    }
}
