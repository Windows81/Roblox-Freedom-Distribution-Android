package com.google.gson.internal.bind;

import com.google.gson.t;
import com.google.gson.v;
import com.google.gson.w;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class b extends v<Date> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final w f5422a = new w() { // from class: com.google.gson.internal.bind.DateTypeAdapter$1
        @Override // com.google.gson.w
        public <T> v<T> a(com.google.gson.f fVar, com.google.gson.b.a<T> aVar) {
            if (aVar.a() == Date.class) {
                return new b();
            }
            return null;
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<DateFormat> f5423b;

    public b() {
        ArrayList arrayList = new ArrayList();
        this.f5423b = arrayList;
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            this.f5423b.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (com.google.gson.internal.d.b()) {
            this.f5423b.add(com.google.gson.internal.i.a(2, 2));
        }
    }

    @Override // com.google.gson.v
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Date b(com.google.gson.c.a aVar) throws IOException {
        if (aVar.f() == com.google.gson.c.b.NULL) {
            aVar.j();
            return null;
        }
        return a(aVar.h());
    }

    private synchronized Date a(String str) {
        Iterator<DateFormat> it = this.f5423b.iterator();
        while (it.hasNext()) {
            try {
                return it.next().parse(str);
            } catch (ParseException unused) {
            }
        }
        try {
            return com.google.gson.internal.bind.a.a.a(str, new ParsePosition(0));
        } catch (ParseException e2) {
            throw new t(str, e2);
        }
    }

    @Override // com.google.gson.v
    public synchronized void a(com.google.gson.c.c cVar, Date date) throws IOException {
        if (date == null) {
            cVar.f();
        } else {
            cVar.b(this.f5423b.get(0).format(date));
        }
    }
}
