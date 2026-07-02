package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.xb;
import java.security.GeneralSecurityException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public final class tv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Logger f5586a = Logger.getLogger(tv.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ConcurrentMap<String, tn> f5587b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ConcurrentMap<String, Boolean> f5588c = new ConcurrentHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ConcurrentMap<String, th> f5589d = new ConcurrentHashMap();

    public static <P> ack a(String str, ack ackVar) throws GeneralSecurityException {
        tn tnVarB = b(str);
        if (f5588c.get(str).booleanValue()) {
            return tnVarB.b(ackVar);
        }
        String strValueOf = String.valueOf(str);
        throw new GeneralSecurityException(strValueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(strValueOf) : new String("newKey-operation not permitted for key type "));
    }

    public static <P> th<P> a(String str) throws GeneralSecurityException {
        if (str == null) {
            throw new IllegalArgumentException("catalogueName must be non-null.");
        }
        th<P> thVar = f5589d.get(str.toLowerCase());
        if (thVar != null) {
            return thVar;
        }
        String strConcat = String.format("no catalogue found for %s. ", str);
        if (str.toLowerCase().startsWith("tinkaead")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call AeadConfig.init().");
        }
        if (str.toLowerCase().startsWith("tinkdeterministicaead")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call DeterministicAeadConfig.init().");
        } else if (str.toLowerCase().startsWith("tinkstreamingaead")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call StreamingAeadConfig.init().");
        } else if (str.toLowerCase().startsWith("tinkhybriddecrypt") || str.toLowerCase().startsWith("tinkhybridencrypt")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call HybridConfig.init().");
        } else if (str.toLowerCase().startsWith("tinkmac")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call MacConfig.init().");
        } else if (str.toLowerCase().startsWith("tinkpublickeysign") || str.toLowerCase().startsWith("tinkpublickeyverify")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call SignatureConfig.init().");
        } else if (str.toLowerCase().startsWith("tink")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call TinkConfig.init().");
        }
        throw new GeneralSecurityException(strConcat);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <P> tt<P> a(to toVar, tn<P> tnVar) throws GeneralSecurityException {
        tw.b(toVar.a());
        tt<P> ttVar = (tt<P>) new tt();
        for (xb.b bVar : toVar.a().b()) {
            if (bVar.c() == wv.ENABLED) {
                tu tuVarA = ttVar.a(a(bVar.b().a(), bVar.b().b()), bVar);
                if (bVar.d() == toVar.a().a()) {
                    ttVar.a(tuVarA);
                }
            }
        }
        return ttVar;
    }

    public static <P> ws a(wx wxVar) throws GeneralSecurityException {
        tn tnVarB = b(wxVar.a());
        if (f5588c.get(wxVar.a()).booleanValue()) {
            return tnVarB.c(wxVar.b());
        }
        String strValueOf = String.valueOf(wxVar.a());
        throw new GeneralSecurityException(strValueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(strValueOf) : new String("newKey-operation not permitted for key type "));
    }

    private static <P> P a(String str, zv zvVar) throws GeneralSecurityException {
        return (P) b(str).a(zvVar);
    }

    public static <P> P a(String str, byte[] bArr) throws GeneralSecurityException {
        return (P) a(str, zv.a(bArr));
    }

    public static synchronized <P> void a(String str, th<P> thVar) throws GeneralSecurityException {
        if (f5589d.containsKey(str.toLowerCase())) {
            if (!thVar.getClass().equals(f5589d.get(str.toLowerCase()).getClass())) {
                Logger logger = f5586a;
                Level level = Level.WARNING;
                String strValueOf = String.valueOf(str);
                logger.logp(level, "com.google.crypto.tink.Registry", "addCatalogue", strValueOf.length() != 0 ? "Attempted overwrite of a catalogueName catalogue for name ".concat(strValueOf) : new String("Attempted overwrite of a catalogueName catalogue for name "));
                throw new GeneralSecurityException(new StringBuilder(String.valueOf(str).length() + 47).append("catalogue for name ").append(str).append(" has been already registered").toString());
            }
        }
        f5589d.put(str.toLowerCase(), thVar);
    }

    public static <P> void a(String str, tn<P> tnVar) throws GeneralSecurityException {
        a(str, tnVar, true);
    }

    public static synchronized <P> void a(String str, tn<P> tnVar, boolean z) throws GeneralSecurityException {
        if (tnVar == null) {
            throw new IllegalArgumentException("key manager must be non-null.");
        }
        if (f5587b.containsKey(str)) {
            tn tnVarB = b(str);
            boolean zBooleanValue = f5588c.get(str).booleanValue();
            if (!tnVar.getClass().equals(tnVarB.getClass()) || (!zBooleanValue && z)) {
                Logger logger = f5586a;
                Level level = Level.WARNING;
                String strValueOf = String.valueOf(str);
                logger.logp(level, "com.google.crypto.tink.Registry", "registerKeyManager", strValueOf.length() != 0 ? "Attempted overwrite of a registered key manager for key type ".concat(strValueOf) : new String("Attempted overwrite of a registered key manager for key type "));
                throw new GeneralSecurityException(String.format("typeUrl (%s) is already registered with %s, cannot be re-registered with %s", str, tnVarB.getClass().getName(), tnVar.getClass().getName()));
            }
        }
        f5587b.put(str, tnVar);
        f5588c.put(str, Boolean.valueOf(z));
    }

    public static <P> ack b(wx wxVar) throws GeneralSecurityException {
        tn tnVarB = b(wxVar.a());
        if (f5588c.get(wxVar.a()).booleanValue()) {
            return tnVarB.b(wxVar.b());
        }
        String strValueOf = String.valueOf(wxVar.a());
        throw new GeneralSecurityException(strValueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(strValueOf) : new String("newKey-operation not permitted for key type "));
    }

    private static <P> tn<P> b(String str) throws GeneralSecurityException {
        tn<P> tnVar = f5587b.get(str);
        if (tnVar == null) {
            throw new GeneralSecurityException(new StringBuilder(String.valueOf(str).length() + 78).append("No key manager found for key type: ").append(str).append(".  Check the configuration of the registry.").toString());
        }
        return tnVar;
    }

    public static <P> P b(String str, ack ackVar) throws GeneralSecurityException {
        return (P) b(str).a(ackVar);
    }
}
