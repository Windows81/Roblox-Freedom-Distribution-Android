package com.google.ads.interactivemedia.v3.a.b.a;

import com.google.ads.interactivemedia.v3.a.t;
import com.google.ads.interactivemedia.v3.a.w;
import com.google.ads.interactivemedia.v3.a.x;
import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public final class k extends w<Time> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final x f2634a = new x() { // from class: com.google.ads.interactivemedia.v3.a.b.a.k.1
        @Override // com.google.ads.interactivemedia.v3.a.x
        public <T> w<T> a(com.google.ads.interactivemedia.v3.a.f fVar, com.google.ads.interactivemedia.v3.a.c.a<T> aVar) {
            if (aVar.a() == Time.class) {
                return new k();
            }
            return null;
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final DateFormat f2635b = new SimpleDateFormat("hh:mm:ss a");

    @Override // com.google.ads.interactivemedia.v3.a.w
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public synchronized Time read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
        Time time;
        if (aVar.f() == com.google.ads.interactivemedia.v3.a.d.b.NULL) {
            aVar.j();
            time = null;
        } else {
            try {
                time = new Time(this.f2635b.parse(aVar.h()).getTime());
            } catch (ParseException e) {
                throw new t(e);
            }
        }
        return time;
    }

    @Override // com.google.ads.interactivemedia.v3.a.w
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public synchronized void write(com.google.ads.interactivemedia.v3.a.d.c cVar, Time time) throws IOException {
        cVar.b(time == null ? null : this.f2635b.format((Date) time));
    }
}
