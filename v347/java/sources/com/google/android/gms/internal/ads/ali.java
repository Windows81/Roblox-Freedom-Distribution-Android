package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class ali {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4171b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final alh f4173d = new alm();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f4170a = 6;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f4172c = 0;

    public ali(int i) {
        this.f4171b = i;
    }

    private final String a(String str) {
        String[] strArrSplit = str.split("\n");
        if (strArrSplit.length == 0) {
            return "";
        }
        alk alkVar = new alk();
        PriorityQueue priorityQueue = new PriorityQueue(this.f4171b, new alj(this));
        for (String str2 : strArrSplit) {
            String[] strArrA = all.a(str2, false);
            if (strArrA.length != 0) {
                alo.a(strArrA, this.f4171b, this.f4170a, priorityQueue);
            }
        }
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            try {
                alkVar.a(this.f4173d.a(((alp) it.next()).f4178b));
            } catch (IOException e) {
                jd.b("Error while writing hash to byteStream", e);
            }
        }
        return alkVar.toString();
    }

    public final String a(ArrayList<String> arrayList) {
        StringBuilder sb = new StringBuilder();
        ArrayList<String> arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            String str = arrayList2.get(i);
            i++;
            sb.append(str.toLowerCase(Locale.US));
            sb.append('\n');
        }
        return a(sb.toString());
    }
}
