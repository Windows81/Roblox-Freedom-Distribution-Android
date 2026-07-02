package com.google.gson;

import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
final class DefaultDateTypeAdapter implements j<Date>, s<Date> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DateFormat f6157a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final DateFormat f6158b;

    DefaultDateTypeAdapter() {
        this(DateFormat.getDateTimeInstance(2, 2, Locale.US), DateFormat.getDateTimeInstance(2, 2));
    }

    DefaultDateTypeAdapter(String str) {
        this(new SimpleDateFormat(str, Locale.US), new SimpleDateFormat(str));
    }

    public DefaultDateTypeAdapter(int i, int i2) {
        this(DateFormat.getDateTimeInstance(i, i2, Locale.US), DateFormat.getDateTimeInstance(i, i2));
    }

    DefaultDateTypeAdapter(DateFormat dateFormat, DateFormat dateFormat2) {
        this.f6157a = dateFormat;
        this.f6158b = dateFormat2;
    }

    @Override // com.google.gson.s
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public k serialize(Date date, Type type, r rVar) {
        q qVar;
        synchronized (this.f6158b) {
            qVar = new q(this.f6157a.format(date));
        }
        return qVar;
    }

    @Override // com.google.gson.j
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Date deserialize(k kVar, Type type, i iVar) throws o {
        if (!(kVar instanceof q)) {
            throw new o("The date should be a string value");
        }
        Date dateA = a(kVar);
        if (type != Date.class) {
            if (type == Timestamp.class) {
                return new Timestamp(dateA.getTime());
            }
            if (type == java.sql.Date.class) {
                return new java.sql.Date(dateA.getTime());
            }
            throw new IllegalArgumentException(getClass() + " cannot deserialize to " + type);
        }
        return dateA;
    }

    private Date a(k kVar) {
        Date dateA;
        synchronized (this.f6158b) {
            try {
                dateA = this.f6158b.parse(kVar.c());
            } catch (ParseException e) {
                try {
                    dateA = this.f6157a.parse(kVar.c());
                } catch (ParseException e2) {
                    try {
                        dateA = com.google.gson.internal.bind.a.a.a(kVar.c(), new ParsePosition(0));
                    } catch (ParseException e3) {
                        throw new t(kVar.c(), e3);
                    }
                }
            }
        }
        return dateA;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(DefaultDateTypeAdapter.class.getSimpleName());
        sb.append('(').append(this.f6158b.getClass().getSimpleName()).append(')');
        return sb.toString();
    }
}
