package com.google.ads.interactivemedia.v3.a.b.a;

import com.google.ads.interactivemedia.v3.a.t;
import com.google.ads.interactivemedia.v3.a.w;
import com.google.ads.interactivemedia.v3.a.x;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public final class c extends w<Date> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final x f2602a = new x() { // from class: com.google.ads.interactivemedia.v3.a.b.a.c.1
        @Override // com.google.ads.interactivemedia.v3.a.x
        public <T> w<T> a(com.google.ads.interactivemedia.v3.a.f fVar, com.google.ads.interactivemedia.v3.a.c.a<T> aVar) {
            if (aVar.a() == Date.class) {
                return new c();
            }
            return null;
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final DateFormat f2603b = DateFormat.getDateTimeInstance(2, 2, Locale.US);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final DateFormat f2604c = DateFormat.getDateTimeInstance(2, 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final DateFormat f2605d = a();

    private static DateFormat a() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat;
    }

    @Override // com.google.ads.interactivemedia.v3.a.w
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Date read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
        if (aVar.f() != com.google.ads.interactivemedia.v3.a.d.b.NULL) {
            return a(aVar.h());
        }
        aVar.j();
        return null;
    }

    private synchronized Date a(String str) {
        Date date;
        try {
            date = this.f2604c.parse(str);
        } catch (ParseException e) {
            try {
                date = this.f2603b.parse(str);
            } catch (ParseException e2) {
                try {
                    date = this.f2605d.parse(str);
                } catch (ParseException e3) {
                    throw new t(str, e3);
                }
            }
        }
        return date;
    }

    @Override // com.google.ads.interactivemedia.v3.a.w
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public synchronized void write(com.google.ads.interactivemedia.v3.a.d.c cVar, Date date) throws IOException {
        if (date == null) {
            cVar.f();
        } else {
            cVar.b(this.f2603b.format(date));
        }
    }
}
