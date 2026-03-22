package com.google.gson;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class a extends v<Date> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class<? extends Date> f5306a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<DateFormat> f5307b = new ArrayList();

    a(Class<? extends Date> cls, String str) {
        this.f5306a = a(cls);
        this.f5307b.add(new SimpleDateFormat(str, Locale.US));
        if (Locale.getDefault().equals(Locale.US)) {
            return;
        }
        this.f5307b.add(new SimpleDateFormat(str));
    }

    public a(Class<? extends Date> cls, int i, int i2) {
        this.f5306a = a(cls);
        this.f5307b.add(DateFormat.getDateTimeInstance(i, i2, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            this.f5307b.add(DateFormat.getDateTimeInstance(i, i2));
        }
        if (com.google.gson.internal.d.b()) {
            this.f5307b.add(com.google.gson.internal.i.a(i, i2));
        }
    }

    private static Class<? extends Date> a(Class<? extends Date> cls) {
        if (cls == Date.class || cls == java.sql.Date.class || cls == Timestamp.class) {
            return cls;
        }
        throw new IllegalArgumentException("Date type must be one of " + Date.class + ", " + Timestamp.class + ", or " + java.sql.Date.class + " but was " + cls);
    }

    @Override // com.google.gson.v
    public void a(com.google.gson.c.c cVar, Date date) throws IOException {
        if (date == null) {
            cVar.f();
            return;
        }
        synchronized (this.f5307b) {
            cVar.b(this.f5307b.get(0).format(date));
        }
    }

    @Override // com.google.gson.v
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Date b(com.google.gson.c.a aVar) throws IOException {
        if (aVar.f() == com.google.gson.c.b.NULL) {
            aVar.j();
            return null;
        }
        Date dateA = a(aVar.h());
        Class<? extends Date> cls = this.f5306a;
        if (cls == Date.class) {
            return dateA;
        }
        if (cls == Timestamp.class) {
            return new Timestamp(dateA.getTime());
        }
        if (cls == java.sql.Date.class) {
            return new java.sql.Date(dateA.getTime());
        }
        throw new AssertionError();
    }

    private Date a(String str) {
        synchronized (this.f5307b) {
            Iterator<DateFormat> it = this.f5307b.iterator();
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
    }

    public String toString() {
        DateFormat dateFormat = this.f5307b.get(0);
        if (dateFormat instanceof SimpleDateFormat) {
            return "DefaultDateTypeAdapter(" + ((SimpleDateFormat) dateFormat).toPattern() + ')';
        }
        return "DefaultDateTypeAdapter(" + dateFormat.getClass().getSimpleName() + ')';
    }
}
