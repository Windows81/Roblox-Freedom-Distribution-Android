package com.roblox.client.friends.nearby.a;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Vibrator;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.lifecycle.w;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.roblox.client.ae.k;
import com.roblox.client.ae.q;
import com.roblox.client.ae.v;
import com.roblox.client.friends.c.g;
import com.roblox.client.friends.nearby.NearbyPresenter;
import com.roblox.client.friends.nearby.a;
import com.roblox.client.friends.nearby.a.d;
import com.roblox.client.friends.nearby.a.e;
import com.roblox.client.friends.nearby.b.f;
import com.roblox.client.o;
import com.roblox.client.s;
import com.roblox.client.s.f;
import com.roblox.platform.i;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends s implements View.OnClickListener, a.b, d.a {
    private com.roblox.client.components.a aA;
    private e aC;
    private a.InterfaceC0141a aD;
    private int aF;
    private C0143b aG;
    private a as;
    private RecyclerView at;
    private View av;
    private View aw;
    private TextView ax;
    private TextView ay;
    private TextView az;
    private androidx.databinding.e au = new com.roblox.client.friends.nearby.a.a.b(this);
    private Runnable aB = new Runnable() { // from class: com.roblox.client.friends.nearby.a.b.1
        @Override // java.lang.Runnable
        public void run() {
            b.this.ax.setVisibility(8);
        }
    };
    private int aE = -1;

    public interface a {
        void a(long j);
    }

    public static b aq() {
        return new b();
    }

    @Override // androidx.fragment.app.Fragment
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(o.g.nearby_users_fragment, viewGroup, false);
        this.at = (RecyclerView) viewInflate.findViewById(o.f.nearby_users_list);
        this.av = viewInflate.findViewById(o.f.nearby_users_retry_view);
        this.aw = viewInflate.findViewById(o.f.nearby_users_discovering_view);
        this.ax = (TextView) viewInflate.findViewById(o.f.nearby_error_message_text_view);
        this.ay = (TextView) viewInflate.findViewById(o.f.nearby_retry_message_text_view);
        this.az = (TextView) viewInflate.findViewById(o.f.nearby_volume_error_text_view);
        viewInflate.findViewById(o.f.nearby_retry_button).setOnClickListener(this);
        this.aA = new com.roblox.client.components.a(p(), viewInflate, 200, o.c.RbxGray3, o.c.RbxBlue2, null, null, Integer.valueOf(o.d.loadingSquareSize), Integer.valueOf(o.d.loadingSquareExpandSize));
        return viewInflate;
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void d(Bundle bundle) {
        super.d(bundle);
        this.aC = new e(this.au, new e.b() { // from class: com.roblox.client.friends.nearby.a.b.2
            @Override // com.roblox.client.friends.nearby.a.e.b
            public void a(com.roblox.client.friends.nearby.b.a.a aVar) {
                b.this.e(aVar);
            }
        });
        this.at.setLayoutManager(new GridLayoutManager(p(), q.a(p(), 120)));
        this.at.setAdapter(this.aC);
        this.at.setItemAnimator(new c());
        com.roblox.client.friends.nearby.b bVar = new com.roblox.client.friends.nearby.b();
        String strBt = com.roblox.client.b.bt();
        if (TextUtils.isEmpty(strBt)) {
            strBt = "d1y4K+claSjKrduLxoQke3SmkBh8ueENW0LgVhv1g/5xAHokm26Fo+sPlSMHXvSOGXO8n9esW3qj6jM+RHv/lYdFcg6ArlYJbuRf5uFq1lGtsOmh+52U5dP+g0ZVUcSMH/KhYSnWymCEbdsBTkcch/4E3+TXtVDNF/vd8Im4ODj5kPrORswm8YueqrbzavIq6bDaKzPU02ysex/DYonAna+8E5OVq893u/FUr4/bs3AwvsR5yNuRwaXZ+3R3Q/awX3hSw1Db8zEzNVgboMkS3SvXob9LvIauRWAS9WQ5zU2FkTmxMpdXZTjE+qXBWYNoXiLGwJPqennrA+X5l1un9afx2SqCyNj+Q02YVYzis0eHMdR1D+Z3EIYmU2QesP1k2ThcOVAqCRZ+69okdaEBp2cqIIMokQ89EpBOwTOkIUTPnMTnjSaP4sV+mIPAcwniZIuiWW8UTqh8GgjpiHOum0c1185EYhtqWUPn4ZjZOToy+YsclbsbgQ0C5mvK3CYtKlTDEgYTqI268kwnG19hzqKWols3cv11xGh+DqN286d3rHsYYx1egjWaO9bw63NHAlULIQXd4GvCmZUawrr8eU499kL8Kr6sXZJQwofOqamIvWDnv+mWqXS7JJHFNjNkYxHz/Zpk4sWz1bjwRrQljNOna6XKRCKdN/girGNLGIQk/ZpjMRgzoEiDaqXLHtWmRJvpJK+1COc60BXvD6+6u5llX85q0z5w/Soc8A2eBvfHoOsoLik9hcDeNjVLPa5bUpRFMwzH4zlL5sWKDNEFdBJaZwG7zkCc+pPLb4YzsnTqRosfQPpixAAIXaqxDGX5xRp41X70aTENSUUNN0KwOao/c13iUduBSyK73yo5drwzD0ZG6w2gzzVEDQD4rgE3k89PAc2JSlce5VBmJZhtLZOIv+1lYjR1bIzzMhfF0xrvTKhMFPoeLeWpjD2aSfs5Sl9swwSL5lO1tlQ3WnLZTqDTIKK76eXS3gEzdoNAVldka96fExqpKIm5v4qMPE0cktx1mvNXoPzQMP16eQQciFn5fxcRw4X8qqHmZs8hZWQ=";
        }
        this.aD = new NearbyPresenter(g(), new com.roblox.client.friends.b.a.c(new com.roblox.client.friends.b.a.b("6F3Bde9f63bE3008adfbe7Cf8", "b71c677EE7A28032f0836D04ff6D09bb2cC7882e8Feaf3aFBa", strBt, p(), new com.roblox.client.friends.b.a.a(f.b())), bVar, new com.roblox.client.friends.b.a.a(f.b()), com.roblox.client.b.bq()), (g) w.a(this, new g.a(new com.roblox.client.friends.c.e(new com.roblox.client.friends.c.a(i.a().d()), bVar), com.roblox.client.b.bj(), bVar, new com.roblox.client.friends.c.d(), new v.b())).a(g.class), com.roblox.client.b.bl(), com.roblox.client.b.bm(), (com.roblox.client.friends.nearby.b.f) w.a(this, new f.a(new com.roblox.client.friends.nearby.b.e(new com.roblox.client.friends.nearby.b.c(i.a().d()), new com.roblox.client.friends.nearby.b.b(i.a().i()), bVar), com.roblox.client.b.bk(), bVar, new v.b(), new com.roblox.client.friends.nearby.b.g())).a(com.roblox.client.friends.nearby.b.f.class), this, new v.b(), new com.roblox.client.friends.nearby.c());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void a(Context context) {
        super.a(context);
        if (context instanceof a) {
            this.as = (a) context;
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener");
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void h() {
        super.h();
        k.c("FragmentNearbyUsers", "onStart().");
        as();
        if (this.aw.getVisibility() == 0) {
            this.aA.a();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void G() {
        super.G();
        this.aA.b();
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void i() {
        super.i();
        k.c("FragmentNearbyUsers", "onStop().");
        ar();
        this.ax.removeCallbacks(this.aB);
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void f() {
        super.f();
        this.as = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void d(boolean z) {
        super.d(z);
        if (z) {
            ar();
        } else {
            as();
        }
        this.aD.a(z);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == o.f.nearby_retry_button) {
            this.aD.a();
        }
    }

    private void m(boolean z) {
        if (z && this.aw.getVisibility() == 0) {
            this.aw.setVisibility(8);
            this.aA.b();
        } else {
            if (z || this.aw.getVisibility() != 8) {
                return;
            }
            this.aw.setVisibility(0);
            this.aA.a();
        }
    }

    private void a(boolean z, int i) {
        if (z && this.av.getVisibility() == 0) {
            this.av.setVisibility(8);
        } else {
            if (z || this.av.getVisibility() != 8) {
                return;
            }
            if (i != -1) {
                this.ay.setText(i);
            }
            this.av.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(com.roblox.client.friends.nearby.b.a.a aVar) {
        this.aD.a(aVar);
    }

    private void b(long j) {
        d dVarA = d.a(j);
        dVarA.a(u(), dVarA.m());
    }

    private void ar() {
        if (this.aG != null && r() != null) {
            r().getContentResolver().unregisterContentObserver(this.aG);
        }
        if (!com.roblox.client.b.br() || this.aE == -1 || r() == null) {
            return;
        }
        AudioManager audioManager = (AudioManager) r().getSystemService("audio");
        if (audioManager != null) {
            k.c("FragmentNearbyUsers", "Volume reset.");
            audioManager.setStreamVolume(3, this.aE, 0);
        } else {
            k.c("FragmentNearbyUsers", "AudioManager is null.");
        }
    }

    private void as() {
        if (r() == null) {
            return;
        }
        this.aG = new C0143b(r(), new Handler());
        r().getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this.aG);
        AudioManager audioManager = (AudioManager) r().getSystemService("audio");
        if (audioManager != null) {
            this.aE = audioManager.getStreamVolume(3);
            int streamMaxVolume = audioManager.getStreamMaxVolume(3);
            this.aF = Math.round((com.roblox.client.b.bp() / 100.0f) * streamMaxVolume);
            k.c("FragmentNearbyUsers", "Current volume: " + this.aE);
            k.c("FragmentNearbyUsers", "Volume max level: " + streamMaxVolume);
            k.c("FragmentNearbyUsers", "Desired volume: " + this.aF);
            if (this.aE >= this.aF) {
                k.b("FragmentNearbyUsers", "No need to increase the volume.");
                this.az.setVisibility(8);
                return;
            }
            if (com.roblox.client.b.br()) {
                k.c("FragmentNearbyUsers", "Try to increase the volume.");
                audioManager.setStreamVolume(3, this.aF, 0);
            }
            if (this.aE < this.aF) {
                k.d("FragmentNearbyUsers", "Volume lower than needed.");
                at();
                return;
            }
            return;
        }
        k.d("FragmentNearbyUsers", "AudioManager is null.");
    }

    private void at() {
        if (r() != null) {
            r().setVolumeControlStream(3);
        }
        this.az.setVisibility(0);
    }

    @Override // com.roblox.client.friends.nearby.a.d.a
    public void a(long j) {
        this.as.a(j);
    }

    @Override // com.roblox.client.friends.nearby.a.b
    public void a_(int i, Object... objArr) {
        String strA;
        this.ax.removeCallbacks(this.aB);
        this.ax.postDelayed(this.aB, 5000L);
        try {
            strA = String.format(a(i), objArr);
        } catch (IllegalStateException unused) {
            strA = a(i);
        }
        this.ax.setText(strA);
        this.ax.setVisibility(0);
    }

    @Override // com.roblox.client.friends.nearby.a.b
    public void a_(int i) {
        m(true);
        a(false, i);
    }

    @Override // com.roblox.client.friends.nearby.a.b
    public void h_() {
        a(true, -1);
        m(false);
    }

    @Override // com.roblox.client.friends.nearby.a.b
    public void a(com.roblox.client.friends.nearby.b.a.a aVar) {
        if (aVar != null) {
            m(true);
            a(true, -1);
            this.aC.b(aVar);
        }
    }

    @Override // com.roblox.client.friends.nearby.a.b
    public void b(com.roblox.client.friends.nearby.b.a.a aVar) {
        if (aVar != null) {
            this.aC.a(aVar);
        }
    }

    @Override // com.roblox.client.friends.nearby.a.b
    public void c(com.roblox.client.friends.nearby.b.a.a aVar) {
        if (aVar != null) {
            this.aC.c(aVar);
        }
    }

    @Override // com.roblox.client.friends.nearby.a.b
    public void d(com.roblox.client.friends.nearby.b.a.a aVar) {
        b(aVar.c());
    }

    @Override // com.roblox.client.friends.nearby.a.b
    public void i_() {
        Vibrator vibrator;
        androidx.fragment.app.c cVarR = r();
        if (cVarR == null || (vibrator = (Vibrator) cVarR.getSystemService("vibrator")) == null) {
            return;
        }
        vibrator.vibrate(300L);
    }

    /* JADX INFO: renamed from: com.roblox.client.friends.nearby.a.b$b, reason: collision with other inner class name */
    private class C0143b extends ContentObserver {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private AudioManager f6123b;

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return false;
        }

        C0143b(Context context, Handler handler) {
            super(handler);
            this.f6123b = (AudioManager) context.getSystemService("audio");
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            int streamVolume = this.f6123b.getStreamVolume(3);
            k.c("FragmentNearbyUsers", "Volume now " + streamVolume);
            if (streamVolume >= b.this.aF) {
                b.this.az.setVisibility(8);
            } else {
                b.this.az.setVisibility(0);
            }
        }
    }
}
