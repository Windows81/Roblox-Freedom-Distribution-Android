package com.roblox.client.friends.b.a;

import android.os.Handler;
import android.util.Log;
import com.roblox.client.ae.t;
import com.roblox.client.friends.b.e;
import io.chirp.connect.ChirpConnect;
import io.chirp.connect.interfaces.ConnectEventListener;
import io.chirp.connect.models.ChirpError;
import io.chirp.connect.models.ConnectState;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c implements com.roblox.client.friends.b.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final byte[] f6040b = {0, 0, 0, 0};
    private static final com.roblox.client.friends.b.d m = new com.roblox.client.friends.b.d() { // from class: com.roblox.client.friends.b.a.c.2
        @Override // com.roblox.client.friends.b.d
        public void a() {
        }

        @Override // com.roblox.client.friends.b.d
        public void a(int i, String str) {
        }
    };
    private static final e n = new e() { // from class: com.roblox.client.friends.b.a.c.3
        @Override // com.roblox.client.friends.b.e
        public void a() {
        }

        @Override // com.roblox.client.friends.b.e
        public void a(int i, String str) {
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ChirpConnect f6043d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f6044e;
    private final com.roblox.client.friends.a h;
    private byte[] i;
    private com.roblox.client.friends.b.c k;
    private a l;
    private boolean j = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ConnectEventListener f6041a = new AnonymousClass1();
    private final Runnable o = new Runnable() { // from class: com.roblox.client.friends.b.a.c.4
        @Override // java.lang.Runnable
        public void run() {
            float fRandom;
            if (c.this.f6043d.getStateForChannel(c.this.f6043d.getTransmissionChannel()) == ConnectState.AudioStateReceiving) {
                c.this.l.u();
                fRandom = ((float) Math.random()) * 0.3f;
                Log.d("NearbyChirpManager", "Not sending (channel is busy)");
            } else {
                ChirpError chirpErrorSend = c.this.f6043d.send(c.this.i);
                if (chirpErrorSend.getCode() > 0) {
                    c.this.l.a("SendError", chirpErrorSend.getErrorCode());
                    Log.d("NearbyChirpManager", "Failed to send: " + chirpErrorSend.getMessage());
                } else {
                    c.this.l.m();
                    Log.d("NearbyChirpManager", "Sent");
                }
                fRandom = c.this.f6044e + 0.3f + (((float) Math.random()) * 0.5f);
            }
            if (c.this.f6043d.getStateForChannel(c.this.f6043d.getTransmissionChannel()) == ConnectState.AudioStateStopped || !c.this.j) {
                return;
            }
            Log.d("NearbyChirpManager", "Waiting " + fRandom + "s");
            c.this.f.postDelayed(c.this.o, (long) (fRandom * 1000.0f));
        }
    };
    private final Runnable p = new Runnable() { // from class: com.roblox.client.friends.b.a.c.5
        @Override // java.lang.Runnable
        public void run() {
            c.this.f();
        }
    };
    private Runnable q = new Runnable() { // from class: com.roblox.client.friends.b.a.c.6
        @Override // java.lang.Runnable
        public void run() {
            c.this.e();
        }
    };
    private final Handler f = new Handler();
    private final Handler g = new Handler();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<Byte> f6042c = Collections.synchronizedList(new ArrayList());

    public c(b bVar, com.roblox.client.friends.a aVar, a aVar2, int i) {
        this.h = aVar;
        ChirpConnect chirpConnectA = bVar.a();
        this.f6043d = chirpConnectA;
        chirpConnectA.setListener(this.f6041a);
        this.f6044e = this.f6043d.getDurationForPayloadLength(this.f6043d.getMaxPayloadLength());
        this.l = aVar2;
        StringBuilder sb = new StringBuilder();
        sb.append("ChirpVolume: ");
        float f = i / 100.0f;
        sb.append(f);
        Log.d("NearbyChirpManager", sb.toString());
        this.f6043d.setVolume(f);
    }

    @Override // com.roblox.client.friends.b.a
    public void a(com.roblox.client.friends.b.b bVar, com.roblox.client.friends.b.d dVar) {
        this.l.e();
        if (a(dVar, n)) {
            this.l.f();
            this.i = t.c(bVar.a());
            this.f.postDelayed(this.o, 0L);
            return;
        }
        this.l.h();
    }

    @Override // com.roblox.client.friends.b.a
    public void a(e eVar, com.roblox.client.friends.b.c cVar) {
        this.l.i();
        if (a(m, eVar)) {
            this.l.j();
            this.k = cVar;
        } else {
            this.l.l();
        }
    }

    @Override // com.roblox.client.friends.b.a
    public void a() {
        this.l.g();
        this.f.removeCallbacks(this.o);
    }

    @Override // com.roblox.client.friends.b.a
    public void b() {
        this.l.k();
        Log.d("NearbyChirpManager", "Unsubscribing...");
        if (this.j) {
            ChirpError chirpErrorStop = this.f6043d.stop();
            this.j = false;
            if (chirpErrorStop.getCode() > 0) {
                this.l.a("StopError", chirpErrorStop.getErrorCode());
                Log.e("NearbyChirpManager", "Error stopping the SDK: " + chirpErrorStop.getMessage());
                return;
            }
            this.l.d();
        }
    }

    @Override // com.roblox.client.friends.b.a
    public void c() {
        this.l.p();
        Log.d("NearbyChirpManager", "Disposing...");
        this.f6043d.stop();
        this.g.removeCallbacks(this.q);
        this.f.removeCallbacks(this.o);
        Log.d("NearbyChirpManager", "Stopped...");
        try {
            this.f6043d.close();
            this.l.o();
            Log.d("NearbyChirpManager", "Closed...");
        } catch (Throwable th) {
            Log.e("NearbyChirpManager", "Error closing ChirpConnect", th);
            this.l.q();
            this.l.a(th);
        }
    }

    /* JADX INFO: renamed from: com.roblox.client.friends.b.a.c$1, reason: invalid class name */
    class AnonymousClass1 implements ConnectEventListener {
        @Override // io.chirp.connect.interfaces.ConnectEventListener
        public void onSending(byte[] bArr, byte b2) {
        }

        @Override // io.chirp.connect.interfaces.ConnectEventListener
        public void onSent(byte[] bArr, byte b2) {
        }

        @Override // io.chirp.connect.interfaces.ConnectEventListener
        public void onStateChanged(byte b2, byte b3) {
        }

        @Override // io.chirp.connect.interfaces.ConnectEventListener
        public void onSystemVolumeChanged(int i, int i2) {
        }

        AnonymousClass1() {
        }

        @Override // io.chirp.connect.interfaces.ConnectEventListener
        public void onReceived(final byte[] bArr, final byte b2) {
            c.this.h.a().execute(new Runnable() { // from class: com.roblox.client.friends.b.a.c.1.1
                @Override // java.lang.Runnable
                public void run() {
                    byte[] bArr2 = bArr;
                    if (bArr2 == null || Arrays.equals(bArr2, c.f6040b)) {
                        return;
                    }
                    Log.d("NearbyChirpManager", "Received data " + c.this.f6043d.payloadToHexString(bArr) + " on channel " + ((int) b2));
                    if (!Arrays.equals(c.this.i, bArr)) {
                        c.this.l.n();
                        if (c.this.k != null) {
                            final d dVarA = d.a(c.this.f6043d.payloadToHexString(bArr));
                            c.this.h.b().execute(new Runnable() { // from class: com.roblox.client.friends.b.a.c.1.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    c.this.k.a(dVarA);
                                }
                            });
                            return;
                        }
                        return;
                    }
                    Log.d("NearbyChirpManager", "Own data.");
                }
            });
        }

        @Override // io.chirp.connect.interfaces.ConnectEventListener
        public void onReceiving(final byte b2) {
            Log.d("NearbyChirpManager", "onReceiving.");
            c.this.h.a().execute(new Runnable() { // from class: com.roblox.client.friends.b.a.c.1.2
                @Override // java.lang.Runnable
                public void run() {
                    if (c.this.f6042c.contains(Byte.valueOf(b2))) {
                        return;
                    }
                    c.this.f6042c.add(Byte.valueOf(b2));
                    Log.d("NearbyChirpManager", "Heard channels " + c.this.f6042c.toString());
                    if (b2 == c.this.f6043d.getTransmissionChannel()) {
                        c.this.f();
                    }
                }
            });
        }
    }

    private boolean a(com.roblox.client.friends.b.d dVar, e eVar) {
        if (!this.j) {
            ChirpError chirpErrorStart = this.f6043d.start();
            if (chirpErrorStart.getCode() > 0) {
                Log.d("NearbyChirpManager", "Error starting the SDK: " + chirpErrorStart.getMessage());
                this.l.a("StartError", chirpErrorStart.getErrorCode());
                dVar.a(2, chirpErrorStart.getMessage());
                eVar.a(1, chirpErrorStart.getMessage());
                return false;
            }
            this.j = true;
            this.l.c();
            double d2 = (this.f6044e * 2.0f) + 0.8f;
            Handler handler = this.g;
            Runnable runnable = this.q;
            Double.isNaN(d2);
            handler.postDelayed(runnable, (long) (d2 * 1000.0d));
            Log.d("NearbyChirpManager", "Started OK");
        }
        dVar.a();
        eVar.a();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        this.h.a().execute(this.p);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.l.r();
        ArrayList arrayList = new ArrayList();
        for (int channelCount = this.f6043d.getChannelCount() - 1; channelCount >= 0; channelCount--) {
            byte b2 = (byte) channelCount;
            if (!this.f6042c.contains(Byte.valueOf(b2))) {
                arrayList.add(Byte.valueOf(b2));
            }
        }
        Log.d("NearbyChirpManager", "Possible channels: " + arrayList.toString());
        if (arrayList.size() == 0) {
            this.l.t();
            Log.w("NearbyChirpManager", "Unable to allocate a channel. All channels are busy");
            return;
        }
        byte bByteValue = ((Byte) arrayList.get(0)).byteValue();
        if (arrayList.size() > 1) {
            bByteValue = ((Byte) arrayList.get(new Random().nextInt(arrayList.size()))).byteValue();
        }
        this.l.s();
        ChirpError transmissionChannel = this.f6043d.setTransmissionChannel(bByteValue);
        if (transmissionChannel.getCode() > 0) {
            this.l.a("PickChannelError", transmissionChannel.getErrorCode());
            Log.e("NearbyChirpManager", "Chanel not set");
        }
    }
}
