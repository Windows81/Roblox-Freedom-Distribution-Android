package com.roblox.client.friends.nearby.a;

import androidx.recyclerview.widget.RecyclerView;
import com.roblox.client.o;
import de.hdodenhof.circleimageview.CircleImageView;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c extends androidx.recyclerview.widget.c {
    @Override // androidx.recyclerview.widget.k, androidx.recyclerview.widget.RecyclerView.f
    public boolean h(RecyclerView.w wVar) {
        return true;
    }

    private RecyclerView.f.c a(com.roblox.client.friends.nearby.a.b.b bVar, a aVar) {
        aVar.f6129e = ((com.roblox.client.h.a) bVar.q).h().e();
        return aVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public RecyclerView.f.c a(RecyclerView.t tVar, RecyclerView.w wVar, int i, List<Object> list) {
        return a((com.roblox.client.friends.nearby.a.b.b) wVar, (a) super.a(tVar, wVar, i, list));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public RecyclerView.f.c a(RecyclerView.t tVar, RecyclerView.w wVar) {
        return a((com.roblox.client.friends.nearby.a.b.b) wVar, (a) super.a(tVar, wVar));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public RecyclerView.f.c j() {
        return new a();
    }

    private class a extends RecyclerView.f.c {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f6129e;

        private a() {
        }
    }

    @Override // androidx.recyclerview.widget.k, androidx.recyclerview.widget.RecyclerView.f
    public boolean a(RecyclerView.w wVar, RecyclerView.w wVar2, RecyclerView.f.c cVar, RecyclerView.f.c cVar2) {
        com.roblox.client.friends.nearby.a.b.b bVar = (com.roblox.client.friends.nearby.a.b.b) wVar2;
        int i = ((a) cVar2).f6129e;
        final CircleImageView circleImageView = (CircleImageView) bVar.q.d().findViewById(o.f.nearby_user_back_img_view);
        CircleImageView circleImageView2 = (CircleImageView) bVar.q.d().findViewById(o.f.nearby_user_img_view);
        if (i != 3) {
            return true;
        }
        circleImageView.clearAnimation();
        circleImageView2.clearAnimation();
        circleImageView.animate().withStartAction(new Runnable() { // from class: com.roblox.client.friends.nearby.a.c.2
            @Override // java.lang.Runnable
            public void run() {
                circleImageView.setImageResource(o.e.nearby_friends_confetti);
            }
        }).alpha(0.0f).scaleY(1.2f).scaleX(1.2f).setDuration(800L).withEndAction(new Runnable() { // from class: com.roblox.client.friends.nearby.a.c.1
            @Override // java.lang.Runnable
            public void run() {
                circleImageView.setImageResource(o.e.empty_drawable);
                circleImageView.setAlpha(1.0f);
                circleImageView.setScaleX(1.0f);
                circleImageView.setScaleY(1.0f);
            }
        });
        return true;
    }
}
