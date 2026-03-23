.class public final Lb/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Lb/h;

.field public static final B:Lb/h;

.field public static final C:Lb/h;

.field public static final D:Lb/h;

.field public static final E:Lb/h;

.field public static final F:Lb/h;

.field public static final G:Lb/h;

.field public static final H:Lb/h;

.field public static final I:Lb/h;

.field public static final J:Lb/h;

.field public static final K:Lb/h;

.field public static final L:Lb/h;

.field public static final M:Lb/h;

.field public static final N:Lb/h;

.field public static final O:Lb/h;

.field public static final P:Lb/h;

.field public static final Q:Lb/h;

.field public static final R:Lb/h;

.field public static final S:Lb/h;

.field public static final T:Lb/h;

.field public static final U:Lb/h;

.field public static final V:Lb/h;

.field public static final W:Lb/h;

.field public static final X:Lb/h;

.field public static final Y:Lb/h;

.field public static final Z:Lb/h;

.field public static final a:Lb/h;

.field public static final aA:Lb/h;

.field public static final aB:Lb/h;

.field public static final aC:Lb/h;

.field public static final aD:Lb/h;

.field public static final aE:Lb/h;

.field public static final aF:Lb/h;

.field public static final aG:Lb/h;

.field public static final aH:Lb/h;

.field public static final aI:Lb/h;

.field public static final aJ:Lb/h;

.field public static final aK:Lb/h;

.field public static final aL:Lb/h;

.field public static final aM:Lb/h;

.field public static final aN:Lb/h;

.field public static final aO:Lb/h;

.field public static final aP:Lb/h;

.field public static final aQ:Lb/h;

.field public static final aR:Lb/h;

.field private static final aT:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lb/h;",
            ">;"
        }
    .end annotation
.end field

.field public static final aa:Lb/h;

.field public static final ab:Lb/h;

.field public static final ac:Lb/h;

.field public static final ad:Lb/h;

.field public static final ae:Lb/h;

.field public static final af:Lb/h;

.field public static final ag:Lb/h;

.field public static final ah:Lb/h;

.field public static final ai:Lb/h;

.field public static final aj:Lb/h;

.field public static final ak:Lb/h;

.field public static final al:Lb/h;

.field public static final am:Lb/h;

.field public static final an:Lb/h;

.field public static final ao:Lb/h;

.field public static final ap:Lb/h;

.field public static final aq:Lb/h;

.field public static final ar:Lb/h;

.field public static final as:Lb/h;

.field public static final at:Lb/h;

.field public static final au:Lb/h;

.field public static final av:Lb/h;

.field public static final aw:Lb/h;

.field public static final ax:Lb/h;

.field public static final ay:Lb/h;

.field public static final az:Lb/h;

.field public static final b:Lb/h;

.field public static final c:Lb/h;

.field public static final d:Lb/h;

.field public static final e:Lb/h;

.field public static final f:Lb/h;

.field public static final g:Lb/h;

.field public static final h:Lb/h;

.field public static final i:Lb/h;

.field public static final j:Lb/h;

.field public static final k:Lb/h;

.field public static final l:Lb/h;

.field public static final m:Lb/h;

.field public static final n:Lb/h;

.field public static final o:Lb/h;

.field public static final p:Lb/h;

.field public static final q:Lb/h;

.field public static final r:Lb/h;

.field public static final s:Lb/h;

.field public static final t:Lb/h;

.field public static final u:Lb/h;

.field public static final v:Lb/h;

.field public static final w:Lb/h;

.field public static final x:Lb/h;

.field public static final y:Lb/h;

.field public static final z:Lb/h;


