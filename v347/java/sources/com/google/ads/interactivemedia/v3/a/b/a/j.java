package com.google.ads.interactivemedia.v3.a.b.a;

import com.google.ads.interactivemedia.v3.a.t;
import com.google.ads.interactivemedia.v3.a.w;
import com.google.ads.interactivemedia.v3.a.x;
import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/* JADX INFO: loaded from: classes.dex */
public final class j extends w<Date> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final x f2632a = new x() { // from class: com.google.ads.interactivemedia.v3.a.b.a.j.1
        @Override // com.google.ads.interactivemedia.v3.a.x
        public <T> w<T> a(com.google.ads.interactivemedia.v3.a.f fVar, com.google.ads.interactivemedia.v3.a.c.a<T> aVar) {
            if (aVar.a() == Date.class) {
                return new j();
            }
            return null;
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final DateFormat f2633b = new SimpleDateFormat("MMM d, yyyy");

    @Override // com.google.ads.interactivemedia.v3.a.w
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public synchronized Date read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
        Date date;
        if (aVar.f() == com.google.ads.interactivemedia.v3.a.d.b.NULL) {
            aVar.j();
            date = null;
        } else {
            try {
                date = new Date(this.f2633b.parse(aVar.h()).getTime());
            } catch (ParseException e) {
                throw new t(e);
            }
        }
        return date;
    }

    @Override // com.google.ads.interactivemedia.v3.a.w
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public synchronized void write(com.google.ads.interactivemedia.v3.a.d.c cVar, Date date) throws IOException {
        cVar.b(date == null ? null : this.f2633b.format((java.util.Date) date));
    }
}
