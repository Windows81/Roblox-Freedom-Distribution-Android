.class public final Lcom/google/android/gms/internal/ads/aqo;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bbt;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/aod;

.field private d:Lcom/google/android/gms/ads/a;

.field private e:Lcom/google/android/gms/internal/ads/anv;

.field private f:Lcom/google/android/gms/internal/ads/apf;

.field private g:Ljava/lang/String;

.field private h:Lcom/google/android/gms/ads/reward/c;

.field private i:Lcom/google/android/gms/ads/doubleclick/a;

.field private j:Lcom/google/android/gms/ads/doubleclick/c;

.field private k:Lcom/google/android/gms/ads/g;

.field private l:Lcom/google/android/gms/ads/reward/b;

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/aod;->a:Lcom/google/android/gms/internal/ads/aod;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/aqo;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aod;Lcom/google/android/gms/ads/doubleclick/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/doubleclick/e;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/aod;->a:Lcom/google/android/gms/internal/ads/aod;

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/aqo;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aod;Lcom/google/android/gms/ads/doubleclick/e;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aod;Lcom/google/android/gms/ads/doubleclick/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/bbt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bbt;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->a:Lcom/google/android/gms/internal/ads/bbt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aqo;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aqo;->c:Lcom/google/android/gms/internal/ads/aod;

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->f:Lcom/google/android/gms/internal/ads/apf;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "The ad unit ID must be set on InterstitialAd before "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/ads/a;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aqo;->d:Lcom/google/android/gms/ads/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->f:Lcom/google/android/gms/internal/ads/apf;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aqo;->f:Lcom/google/android/gms/internal/ads/apf;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/anx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/anx;-><init>(Lcom/google/android/gms/ads/a;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/apf;->a(Lcom/google/android/gms/internal/ads/aou;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#008 Must be called on the main UI thread."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mj;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/ads/reward/b;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aqo;->l:Lcom/google/android/gms/ads/reward/b;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->f:Lcom/google/android/gms/internal/ads/apf;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aqo;->f:Lcom/google/android/gms/internal/ads/apf;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/gm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/gm;-><init>(Lcom/google/android/gms/ads/reward/b;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/apf;->a(Lcom/google/android/gms/internal/ads/gh;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#008 Must be called on the main UI thread."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mj;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/ads/reward/c;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aqo;->h:Lcom/google/android/gms/ads/reward/c;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->f:Lcom/google/android/gms/internal/ads/apf;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aqo;->f:Lcom/google/android/gms/internal/ads/apf;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/aoa;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/aoa;-><init>(Lcom/google/android/gms/ads/reward/c;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/apf;->a(Lcom/google/android/gms/internal/ads/apk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#008 Must be called on the main UI thread."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mj;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/anv;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aqo;->e:Lcom/google/android/gms/internal/ads/anv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->f:Lcom/google/android/gms/internal/ads/apf;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aqo;->f:Lcom/google/android/gms/internal/ads/apf;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/anw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/anw;-><init>(Lcom/google/android/gms/internal/ads/anv;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/apf;->a(Lcom/google/android/gms/internal/ads/aor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#008 Must be called on the main UI thread."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mj;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aqj;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->f:Lcom/google/android/gms/internal/ads/apf;

    if-nez v0, :cond_8

    const-string v0, "loadAd"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aqo;->g:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/aqo;->b(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aqo;->m:Z

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzjn;->a()Lcom/google/android/gms/internal/ads/zzjn;

    move-result-object v3

    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->b()Lcom/google/android/gms/internal/ads/aoh;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aqo;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aqo;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/aqo;->a:Lcom/google/android/gms/internal/ads/bbt;

    new-instance v0, Lcom/google/android/gms/internal/ads/aok;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aok;-><init>(Lcom/google/android/gms/internal/ads/aoh;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bbu;)V

    const/4 v1, 0x0

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/aoh;->a(Landroid/content/Context;ZLcom/google/android/gms/internal/ads/aoh$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/apf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->f:Lcom/google/android/gms/internal/ads/apf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->d:Lcom/google/android/gms/ads/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->f:Lcom/google/android/gms/internal/ads/apf;

    new-instance v1, Lcom/google/android/gms/internal/ads/anx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aqo;->d:Lcom/google/android/gms/ads/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/anx;-><init>(Lcom/google/android/gms/ads/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/apf;->a(Lcom/google/android/gms/internal/ads/aou;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->e:Lcom/google/android/gms/internal/ads/anv;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->f:Lcom/google/android/gms/internal/ads/apf;

    new-instance v1, Lcom/google/android/gms/internal/ads/anw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aqo;->e:Lcom/google/android/gms/internal/ads/anv;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/anw;-><init>(Lcom/google/android/gms/internal/ads/anv;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/apf;->a(Lcom/google/android/gms/internal/ads/aor;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->h:Lcom/google/android/gms/ads/reward/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->f:Lcom/google/android/gms/internal/ads/apf;

    new-instance v1, Lcom/google/android/gms/internal/ads/aoa;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aqo;->h:Lcom/google/android/gms/ads/reward/c;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/aoa;-><init>(Lcom/google/android/gms/ads/reward/c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/apf;->a(Lcom/google/android/gms/internal/ads/apk;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->i:Lcom/google/android/gms/ads/doubleclick/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->f:Lcom/google/android/gms/internal/ads/apf;

    new-instance v1, Lcom/google/android/gms/internal/ads/aof;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aqo;->i:Lcom/google/android/gms/ads/doubleclick/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/aof;-><init>(Lcom/google/android/gms/ads/doubleclick/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/apf;->a(Lcom/google/android/gms/internal/ads/apo;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->j:Lcom/google/android/gms/ads/doubleclick/c;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->f:Lcom/google/android/gms/internal/ads/apf;

    new-instance v1, Lcom/google/android/gms/internal/ads/asl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aqo;->j:Lcom/google/android/gms/ads/doubleclick/c;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/asl;-><init>(Lcom/google/android/gms/ads/doubleclick/c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/apf;->a(Lcom/google/android/gms/internal/ads/asi;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->k:Lcom/google/android/gms/ads/g;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->f:Lcom/google/android/gms/internal/ads/apf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aqo;->k:Lcom/google/android/gms/ads/g;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/g;->a()Lcom/google/android/gms/internal/ads/aop;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/apf;->a(Lcom/google/android/gms/internal/ads/apu;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->l:Lcom/google/android/gms/ads/reward/b;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->f:Lcom/google/android/gms/internal/ads/apf;

    new-instance v1, Lcom/google/android/gms/internal/ads/gm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aqo;->l:Lcom/google/android/gms/ads/reward/b;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/gm;-><init>(Lcom/google/android/gms/ads/reward/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/apf;->a(Lcom/google/android/gms/internal/ads/gh;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->f:Lcom/google/android/gms/internal/ads/apf;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/aqo;->n:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/apf;->c(Z)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->f:Lcom/google/android/gms/internal/ads/apf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aqo;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/aod;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aqj;)Lcom/google/android/gms/internal/ads/zzjj;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/apf;->b(Lcom/google/android/gms/internal/ads/zzjj;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->a:Lcom/google/android/gms/internal/ads/bbt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aqj;->j()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bbt;->a(Ljava/util/Map;)V

    :cond_9
    :goto_1
    return-void

    :cond_a
    new-instance v3, Lcom/google/android/gms/internal/ads/zzjn;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzjn;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#008 Must be called on the main UI thread."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mj;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad unit ID can only be set once on InterstitialAd."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aqo;->g:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aqo;->m:Z

    return-void
.end method

.method public final b(Z)V
    .locals 2

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/aqo;->n:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->f:Lcom/google/android/gms/internal/ads/apf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->f:Lcom/google/android/gms/internal/ads/apf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/apf;->c(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#008 Must be called on the main UI thread."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mj;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aqo;->f:Lcom/google/android/gms/internal/ads/apf;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aqo;->f:Lcom/google/android/gms/internal/ads/apf;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/apf;->l()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "#008 Must be called on the main UI thread."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/mj;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final c()Landroid/os/Bundle;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->f:Lcom/google/android/gms/internal/ads/apf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->f:Lcom/google/android/gms/internal/ads/apf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/apf;->p()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#008 Must be called on the main UI thread."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mj;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    :try_start_0
    const-string v0, "show"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/aqo;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqo;->f:Lcom/google/android/gms/internal/ads/apf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/apf;->H()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#008 Must be called on the main UI thread."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mj;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