# instance fields
.field final aS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0xa

    const/16 v6, 0x15

    const/4 v5, 0x6

    const/4 v4, 0x7

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lb/h;->aT:Ljava/util/concurrent/ConcurrentMap;

    .line 45
    const-string v0, "SSL_RSA_WITH_NULL_MD5"

    const/4 v1, 0x1

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->a:Lb/h;

    .line 46
    const-string v0, "SSL_RSA_WITH_NULL_SHA"

    const/4 v1, 0x2

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->b:Lb/h;

    .line 47
    const-string v0, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    const/4 v1, 0x3

    const/16 v2, 0x10fa

    invoke-static {v0, v1, v2, v5, v7}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->c:Lb/h;

    .line 48
    const-string v0, "SSL_RSA_WITH_RC4_128_MD5"

    const/4 v1, 0x4

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->d:Lb/h;

    .line 49
    const-string v0, "SSL_RSA_WITH_RC4_128_SHA"

    const/4 v1, 0x5

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->e:Lb/h;

    .line 52
    const-string v0, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x8

    const/16 v2, 0x10fa

    invoke-static {v0, v1, v2, v5, v7}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->f:Lb/h;

    .line 53
    const-string v0, "SSL_RSA_WITH_DES_CBC_SHA"

    const/16 v1, 0x9

    const/16 v2, 0x155d

    invoke-static {v0, v1, v2, v5, v7}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->g:Lb/h;

    .line 54
    const-string v0, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x147e

    invoke-static {v0, v7, v1, v5, v7}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->h:Lb/h;

    .line 61
    const-string v0, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x11

    const/16 v2, 0x10fa

    invoke-static {v0, v1, v2, v5, v7}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->i:Lb/h;

    .line 62
    const-string v0, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    const/16 v1, 0x12

    const/16 v2, 0x155d

    invoke-static {v0, v1, v2, v5, v7}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->j:Lb/h;

    .line 63
    const-string v0, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x13

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->k:Lb/h;

    .line 64
    const-string v0, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x14

    const/16 v2, 0x10fa

    invoke-static {v0, v1, v2, v5, v7}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->l:Lb/h;

    .line 65
    const-string v0, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    const/16 v1, 0x155d

    invoke-static {v0, v6, v1, v5, v7}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->m:Lb/h;

    .line 66
    const-string v0, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x16

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->n:Lb/h;

    .line 67
    const-string v0, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    const/16 v1, 0x17

    const/16 v2, 0x10fa

    invoke-static {v0, v1, v2, v5, v7}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->o:Lb/h;

    .line 68
    const-string v0, "SSL_DH_anon_WITH_RC4_128_MD5"

    const/16 v1, 0x18

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->p:Lb/h;

    .line 69
    const-string v0, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x19

    const/16 v2, 0x10fa

    invoke-static {v0, v1, v2, v5, v7}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->q:Lb/h;

    .line 70
    const-string v0, "SSL_DH_anon_WITH_DES_CBC_SHA"

    const/16 v1, 0x1a

    const/16 v2, 0x155d

    invoke-static {v0, v1, v2, v5, v7}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->r:Lb/h;

    .line 71
    const-string v0, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x1b

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->s:Lb/h;

    .line 72
    const-string v0, "TLS_KRB5_WITH_DES_CBC_SHA"

    const/16 v1, 0x1e

    const/16 v2, 0xa98

    const v3, 0x7fffffff

    invoke-static {v0, v1, v2, v5, v3}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->t:Lb/h;

    .line 73
    const-string v0, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x1f

    const/16 v2, 0xa98

    const v3, 0x7fffffff

    invoke-static {v0, v1, v2, v5, v3}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->u:Lb/h;

    .line 74
    const-string v0, "TLS_KRB5_WITH_RC4_128_SHA"

    const/16 v1, 0x20

    const/16 v2, 0xa98

    const v3, 0x7fffffff

    invoke-static {v0, v1, v2, v5, v3}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->v:Lb/h;

    .line 76
    const-string v0, "TLS_KRB5_WITH_DES_CBC_MD5"

    const/16 v1, 0x22

    const/16 v2, 0xa98

    const v3, 0x7fffffff

    invoke-static {v0, v1, v2, v5, v3}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->w:Lb/h;

    .line 77
    const-string v0, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    const/16 v1, 0x23

    const/16 v2, 0xa98

    const v3, 0x7fffffff

    invoke-static {v0, v1, v2, v5, v3}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->x:Lb/h;

    .line 78
    const-string v0, "TLS_KRB5_WITH_RC4_128_MD5"

    const/16 v1, 0x24

    const/16 v2, 0xa98

    const v3, 0x7fffffff

    invoke-static {v0, v1, v2, v5, v3}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->y:Lb/h;

    .line 80
    const-string v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    const/16 v1, 0x26

    const/16 v2, 0xa98

    const v3, 0x7fffffff

    invoke-static {v0, v1, v2, v5, v3}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->z:Lb/h;

    .line 82
    const-string v0, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    const/16 v1, 0x28

    const/16 v2, 0xa98

    const v3, 0x7fffffff

    invoke-static {v0, v1, v2, v5, v3}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->A:Lb/h;

    .line 83
    const-string v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    const/16 v1, 0x29

    const/16 v2, 0xa98

    const v3, 0x7fffffff

    invoke-static {v0, v1, v2, v5, v3}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->B:Lb/h;

    .line 85
    const-string v0, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    const/16 v1, 0x2b

    const/16 v2, 0xa98

    const v3, 0x7fffffff

    invoke-static {v0, v1, v2, v5, v3}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->C:Lb/h;

    .line 89
    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x2f

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->D:Lb/h;

    .line 92
    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x32

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->E:Lb/h;

    .line 93
    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x33

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->F:Lb/h;

    .line 94
    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x34

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->G:Lb/h;

    .line 95
    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x35

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->H:Lb/h;

    .line 98
    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x38

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->I:Lb/h;

    .line 99
    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x39

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->J:Lb/h;

    .line 100
    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x3a

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->K:Lb/h;

    .line 101
    const-string v0, "TLS_RSA_WITH_NULL_SHA256"

    const/16 v1, 0x3b

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v4, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->L:Lb/h;

    .line 102
    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v1, 0x3c

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v4, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->M:Lb/h;

    .line 103
    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    const/16 v1, 0x3d

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v4, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->N:Lb/h;

    .line 106
    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    const/16 v1, 0x40

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v4, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->O:Lb/h;

    .line 113
    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v1, 0x67

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v4, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->P:Lb/h;

    .line 116
    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    const/16 v1, 0x6a

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v4, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->Q:Lb/h;

    .line 117
    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    const/16 v1, 0x6b

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v4, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->R:Lb/h;

    .line 118
    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    const/16 v1, 0x6c

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v4, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->S:Lb/h;

    .line 119
    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    const/16 v1, 0x6d

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v4, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->T:Lb/h;

    .line 144
    const-string v0, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v1, 0x9c

    const/16 v2, 0x14a8

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->U:Lb/h;

    .line 145
    const-string v0, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v1, 0x9d

    const/16 v2, 0x14a8

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->V:Lb/h;

    .line 146
    const-string v0, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v1, 0x9e

    const/16 v2, 0x14a8

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->W:Lb/h;

    .line 147
    const-string v0, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v1, 0x9f

    const/16 v2, 0x14a8

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->X:Lb/h;

    .line 150
    const-string v0, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    const/16 v1, 0xa2

    const/16 v2, 0x14a8

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->Y:Lb/h;

    .line 151
    const-string v0, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    const/16 v1, 0xa3

    const/16 v2, 0x14a8

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->Z:Lb/h;

    .line 154
    const-string v0, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    const/16 v1, 0xa6

    const/16 v2, 0x14a8

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->aa:Lb/h;

    .line 155
    const-string v0, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    const/16 v1, 0xa7

    const/16 v2, 0x14a8

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->ab:Lb/h;

    .line 186
    const-string v0, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    const/16 v1, 0xff

    const/16 v2, 0x1672

    invoke-static {v0, v1, v2, v5, v8}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->ac:Lb/h;

    .line 187
    const-string v0, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    const v1, 0xc001

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->ad:Lb/h;

    .line 188
    const-string v0, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    const v1, 0xc002

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->ae:Lb/h;

    .line 189
    const-string v0, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc003

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->af:Lb/h;

    .line 190
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    const v1, 0xc004

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->ag:Lb/h;

    .line 191
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    const v1, 0xc005

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->ah:Lb/h;

    .line 192
    const-string v0, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    const v1, 0xc006

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->ai:Lb/h;

    .line 193
    const-string v0, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    const v1, 0xc007

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->aj:Lb/h;

    .line 194
    const-string v0, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc008

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->ak:Lb/h;

    .line 195
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const v1, 0xc009

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->al:Lb/h;

    .line 196
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const v1, 0xc00a

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->am:Lb/h;

    .line 197
    const-string v0, "TLS_ECDH_RSA_WITH_NULL_SHA"

    const v1, 0xc00b

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->an:Lb/h;

    .line 198
    const-string v0, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    const v1, 0xc00c

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->ao:Lb/h;

    .line 199
    const-string v0, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc00d

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->ap:Lb/h;

    .line 200
    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    const v1, 0xc00e

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->aq:Lb/h;

    .line 201
    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    const v1, 0xc00f

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->ar:Lb/h;

    .line 202
    const-string v0, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    const v1, 0xc010

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->as:Lb/h;

    .line 203
    const-string v0, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    const v1, 0xc011

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->at:Lb/h;

    .line 204
    const-string v0, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc012

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->au:Lb/h;

    .line 205
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const v1, 0xc013

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->av:Lb/h;

    .line 206
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const v1, 0xc014

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->aw:Lb/h;

    .line 207
    const-string v0, "TLS_ECDH_anon_WITH_NULL_SHA"

    const v1, 0xc015

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->ax:Lb/h;

    .line 208
    const-string v0, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    const v1, 0xc016

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->ay:Lb/h;

    .line 209
    const-string v0, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc017

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->az:Lb/h;

    .line 210
    const-string v0, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    const v1, 0xc018

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->aA:Lb/h;

    .line 211
    const-string v0, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    const v1, 0xc019

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->aB:Lb/h;

    .line 221
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    const v1, 0xc023

    const/16 v2, 0x14a9

    invoke-static {v0, v1, v2, v4, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->aC:Lb/h;

    .line 222
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    const v1, 0xc024

    const/16 v2, 0x14a9

    invoke-static {v0, v1, v2, v4, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->aD:Lb/h;

    .line 223
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    const v1, 0xc025

    const/16 v2, 0x14a9

    invoke-static {v0, v1, v2, v4, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->aE:Lb/h;

    .line 224
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    const v1, 0xc026

    const/16 v2, 0x14a9

    invoke-static {v0, v1, v2, v4, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->aF:Lb/h;

    .line 225
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    const v1, 0xc027

    const/16 v2, 0x14a9

    invoke-static {v0, v1, v2, v4, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->aG:Lb/h;

    .line 226
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    const v1, 0xc028

    const/16 v2, 0x14a9

    invoke-static {v0, v1, v2, v4, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->aH:Lb/h;

    .line 227
    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    const v1, 0xc029

    const/16 v2, 0x14a9

    invoke-static {v0, v1, v2, v4, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->aI:Lb/h;

    .line 228
    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    const v1, 0xc02a

    const/16 v2, 0x14a9

    invoke-static {v0, v1, v2, v4, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->aJ:Lb/h;

    .line 229
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    const v1, 0xc02b

    const/16 v2, 0x14a9

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->aK:Lb/h;

    .line 230
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    const v1, 0xc02c

    const/16 v2, 0x14a9

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->aL:Lb/h;

    .line 231
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    const v1, 0xc02d

    const/16 v2, 0x14a9

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->aM:Lb/h;

    .line 232
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    const v1, 0xc02e

    const/16 v2, 0x14a9

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->aN:Lb/h;

    .line 233
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const v1, 0xc02f

    const/16 v2, 0x14a9

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->aO:Lb/h;

    .line 234
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const v1, 0xc030

    const/16 v2, 0x14a9

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->aP:Lb/h;

    .line 235
    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    const v1, 0xc031

    const/16 v2, 0x14a9

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->aQ:Lb/h;

    .line 236
    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    const v1, 0xc032

    const/16 v2, 0x14a9

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lb/h;->a(Ljava/lang/String;IIII)Lb/h;

    move-result-object v0

    sput-object v0, Lb/h;->aR:Lb/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    if-nez p1, :cond_0

    .line 381
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 383
    :cond_0
    iput-object p1, p0, Lb/h;->aS:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public static a(Ljava/lang/String;)Lb/h;
    .locals 2

    .prologue
    .line 370
    sget-object v0, Lb/h;->aT:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/h;

    .line 371
    if-nez v0, :cond_0

    .line 372
    new-instance v1, Lb/h;

    invoke-direct {v1, p0}, Lb/h;-><init>(Ljava/lang/String;)V

    .line 373
    sget-object v0, Lb/h;->aT:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/h;

    .line 374
    if-nez v0, :cond_0

    move-object v0, v1

    .line 376
    :cond_0
    return-object v0
.end method

.method private static a(Ljava/lang/String;IIII)Lb/h;
    .locals 1

    .prologue
    .line 396
    invoke-static {p0}, Lb/h;->a(Ljava/lang/String;)Lb/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lb/h;->aS:Ljava/lang/String;

    return-object v0
.end method
