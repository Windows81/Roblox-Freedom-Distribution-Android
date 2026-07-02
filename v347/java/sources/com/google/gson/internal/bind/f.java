package com.google.gson.internal.bind;

import com.google.gson.t;
import com.google.gson.v;
import com.google.gson.w;
import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/* JADX INFO: loaded from: classes.dex */
public final class f extends v<Date> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final w f6270a = new w() { // from class: com.google.gson.internal.bind.SqlDateTypeAdapter$1
        @Override // com.google.gson.w
        public <T> v<T> a(com.google.gson.e eVar, com.google.gson.b.a<T> aVar) {
            if (aVar.a() == Date.class) {
                return new f();
            }
            return null;
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final DateFormat f6271b = new SimpleDateFormat("MMM d, yyyy");

    @Override // com.google.gson.v
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public synchronized Date b(com.google.gson.c.a aVar) throws IOException {
        Date date;
        if (aVar.f() == com.google.gson.c.b.NULL) {
            aVar.j();
            date = null;
        } else {
            try {
                date = new Date(this.f6271b.parse(aVar.h()).getTime());
            } catch (ParseException e) {
                throw new t(e);
            }
        }
        return date;
    }

    @Override // com.google.gson.v
    public synchronized void a(com.google.gson.c.c cVar, Date date) throws IOException {
        cVar.b(date == null ? null : this.f6271b.format((java.util.Date) date));
    }
}
