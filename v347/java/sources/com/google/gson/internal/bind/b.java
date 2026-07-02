package com.google.gson.internal.bind;

import com.google.gson.t;
import com.google.gson.v;
import com.google.gson.w;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class b extends v<Date> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final w f6257a = new w() { // from class: com.google.gson.internal.bind.DateTypeAdapter$1
        @Override // com.google.gson.w
        public <T> v<T> a(com.google.gson.e eVar, com.google.gson.b.a<T> aVar) {
            if (aVar.a() == Date.class) {
                return new b();
            }
            return null;
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final DateFormat f6258b = DateFormat.getDateTimeInstance(2, 2, Locale.US);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final DateFormat f6259c = DateFormat.getDateTimeInstance(2, 2);

    @Override // com.google.gson.v
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Date b(com.google.gson.c.a aVar) throws IOException {
        if (aVar.f() != com.google.gson.c.b.NULL) {
            return a(aVar.h());
        }
        aVar.j();
        return null;
    }

    private synchronized Date a(String str) {
        Date dateA;
        try {
            dateA = this.f6259c.parse(str);
        } catch (ParseException e) {
            try {
                dateA = this.f6258b.parse(str);
            } catch (ParseException e2) {
                try {
                    dateA = com.google.gson.internal.bind.a.a.a(str, new ParsePosition(0));
                } catch (ParseException e3) {
                    throw new t(str, e3);
                }
            }
        }
        return dateA;
    }

    @Override // com.google.gson.v
    public synchronized void a(com.google.gson.c.c cVar, Date date) throws IOException {
        if (date == null) {
            cVar.f();
        } else {
            cVar.b(this.f6258b.format(date));
        }
    }
}
