package com.google.ads.interactivemedia.v3.a;

import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
final class a implements k<Date>, s<Date> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DateFormat f2593a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final DateFormat f2594b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final DateFormat f2595c;

    a() {
        this(DateFormat.getDateTimeInstance(2, 2, Locale.US), DateFormat.getDateTimeInstance(2, 2));
    }

    a(String str) {
        this(new SimpleDateFormat(str, Locale.US), new SimpleDateFormat(str));
    }

    public a(int i, int i2) {
        this(DateFormat.getDateTimeInstance(i, i2, Locale.US), DateFormat.getDateTimeInstance(i, i2));
    }

    a(DateFormat dateFormat, DateFormat dateFormat2) {
        this.f2593a = dateFormat;
        this.f2594b = dateFormat2;
        this.f2595c = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        this.f2595c.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    @Override // com.google.ads.interactivemedia.v3.a.s
    public l a(Date date, Type type, r rVar) {
        q qVar;
        synchronized (this.f2594b) {
            qVar = new q(this.f2593a.format(date));
        }
        return qVar;
    }

    @Override // com.google.ads.interactivemedia.v3.a.k
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Date b(l lVar, Type type, j jVar) throws p {
        if (!(lVar instanceof q)) {
            throw new p("The date should be a string value");
        }
        Date dateA = a(lVar);
        if (type != Date.class) {
            if (type == Timestamp.class) {
                return new Timestamp(dateA.getTime());
            }
            if (type == java.sql.Date.class) {
                return new java.sql.Date(dateA.getTime());
            }
            String strValueOf = String.valueOf(getClass());
            String strValueOf2 = String.valueOf(type);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 23 + String.valueOf(strValueOf2).length()).append(strValueOf).append(" cannot deserialize to ").append(strValueOf2).toString());
        }
        return dateA;
    }

    private Date a(l lVar) {
        Date date;
        synchronized (this.f2594b) {
            try {
                date = this.f2594b.parse(lVar.b());
            } catch (ParseException e) {
                try {
                    date = this.f2593a.parse(lVar.b());
                } catch (ParseException e2) {
                    try {
                        date = this.f2595c.parse(lVar.b());
                    } catch (ParseException e3) {
                        throw new t(lVar.b(), e3);
                    }
                }
            }
        }
        return date;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(a.class.getSimpleName());
        sb.append('(').append(this.f2594b.getClass().getSimpleName()).append(')');
        return sb.toString();
    }
}
