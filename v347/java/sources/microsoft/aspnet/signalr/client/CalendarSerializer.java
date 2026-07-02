package microsoft.aspnet.signalr.client;

import com.google.gson.i;
import com.google.gson.j;
import com.google.gson.k;
import com.google.gson.o;
import com.google.gson.r;
import com.google.gson.s;
import java.lang.reflect.Type;
import java.util.Calendar;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class CalendarSerializer implements j<Calendar>, s<Calendar> {
    private static final DateSerializer mInternalSerializer = new DateSerializer();

    @Override // com.google.gson.j
    public Calendar deserialize(k kVar, Type type, i iVar) throws o {
        Date dateDeserialize = mInternalSerializer.deserialize(kVar, (Type) Date.class, iVar);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(dateDeserialize);
        return calendar;
    }

    @Override // com.google.gson.s
    public k serialize(Calendar calendar, Type type, r rVar) {
        return mInternalSerializer.serialize(calendar.getTime(), (Type) Date.class, rVar);
    }
}
