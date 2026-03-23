.class public final Lc/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Lc/h;

.field public static final B:Lc/h;

.field public static final C:Lc/h;

.field public static final D:Lc/h;

.field public static final E:Lc/h;

.field public static final F:Lc/h;

.field public static final G:Lc/h;

.field public static final H:Lc/h;

.field public static final I:Lc/h;

.field public static final J:Lc/h;

.field public static final K:Lc/h;

.field public static final L:Lc/h;

.field public static final M:Lc/h;

.field public static final N:Lc/h;

.field public static final O:Lc/h;

.field public static final P:Lc/h;

.field public static final Q:Lc/h;

.field public static final R:Lc/h;

.field public static final S:Lc/h;

.field public static final T:Lc/h;

.field public static final U:Lc/h;

.field public static final V:Lc/h;

.field public static final W:Lc/h;

.field public static final X:Lc/h;

.field public static final Y:Lc/h;

.field public static final Z:Lc/h;

.field public static final a:Lc/h;

.field public static final aA:Lc/h;

.field public static final aB:Lc/h;

.field public static final aC:Lc/h;

.field public static final aD:Lc/h;

.field public static final aE:Lc/h;

.field public static final aF:Lc/h;

.field public static final aG:Lc/h;

.field public static final aH:Lc/h;

.field public static final aI:Lc/h;

.field public static final aJ:Lc/h;

.field public static final aK:Lc/h;

.field public static final aL:Lc/h;

.field public static final aM:Lc/h;

.field public static final aN:Lc/h;

.field public static final aO:Lc/h;

.field public static final aP:Lc/h;

.field public static final aQ:Lc/h;

.field public static final aR:Lc/h;

.field private static final aT:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lc/h;",
            ">;"
        }
    .end annotation
.end field

.field public static final aa:Lc/h;

.field public static final ab:Lc/h;

.field public static final ac:Lc/h;

.field public static final ad:Lc/h;

.field public static final ae:Lc/h;

.field public static final af:Lc/h;

.field public static final ag:Lc/h;

.field public static final ah:Lc/h;

.field public static final ai:Lc/h;

.field public static final aj:Lc/h;

.field public static final ak:Lc/h;

.field public static final al:Lc/h;

.field public static final am:Lc/h;

.field public static final an:Lc/h;

.field public static final ao:Lc/h;

.field public static final ap:Lc/h;

.field public static final aq:Lc/h;

.field public static final ar:Lc/h;

.field public static final as:Lc/h;

.field public static final at:Lc/h;

.field public static final au:Lc/h;

.field public static final av:Lc/h;

.field public static final aw:Lc/h;

.field public static final ax:Lc/h;

.field public static final ay:Lc/h;

.field public static final az:Lc/h;

.field public static final b:Lc/h;

.field public static final c:Lc/h;

.field public static final d:Lc/h;

.field public static final e:Lc/h;

.field public static final f:Lc/h;

.field public static final g:Lc/h;

.field public static final h:Lc/h;

.field public static final i:Lc/h;

.field public static final j:Lc/h;

.field public static final k:Lc/h;

.field public static final l:Lc/h;

.field public static final m:Lc/h;

.field public static final n:Lc/h;

.field public static final o:Lc/h;

.field public static final p:Lc/h;

.field public static final q:Lc/h;

.field public static final r:Lc/h;

.field public static final s:Lc/h;

.field public static final t:Lc/h;

.field public static final u:Lc/h;

.field public static final v:Lc/h;

.field public static final w:Lc/h;

.field public static final x:Lc/h;

.field public static final y:Lc/h;

.field public static final z:Lc/h;


