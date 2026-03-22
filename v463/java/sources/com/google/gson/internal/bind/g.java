package com.google.gson.internal.bind;

import com.google.gson.t;
import com.google.gson.v;
import com.google.gson.w;
import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class g extends v<Time> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final w f5438a = new w() { // from class: com.google.gson.internal.bind.TimeTypeAdapter$1
        @Override // com.google.gson.w
        public <T> v<T> a(com.google.gson.f fVar, com.google.gson.b.a<T> aVar) {
            if (aVar.a() == Time.class) {
                return new g();
            }
            return null;
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final DateFormat f5439b = new SimpleDateFormat("hh:mm:ss a");

    @Override // com.google.gson.v
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public synchronized Time b(com.google.gson.c.a aVar) throws IOException {
        if (aVar.f() == com.google.gson.c.b.NULL) {
            aVar.j();
            return null;
        }
        try {
            return new Time(this.f5439b.parse(aVar.h()).getTime());
        } catch (ParseException e2) {
            throw new t(e2);
        }
    }

    @Override // com.google.gson.v
    public synchronized void a(com.google.gson.c.c cVar, Time time) throws IOException {
        cVar.b(time == null ? null : this.f5439b.format((Date) time));
    }
}
