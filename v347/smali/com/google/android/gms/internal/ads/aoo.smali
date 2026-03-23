.class public final Lcom/google/android/gms/internal/ads/aoo;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/google/android/gms/internal/ads/aoo;


# instance fields
.field private final c:Lcom/google/android/gms/internal/ads/ly;

.field private final d:Lcom/google/android/gms/internal/ads/aoh;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/android/gms/internal/ads/ark;

.field private final g:Lcom/google/android/gms/internal/ads/arl;

.field private final h:Lcom/google/android/gms/internal/ads/arm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/aoo;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/aoo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/aoo;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/ads/aoo;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object v0, Lcom/google/android/gms/internal/ads/aoo;->b:Lcom/google/android/gms/internal/ads/aoo;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/ly;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ly;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aoo;->c:Lcom/google/android/gms/internal/ads/ly;

    new-instance v0, Lcom/google/android/gms/internal/ads/aoh;

    new-instance v1, Lcom/google/android/gms/internal/ads/anz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/anz;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/any;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/any;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/ads/aqp;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/aqp;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/ads/awb;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/awb;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/gl;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/gl;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/q;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/q;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/awc;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/awc;-><init>()V

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/aoh;-><init>(Lcom/google/android/gms/internal/ads/anz;Lcom/google/android/gms/internal/ads/any;Lcom/google/android/gms/internal/ads/aqp;Lcom/google/android/gms/internal/ads/awb;Lcom/google/android/gms/internal/ads/gl;Lcom/google/android/gms/internal/ads/q;Lcom/google/android/gms/internal/ads/awc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aoo;->d:Lcom/google/android/gms/internal/ads/aoh;

    invoke-static {}, Lcom/google/android/gms/internal/ads/ly;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aoo;->e:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/ark;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ark;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aoo;->f:Lcom/google/android/gms/internal/ads/ark;

    new-instance v0, Lcom/google/android/gms/internal/ads/arl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/arl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aoo;->g:Lcom/google/android/gms/internal/ads/arl;

    new-instance v0, Lcom/google/android/gms/internal/ads/arm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/arm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aoo;->h:Lcom/google/android/gms/internal/ads/arm;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/ly;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->g()Lcom/google/android/gms/internal/ads/aoo;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aoo;->c:Lcom/google/android/gms/internal/ads/ly;

    return-object v0
.end method

.method public static b()Lcom/google/android/gms/internal/ads/aoh;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->g()Lcom/google/android/gms/internal/ads/aoo;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aoo;->d:Lcom/google/android/gms/internal/ads/aoh;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->g()Lcom/google/android/gms/internal/ads/aoo;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aoo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Lcom/google/android/gms/internal/ads/arl;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->g()Lcom/google/android/gms/internal/ads/aoo;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aoo;->g:Lcom/google/android/gms/internal/ads/arl;

    return-object v0
.end method

.method public static e()Lcom/google/android/gms/internal/ads/ark;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->g()Lcom/google/android/gms/internal/ads/aoo;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aoo;->f:Lcom/google/android/gms/internal/ads/ark;

    return-object v0
.end method

.method public static f()Lcom/google/android/gms/internal/ads/arm;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->g()Lcom/google/android/gms/internal/ads/aoo;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aoo;->h:Lcom/google/android/gms/internal/ads/arm;

    return-object v0
.end method

.method private static g()Lcom/google/android/gms/internal/ads/aoo;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/ads/aoo;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/aoo;->b:Lcom/google/android/gms/internal/ads/aoo;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