# instance fields
.field final aS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc/h;->aT:Ljava/util/concurrent/ConcurrentMap;

    const-string v0, "SSL_RSA_WITH_NULL_MD5"

    const/4 v1, 0x1

    const/16 v2, 0x147e

    const/4 v3, 0x6

    const/16 v4, 0xa

    .line 45
    invoke-static {v0, v1, v2, v3, v4}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->a:Lc/h;

    const-string v0, "SSL_RSA_WITH_NULL_SHA"

    const/4 v1, 0x2

    .line 46
    invoke-static {v0, v1, v2, v3, v4}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->b:Lc/h;

    const-string v0, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    const/4 v1, 0x3

    const/16 v5, 0x10fa

    .line 47
    invoke-static {v0, v1, v5, v3, v4}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->c:Lc/h;

    const-string v0, "SSL_RSA_WITH_RC4_128_MD5"

    const/4 v1, 0x4

    .line 48
    invoke-static {v0, v1, v2, v3, v4}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->d:Lc/h;

    const-string v0, "SSL_RSA_WITH_RC4_128_SHA"

    const/4 v1, 0x5

    .line 49
    invoke-static {v0, v1, v2, v3, v4}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->e:Lc/h;

    const-string v0, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x8

    .line 52
    invoke-static {v0, v1, v5, v3, v4}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->f:Lc/h;

    const-string v0, "SSL_RSA_WITH_DES_CBC_SHA"

    const/16 v6, 0x9

    const/16 v7, 0x155d

    .line 53
    invoke-static {v0, v6, v7, v3, v4}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->g:Lc/h;

    const-string v0, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    .line 54
    invoke-static {v0, v4, v2, v3, v4}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->h:Lc/h;

    const-string v0, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v6, 0x11

    .line 61
    invoke-static {v0, v6, v5, v3, v4}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->i:Lc/h;

    const-string v0, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    const/16 v6, 0x12

    .line 62
    invoke-static {v0, v6, v7, v3, v4}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->j:Lc/h;

    const-string v0, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    const/16 v6, 0x13

    .line 63
    invoke-static {v0, v6, v2, v3, v4}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->k:Lc/h;

    const-string v0, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v6, 0x14

    .line 64
    invoke-static {v0, v6, v5, v3, v4}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->l:Lc/h;

    const-string v0, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    const/16 v6, 0x15

    .line 65
    invoke-static {v0, v6, v7, v3, v4}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->m:Lc/h;

    const-string v0, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v8, 0x16

    .line 66
    invoke-static {v0, v8, v2, v3, v4}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->n:Lc/h;

    const-string v0, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    const/16 v8, 0x17

    .line 67
    invoke-static {v0, v8, v5, v3, v4}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->o:Lc/h;

    const-string v0, "SSL_DH_anon_WITH_RC4_128_MD5"

    const/16 v8, 0x18

    .line 68
    invoke-static {v0, v8, v2, v3, v4}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->p:Lc/h;

    const-string v0, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v8, 0x19

    .line 69
    invoke-static {v0, v8, v5, v3, v4}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->q:Lc/h;

    const-string v0, "SSL_DH_anon_WITH_DES_CBC_SHA"

    const/16 v5, 0x1a

    .line 70
    invoke-static {v0, v5, v7, v3, v4}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->r:Lc/h;

    const-string v0, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    const/16 v5, 0x1b

    .line 71
    invoke-static {v0, v5, v2, v3, v4}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->s:Lc/h;

    const-string v0, "TLS_KRB5_WITH_DES_CBC_SHA"

    const/16 v5, 0x1e

    const/16 v7, 0xa98

    const v8, 0x7fffffff

    .line 72
    invoke-static {v0, v5, v7, v3, v8}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->t:Lc/h;

    const-string v0, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    const/16 v5, 0x1f

    .line 73
    invoke-static {v0, v5, v7, v3, v8}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->u:Lc/h;

    const-string v0, "TLS_KRB5_WITH_RC4_128_SHA"

    const/16 v5, 0x20

    .line 74
    invoke-static {v0, v5, v7, v3, v8}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->v:Lc/h;

    const-string v0, "TLS_KRB5_WITH_DES_CBC_MD5"

    const/16 v5, 0x22

    .line 76
    invoke-static {v0, v5, v7, v3, v8}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->w:Lc/h;

    const-string v0, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    const/16 v5, 0x23

    .line 77
    invoke-static {v0, v5, v7, v3, v8}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->x:Lc/h;

    const-string v0, "TLS_KRB5_WITH_RC4_128_MD5"

    const/16 v5, 0x24

    .line 78
    invoke-static {v0, v5, v7, v3, v8}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->y:Lc/h;

    const-string v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    const/16 v5, 0x26

    .line 80
    invoke-static {v0, v5, v7, v3, v8}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->z:Lc/h;

    const-string v0, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    const/16 v5, 0x28

    .line 82
    invoke-static {v0, v5, v7, v3, v8}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->A:Lc/h;

    const-string v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    const/16 v5, 0x29

    .line 83
    invoke-static {v0, v5, v7, v3, v8}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->B:Lc/h;

    const-string v0, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    const/16 v5, 0x2b

    .line 85
    invoke-static {v0, v5, v7, v3, v8}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->C:Lc/h;

    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const/16 v5, 0x2f

    .line 89
    invoke-static {v0, v5, v2, v3, v4}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->D:Lc/h;

    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    const/16 v5, 0x32

    .line 92
    invoke-static {v0, v5, v2, v3, v4}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->E:Lc/h;

    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    const/16 v5, 0x33

    .line 93
    invoke-static {v0, v5, v2, v3, v4}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->F:Lc/h;

    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    const/16 v5, 0x34

    .line 94
    invoke-static {v0, v5, v2, v3, v4}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->G:Lc/h;

    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA"

    const/16 v5, 0x35

    .line 95
    invoke-static {v0, v5, v2, v3, v4}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->H:Lc/h;

    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    const/16 v5, 0x38

    .line 98
    invoke-static {v0, v5, v2, v3, v4}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->I:Lc/h;

    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    const/16 v5, 0x39

    .line 99
    invoke-static {v0, v5, v2, v3, v4}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->J:Lc/h;

    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    const/16 v5, 0x3a

    .line 100
    invoke-static {v0, v5, v2, v3, v4}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->K:Lc/h;

    const-string v0, "TLS_RSA_WITH_NULL_SHA256"

    const/16 v4, 0x3b

    const/4 v5, 0x7

    .line 101
    invoke-static {v0, v4, v2, v5, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->L:Lc/h;

    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v4, 0x3c

    .line 102
    invoke-static {v0, v4, v2, v5, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->M:Lc/h;

    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    const/16 v4, 0x3d

    .line 103
    invoke-static {v0, v4, v2, v5, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->N:Lc/h;

    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    const/16 v4, 0x40

    .line 106
    invoke-static {v0, v4, v2, v5, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->O:Lc/h;

    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v4, 0x67

    .line 113
    invoke-static {v0, v4, v2, v5, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->P:Lc/h;

    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    const/16 v4, 0x6a

    .line 116
    invoke-static {v0, v4, v2, v5, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->Q:Lc/h;

    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    const/16 v4, 0x6b

    .line 117
    invoke-static {v0, v4, v2, v5, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->R:Lc/h;

    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    const/16 v4, 0x6c

    .line 118
    invoke-static {v0, v4, v2, v5, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->S:Lc/h;

    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    const/16 v4, 0x6d

    .line 119
    invoke-static {v0, v4, v2, v5, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->T:Lc/h;

    const-string v0, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0x9c

    const/16 v4, 0x14a8

    .line 144
    invoke-static {v0, v2, v4, v1, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->U:Lc/h;

    const-string v0, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0x9d

    .line 145
    invoke-static {v0, v2, v4, v1, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->V:Lc/h;

    const-string v0, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0x9e

    .line 146
    invoke-static {v0, v2, v4, v1, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->W:Lc/h;

    const-string v0, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0x9f

    .line 147
    invoke-static {v0, v2, v4, v1, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->X:Lc/h;

    const-string v0, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0xa2

    .line 150
    invoke-static {v0, v2, v4, v1, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->Y:Lc/h;

    const-string v0, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0xa3

    .line 151
    invoke-static {v0, v2, v4, v1, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->Z:Lc/h;

    const-string v0, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0xa6

    .line 154
    invoke-static {v0, v2, v4, v1, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->aa:Lc/h;

    const-string v0, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0xa7

    .line 155
    invoke-static {v0, v2, v4, v1, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->ab:Lc/h;

    const-string v0, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    const/16 v2, 0xff

    const/16 v4, 0x1672

    const/16 v7, 0xe

    .line 186
    invoke-static {v0, v2, v4, v3, v7}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->ac:Lc/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    const v2, 0xc001

    const/16 v3, 0x118c

    .line 187
    invoke-static {v0, v2, v3, v5, v7}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->ad:Lc/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    const v2, 0xc002

    .line 188
    invoke-static {v0, v2, v3, v5, v7}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->ae:Lc/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const v2, 0xc003

    .line 189
    invoke-static {v0, v2, v3, v5, v7}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->af:Lc/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    const v2, 0xc004

    .line 190
    invoke-static {v0, v2, v3, v5, v7}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->ag:Lc/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    const v2, 0xc005

    .line 191
    invoke-static {v0, v2, v3, v5, v7}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->ah:Lc/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    const v2, 0xc006

    .line 192
    invoke-static {v0, v2, v3, v5, v7}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->ai:Lc/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    const v2, 0xc007

    .line 193
    invoke-static {v0, v2, v3, v5, v7}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->aj:Lc/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const v2, 0xc008

    .line 194
    invoke-static {v0, v2, v3, v5, v7}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->ak:Lc/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const v2, 0xc009

    .line 195
    invoke-static {v0, v2, v3, v5, v7}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->al:Lc/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const v2, 0xc00a

    .line 196
    invoke-static {v0, v2, v3, v5, v7}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->am:Lc/h;

    const-string v0, "TLS_ECDH_RSA_WITH_NULL_SHA"

    const v2, 0xc00b

    .line 197
    invoke-static {v0, v2, v3, v5, v7}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->an:Lc/h;

    const-string v0, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    const v2, 0xc00c

    .line 198
    invoke-static {v0, v2, v3, v5, v7}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->ao:Lc/h;

    const-string v0, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    const v2, 0xc00d

    .line 199
    invoke-static {v0, v2, v3, v5, v7}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->ap:Lc/h;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    const v2, 0xc00e

    .line 200
    invoke-static {v0, v2, v3, v5, v7}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->aq:Lc/h;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    const v2, 0xc00f

    .line 201
    invoke-static {v0, v2, v3, v5, v7}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->ar:Lc/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    const v2, 0xc010

    .line 202
    invoke-static {v0, v2, v3, v5, v7}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->as:Lc/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    const v2, 0xc011

    .line 203
    invoke-static {v0, v2, v3, v5, v7}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->at:Lc/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const v2, 0xc012

    .line 204
    invoke-static {v0, v2, v3, v5, v7}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->au:Lc/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const v2, 0xc013

    .line 205
    invoke-static {v0, v2, v3, v5, v7}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->av:Lc/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const v2, 0xc014

    .line 206
    invoke-static {v0, v2, v3, v5, v7}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->aw:Lc/h;

    const-string v0, "TLS_ECDH_anon_WITH_NULL_SHA"

    const v2, 0xc015

    .line 207
    invoke-static {v0, v2, v3, v5, v7}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->ax:Lc/h;

    const-string v0, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    const v2, 0xc016

    .line 208
    invoke-static {v0, v2, v3, v5, v7}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->ay:Lc/h;

    const-string v0, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    const v2, 0xc017

    .line 209
    invoke-static {v0, v2, v3, v5, v7}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->az:Lc/h;

    const-string v0, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    const v2, 0xc018

    .line 210
    invoke-static {v0, v2, v3, v5, v7}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->aA:Lc/h;

    const-string v0, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    const v2, 0xc019

    .line 211
    invoke-static {v0, v2, v3, v5, v7}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->aB:Lc/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    const v2, 0xc023

    const/16 v3, 0x14a9

    .line 221
    invoke-static {v0, v2, v3, v5, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->aC:Lc/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    const v2, 0xc024

    .line 222
    invoke-static {v0, v2, v3, v5, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->aD:Lc/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    const v2, 0xc025

    .line 223
    invoke-static {v0, v2, v3, v5, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->aE:Lc/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    const v2, 0xc026

    .line 224
    invoke-static {v0, v2, v3, v5, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->aF:Lc/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    const v2, 0xc027

    .line 225
    invoke-static {v0, v2, v3, v5, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->aG:Lc/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    const v2, 0xc028

    .line 226
    invoke-static {v0, v2, v3, v5, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->aH:Lc/h;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    const v2, 0xc029

    .line 227
    invoke-static {v0, v2, v3, v5, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->aI:Lc/h;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    const v2, 0xc02a

    .line 228
    invoke-static {v0, v2, v3, v5, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->aJ:Lc/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    const v2, 0xc02b

    .line 229
    invoke-static {v0, v2, v3, v1, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->aK:Lc/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    const v2, 0xc02c

    .line 230
    invoke-static {v0, v2, v3, v1, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->aL:Lc/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    const v2, 0xc02d

    .line 231
    invoke-static {v0, v2, v3, v1, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->aM:Lc/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    const v2, 0xc02e

    .line 232
    invoke-static {v0, v2, v3, v1, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->aN:Lc/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const v2, 0xc02f

    .line 233
    invoke-static {v0, v2, v3, v1, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->aO:Lc/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const v2, 0xc030

    .line 234
    invoke-static {v0, v2, v3, v1, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->aP:Lc/h;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    const v2, 0xc031

    .line 235
    invoke-static {v0, v2, v3, v1, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->aQ:Lc/h;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    const v2, 0xc032

    .line 236
    invoke-static {v0, v2, v3, v1, v6}, Lc/h;->a(Ljava/lang/String;IIII)Lc/h;

    move-result-object v0

    sput-object v0, Lc/h;->aR:Lc/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 383
    iput-object p1, p0, Lc/h;->aS:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 381
    throw p1
.end method

.method public static a(Ljava/lang/String;)Lc/h;
    .locals 2

    .line 370
    sget-object v0, Lc/h;->aT:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/h;

    if-nez v0, :cond_1

    .line 372
    new-instance v0, Lc/h;

    invoke-direct {v0, p0}, Lc/h;-><init>(Ljava/lang/String;)V

    .line 373
    sget-object v1, Lc/h;->aT:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/h;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static a(Ljava/lang/String;IIII)Lc/h;
    .locals 0

    .line 396
    invoke-static {p0}, Lc/h;->a(Ljava/lang/String;)Lc/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 411
    iget-object v0, p0, Lc/h;->aS:Ljava/lang/String;

    return-object v0
.end method
