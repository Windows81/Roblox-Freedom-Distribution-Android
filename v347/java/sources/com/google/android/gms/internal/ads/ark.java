package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class ark {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Collection<are<?>> f4390a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Collection<are<String>> f4391b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Collection<are<String>> f4392c = new ArrayList();

    public final List<String> a() {
        ArrayList arrayList = new ArrayList();
        Iterator<are<String>> it = this.f4391b.iterator();
        while (it.hasNext()) {
            String str = (String) aoo.f().a(it.next());
            if (str != null) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public final void a(SharedPreferences.Editor editor, int i, JSONObject jSONObject) {
        for (are<?> areVar : this.f4390a) {
            if (areVar.c() == 1) {
                areVar.a(editor, areVar.a(jSONObject));
            }
        }
    }

    public final void a(are areVar) {
        this.f4390a.add(areVar);
    }

    public final List<String> b() {
        List<String> listA = a();
        Iterator<are<String>> it = this.f4392c.iterator();
        while (it.hasNext()) {
            String str = (String) aoo.f().a(it.next());
            if (str != null) {
                listA.add(str);
            }
        }
        return listA;
    }

    public final void b(are<String> areVar) {
        this.f4391b.add(areVar);
    }

    public final void c(are<String> areVar) {
        this.f4392c.add(areVar);
    }
}
