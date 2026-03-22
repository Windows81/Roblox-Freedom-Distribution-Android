package com.roblox.client.r;

import com.roblox.client.r.f;
import com.roblox.platform.http.returntypes.thumbnails.ThumbnailData;
import com.roblox.platform.http.returntypes.thumbnails.ThumbnailResponseBody;
import com.roblox.platform.i;
import e.l;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c extends f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ArrayList<Long> f6911d;

    @Override // com.roblox.client.r.f
    protected void a(f.a aVar) {
    }

    public c(long j) {
        ArrayList<Long> arrayList = new ArrayList<>(1);
        this.f6911d = arrayList;
        arrayList.add(Long.valueOf(j));
    }

    @Override // com.birbit.android.jobqueue.g
    public void g() throws Throwable {
        if (this.f6911d.isEmpty()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f6911d.get(0));
        for (int i = 1; i < this.f6911d.size(); i++) {
            sb.append(",");
            sb.append(this.f6911d.get(i));
        }
        l<ThumbnailResponseBody> lVarA = i.a().i().a(sb.toString(), "150x150", "Png", false).a();
        ArrayList arrayList = new ArrayList();
        if (lVarA.d()) {
            for (ThumbnailData thumbnailData : lVarA.e().data) {
                a(thumbnailData.targetId, thumbnailData.imageUrl);
                arrayList.add(Long.valueOf(thumbnailData.targetId));
            }
        }
        org.greenrobot.eventbus.c.a().c(new com.roblox.client.l.b(arrayList));
    }

    private void a(long j, String str) {
        com.roblox.client.e.a.a aVarA;
        if (str == null || str.isEmpty() || (aVarA = com.roblox.client.e.a.b.a().a(j)) == null) {
            return;
        }
        aVarA.c(str);
    }
}
